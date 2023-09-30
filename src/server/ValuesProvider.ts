import {
  GenOptions,
  RuntimeGenOptions,
  TableOptions,
  WordCasing,
  AllowedGenOptionsMap,
  ValidTableValuesMap,
  RuntimeTypesId,
  ValidColumnValue,
  ColumnMeta,
  EntityMap,
  EntitiesValues,
  GenerationParams,
  ValidValue,
  AllTablesValuesCache,
  ParsedFKColumnMap,
  Field,
  FKMap,
} from "@/types";
import { TypeProvider } from "./TypeProvider";
import db from "@/db";
import { ValuesGenerator } from "./ValuesGenerator";

export class ValuesProvider {
  public static async getValidTableValues(
    table: TableOptions,
    valuesCache: AllTablesValuesCache,
    parsedFKColumnMap: ParsedFKColumnMap
  ): Promise<ValidTableValuesMap> {
    const { fields, rowQuantity } = table;
    const tableValues: ValidTableValuesMap = {};
    const entityMap: EntityMap = {};
    const fkMap: FKMap = {}
    for (const field of fields) {
      const { type, genOptions, name, constraints } = field;
      let values: ValidColumnValue = [];
      const runtimeGenOptions: RuntimeGenOptions = {
        ...genOptions,
        ...constraints,
      };
      field.genOptions = runtimeGenOptions;
      if (TypeProvider.isRuntimeTypeId(type)) {
        values = ValuesGenerator.generateRuntimeValues(
          type as RuntimeTypesId,
          runtimeGenOptions,
          rowQuantity
        );
      } else if (TypeProvider.isForeignKey(type)) {
        const parsedFKColumn = parsedFKColumnMap[name];
        const { refTable, refColumn, isStandalone, group } = parsedFKColumn;
        const refTableValues = valuesCache[refTable];
        if (refTableValues) {
          const valuePool = refTableValues[refColumn];
          if (valuePool) {
            if (isStandalone) {
              values = ValuesGenerator.generateRandomValueFromGivenPool(
                valuePool,
                runtimeGenOptions,
                rowQuantity
              );
            } else {
              // If the foreign key is not standalone, it means that it is a part of a multi-column foreign key
              // and will need to be generated together with other columns
              if(fkMap[group]) {
                fkMap[group].push(name);
              } else {
                fkMap[group] = [name]
              };
              // Temporary store all available values in fkMap to filter later
              values = valuePool;
            }
          } else {
            throw new Error(
              `Column ${refColumn} not found in table ${refTable}`
            );
          }
        } else {
          throw new Error(`Table ${refTable} not found`);
        }
      } else {
        // Normal column
        const columnMeta = await TypeProvider.getColumnMetaById(type);
        if (columnMeta) {
          switch (genOptions.withEntity) {
            case "n":
              values = await this.getValidColumnValuesWithoutEntity(
                columnMeta,
                runtimeGenOptions,
                rowQuantity
              );
              break;
            case "y":
              if (!entityMap[columnMeta.entity_meta_table]) {
                entityMap[columnMeta.entity_meta_table] = [
                  {
                    columnMeta,
                    genOptions: runtimeGenOptions,
                    fieldName: name,
                  },
                ];
              } else {
                entityMap[columnMeta.entity_meta_table].push({
                  columnMeta,
                  genOptions: runtimeGenOptions,
                  fieldName: name,
                });
              }
              continue;
          }
        } else {
          throw new Error(`Column meta with id ${type} not found`);
        }
      }
      tableValues[name] = values;
    }
    await ValuesProvider.getValidTableValuesWithEntity(
      entityMap,
      rowQuantity,
      fields,
      tableValues
    );

    ValuesProvider.getValidMultiColumnFKValues(tableValues, fkMap, rowQuantity);

    return tableValues;
  }

  private static getValidMultiColumnFKValues(
    tableValues: ValidTableValuesMap,
    fkMap: FKMap,
    rowQuantity: number
  ) {
    // TODO:low priority: somehow implement single column uniqueness
    for (const group in fkMap) {
      const firstCol = fkMap[group][0];
      const length = tableValues[firstCol].length;
      // TODO: modify unique when implemented group uniqueness
      const indices = ValuesGenerator.generateRandomIndices(length, rowQuantity, false);
      for (const col of fkMap[group]) {
        const values = []
        for (const index of indices) {
          values.push(tableValues[col][index]);
        }
        tableValues[col] = values;
      }
    }
  }

  private static async getValidTableValuesWithEntity(
    entityMap: EntityMap,
    rowQuantity: number,
    fields: Field[],
    tableValues: ValidTableValuesMap
  ) {
    for (const entity in entityMap) {
      const columnsGenParams = entityMap[entity];
      const fieldToColumnMapper: Record<string, string> = {};
      for (const param of columnsGenParams) {
        fieldToColumnMapper[param.fieldName] = param.columnMeta.column_name;
      }
      const validValues = await this.getValidColumnValuesWithEntity(
        entity,
        columnsGenParams,
        fieldToColumnMapper,
        rowQuantity
      );
      if (validValues.length != 0) {
        let duplicatedValues: number[][] = [];
        for (const fieldName in fieldToColumnMapper) {
          const fieldGenOpts = fields.find((field) => field.name === fieldName)!
            .genOptions as RuntimeGenOptions;

          // Directly remove all the row with null value if the field is not nullable
          if (fieldGenOpts.notNull || fieldGenOpts.primaryKey) {
            validValues.filter((value) => value[fieldName] !== null);
          }

          // Save all the duplicated indices of that entity column in duplicatedMap
          // to remove after all the columns are processed to reduce the number of lost rows
          if (fieldGenOpts.unique || fieldGenOpts.primaryKey) {
            const duplicatedMap: Record<string, number[]> = {};
            validValues.forEach((value, index) => {
              if (duplicatedMap[value[fieldName]]) {
                duplicatedMap[value[fieldName]].push(index);
              } else {
                duplicatedMap[value[fieldName]] = [index];
              }
            });
            const duplicatedValuesEntry = Object.values(duplicatedMap).filter(
              (group) => group.length > 1
            );
            duplicatedValues.push(...duplicatedValuesEntry);
          }

          // Temporary save the column values to tableValues
          tableValues[fieldName] = validValues.map((value) => value[fieldName]);
        }

        // If there are duplicated rows, remove them, prioritizing the ones with the highest amount
        // of duplicated columns
        if (duplicatedValues.length != 0) {
          const countFrequency = (arr: number[]) => {
            const frequency: Record<string, number> = {};
            for (const num of arr) {
              frequency[num] = (frequency[num] || 0) + 1;
            }
            return frequency;
          };

          // Function to find the number with the highest frequency
          const findHighestFrequencyNumber = (arr: number[]): number => {
            const frequency = countFrequency(arr);
            let highestFrequency = 0;
            let numberWithHighestFrequency = null;
            for (const num in frequency) {
              if (frequency[num] >= highestFrequency) {
                highestFrequency = frequency[num];
                numberWithHighestFrequency = num;
              }
            }
            return Number(numberWithHighestFrequency);
          };

          while (true) {
            // Find the number with the highest frequency in the entire 2D array
            const numbers = duplicatedValues.flat();
            const numberToRemove = findHighestFrequencyNumber(numbers);

            // If no number has a frequency greater than 1, break out of the loop
            if (!numberToRemove) {
              break;
            }

            // Remove the number with the highest frequency from each inner array
            for (let i = 0; i < duplicatedValues.length; i++) {
              duplicatedValues[i] = duplicatedValues[i].filter(
                (num) => num !== numberToRemove
              );
            }

            // Remove inner arrays with only one member
            duplicatedValues = duplicatedValues.filter(
              (innerArray) => innerArray.length > 1
            );

            // Remove all the corresponding indices of that entity column from the tableValues
            for (const fieldName in fieldToColumnMapper) {
              tableValues[fieldName] = tableValues[fieldName].filter(
                (_, index) => index !== numberToRemove
              );
            }
          }
        }
      }
    }
  }

  public static async getAllColumnValues(column: string, table: string) {
    const result = await db.query<EntitiesValues>(
      `SELECT ${column} FROM ${table};`
    );
    const values = result.map((row) => row[column as string]);
    return values;
  }

  public static async getAllColumnEntities(table: string) {
    const result = await db.query<EntitiesValues>(`SELECT * FROM ${table};`);
    return result;
  }

  private static async getValidColumnValuesWithoutEntity(
    columnMeta: ColumnMeta,
    genOptions: RuntimeGenOptions,
    quantity: number
  ): Promise<string[]> {
    const { column_name, entity_meta_table, gen_opts_name } = columnMeta;
    let values = await this.getAllColumnValues(column_name, entity_meta_table);
    const allowedGenOpts = AllowedGenOptionsMap[gen_opts_name!];
    values = this.filterByExcluded(values, genOptions, allowedGenOpts);
    values = this.filterByMinNumber(values, genOptions, allowedGenOpts);
    values = this.filterByMaxNumber(values, genOptions, allowedGenOpts);
    values = this.mapByWordCasing(values, genOptions, allowedGenOpts);
    if (genOptions.notNull || genOptions.primaryKey) {
      values.filter((value) => value !== null);
    }
    if (genOptions.unique || genOptions.primaryKey) {
      values = Array.from(new Set(values));
    } else {
      if (values.length < quantity && values.length != 0) {
        // Clone values until surpass quantity
        while (values.length < quantity) {
          values.push(...values);
        }
      }
    }
    return this.shuffleAndSlice(values, quantity);
  }

  private static async getValidColumnValuesWithEntity(
    entityName: string,
    columnsGenParams: GenerationParams[],
    fieldToColumnMapper: Record<string, string>,
    quantity: number
  ) {
    let entityValues = await this.getAllColumnEntities(entityName);
    entityValues = entityValues.map((value) => {
      const obj: Record<string, string> = {};
      for (const name in fieldToColumnMapper) {
        obj[name] = value[fieldToColumnMapper[name]].toString();
      }
      return obj;
    });
    for (const param of columnsGenParams) {
      const { columnMeta, genOptions, fieldName } = param;
      const { gen_opts_name } = columnMeta;
      const allowedGenOpts = AllowedGenOptionsMap[gen_opts_name!];
      entityValues = this.filterByExcluded(
        entityValues,
        genOptions,
        allowedGenOpts,
        fieldName
      );
      entityValues = this.filterByMinNumber(
        entityValues,
        genOptions,
        allowedGenOpts,
        fieldName
      );
      entityValues = this.filterByMaxNumber(
        entityValues,
        genOptions,
        allowedGenOpts,
        fieldName
      );
      entityValues = this.mapByWordCasing(
        entityValues,
        genOptions,
        allowedGenOpts,
        fieldName
      );
    }
    return this.shuffleAndSlice(entityValues, quantity);
  }

  private static shuffleAndSlice<T extends ValidValue>(
    array: T[],
    quantity: number
  ): T[] {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
    return array.slice(0, quantity);
  }

  private static filterByExcluded<T extends ValidValue>(
    values: T[],
    genOptions: RuntimeGenOptions,
    allowedGenOpts: (keyof GenOptions)[],
    fieldName: string = ""
  ) {
    const { excluded } = genOptions;
    if (
      excluded &&
      excluded.length != 0 &&
      allowedGenOpts.includes("excluded")
    ) {
      return values.filter(
        (value) =>
          !excluded.includes(
            typeof value !== "string"
              ? value[fieldName].toString()
              : value.toString()
          )
      );
    }
    return values;
  }

  private static filterByMinNumber<T extends ValidValue>(
    values: T[],
    genOptions: RuntimeGenOptions,
    allowedGenOpts: (keyof GenOptions)[],
    fieldName: string = ""
  ) {
    const { minNumber, minNumberInclusive } = genOptions;
    if (
      minNumber &&
      typeof minNumber === "number" &&
      allowedGenOpts.includes("minNumber")
    ) {
      if (minNumberInclusive && allowedGenOpts.includes("minNumberInclusive")) {
        return values.filter(
          (value) =>
            Number(
              typeof value === "string" ? value : value[fieldName as string]
            ) >= minNumber
        );
      } else {
        return values.filter(
          (value) =>
            Number(
              typeof value === "string" ? value : value[fieldName as string]
            ) > minNumber
        );
      }
    }
    return values;
  }

  private static filterByMaxNumber<T extends ValidValue>(
    values: T[],
    genOptions: RuntimeGenOptions,
    allowedGenOpts: (keyof GenOptions)[],
    fieldName: string = ""
  ) {
    const { maxNumber, maxNumberInclusive } = genOptions;
    if (
      maxNumber &&
      typeof maxNumber === "number" &&
      allowedGenOpts.includes("maxNumber")
    ) {
      if (maxNumberInclusive && allowedGenOpts.includes("maxNumberInclusive")) {
        return values.filter(
          (value) =>
            Number(
              typeof value !== "string" ? value[fieldName as string] : value
            ) <= maxNumber
        );
      } else {
        return values.filter(
          (value) =>
            Number(
              typeof value !== "string" ? value[fieldName as string] : value
            ) < maxNumber
        );
      }
    }
    return values;
  }

  private static mapByWordCasing<T extends ValidValue>(
    values: T[],
    genOptions: RuntimeGenOptions,
    allowedGenOpts: (keyof GenOptions)[],
    fieldName: string = ""
  ): T[] {
    const { wordCasing } = genOptions;
    if (wordCasing && allowedGenOpts.includes("wordCasing")) {
      switch (wordCasing) {
        case WordCasing.lower:
          return values.map((value) =>
            this.mapper(value, (v) => v.toLowerCase(), fieldName)
          );
        case WordCasing.upper:
          return values.map((value) =>
            this.mapper(value, (v) => v.toUpperCase(), fieldName)
          );
        case WordCasing.capital:
          return values.map((value) =>
            this.mapper(
              value,
              (v) =>
                v.replace(/\w\S*/g, (w: string) =>
                  w.replace(/^\w/, (c) => c.toUpperCase())
                ),
              fieldName
            )
          );
        case WordCasing.first:
          return values.map((value) =>
            this.mapper(value, (v) =>
              v.replace(/^\w/, (c: string) => c.toUpperCase())
            )
          );
      }
    }
    return values;
  }

  private static mapper<T extends ValidValue>(
    value: T,
    modifier: (v: string) => string,
    fieldName: string = ""
  ): T {
    if (typeof value === "string") {
      return modifier(value) as T;
    } else if (fieldName) {
      value[fieldName] = modifier(value[fieldName]);
      return value;
    }
    return value;
  }
}
