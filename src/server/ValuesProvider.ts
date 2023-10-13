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
    parsedFKColumnMap: ParsedFKColumnMap,
    uniqueGroups: string[][]
  ): Promise<ValidTableValuesMap> {
    const { fields, rowQuantity } = table;
    let tableValues: ValidTableValuesMap = {};
    const entityMap: EntityMap = {};
    const fkMap: FKMap = {};
    const groupGeneratedTogether: string[][] = [];
    for (const field of fields) {
      const { type, genOptions, name, constraints } = field;
      let values: ValidColumnValue = [];
      const runtimeGenOptions: RuntimeGenOptions = {
        ...genOptions,
        ...constraints,
      };
      field.genOptions = runtimeGenOptions;
      if (TypeProvider.isRuntimeTypeId(type)) {
        groupGeneratedTogether.push([name]);
        values = ValuesGenerator.generateRuntimeValues(
          type as RuntimeTypesId,
          runtimeGenOptions,
          rowQuantity
        );
        this.addNullsForStandalone(values, runtimeGenOptions, rowQuantity);
      } else if (TypeProvider.isForeignKey(type)) {
        const parsedFKColumn = parsedFKColumnMap[name];
        const { refTable, refColumn, isStandalone, group } = parsedFKColumn;
        let refTableValues = valuesCache[refTable];
        const refItself = refTable === table.name;
        if (refItself) {
          refTableValues = tableValues;
        }
        if (refTableValues) {
          const valuePool = refTableValues[refColumn];
          if (valuePool) {
            if (isStandalone) {
              values = ValuesGenerator.generateRandomValueFromGivenPool(
                valuePool,
                runtimeGenOptions,
                rowQuantity,
                refItself
              );
              this.addNullsForStandalone(values, runtimeGenOptions, rowQuantity);
            } else {
              // If the foreign key is not standalone, it means that it is a part of a multi-column foreign key
              // and will need to be generated together with other columns
              if (fkMap[group]) {
                fkMap[group].push(name);
              } else {
                fkMap[group] = [name];
              }
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
        const columnMeta = await TypeProvider.getColumnMetaById(type);
        if (columnMeta) {
          switch (genOptions.withEntity) {
            case "n":
              // Normal column
              groupGeneratedTogether.push([name]);
              values = await this.getValidColumnValuesWithoutEntity(
                columnMeta,
                runtimeGenOptions,
                rowQuantity
              );
              break;
            case "y":
              const newField = {
                columnMeta,
                genOptions: runtimeGenOptions,
                fieldName: name,
              };
              entityMap[columnMeta.entity_meta_table] = entityMap[
                columnMeta.entity_meta_table
              ]
                ? [...entityMap[columnMeta.entity_meta_table], newField]
                : [newField];
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

    ValuesProvider.getValidMultiColumnFKValues(
      tableValues,
      fkMap,
      rowQuantity,
      uniqueGroups,
      table
    );

    // Finish groupGeneratedTogether array to store all the columns that are generated together
    for (const group in entityMap) {
      const togetherCols = entityMap[group].map((param) => param.fieldName);
      groupGeneratedTogether.push(togetherCols);
    }

    for (const fk in fkMap) {
      const togetherCols = fkMap[fk];
      groupGeneratedTogether.push(togetherCols);
    }

    let minLen = Math.min(
      ...Object.values(tableValues).map((f) => f.length),
      rowQuantity
    );

    if (uniqueGroups.length != 0) {
      // Clone all the keys in tableValues to uniqueTableValues, but with empty arrays
      const uniqueTableValues: ValidTableValuesMap = Object.keys(
        tableValues
      ).reduce((acc, key) => {
        acc[key] = [];
        return acc;
      }, {} as ValidTableValuesMap);
      // Clone again to store the leftover values to reshuffle later
      const leftOverValues: ValidTableValuesMap = Object.keys(
        tableValues
      ).reduce((acc, key) => {
        acc[key] = [];
        return acc;
      }, {} as ValidTableValuesMap);

      // Array to store stringified values of row that satisfied all unique constraints
      const uniqueGroupsValues = uniqueGroups.map((_) => [] as string[]);

      let uniqueCount = 0;
      // Go through the first n row of the tableValues, where each field will guarantee to have values
      for (let i = 0; i < minLen; i++) {
        const valuesAtIndex: Record<string, string> = {};
        for (const field in tableValues) {
          valuesAtIndex[field] = tableValues[field][i];
        }
        const { valuesStrings, isUnique } = this.checkUniqueConstraints(
          uniqueGroups,
          uniqueGroupsValues,
          valuesAtIndex
        );
        // if this row satisfied all the constraints, push values to uniqueGroupsValues & uniqueTableValues
        if (isUnique) {
          uniqueCount = this.addNewUniqueRow(
            uniqueCount,
            uniqueGroupsValues,
            valuesStrings,
            valuesAtIndex,
            uniqueTableValues
          );
        } else {
          // Push everything to leftOverValues
          for (const field in tableValues) {
            leftOverValues[field].push(tableValues[field][i]);
          }
        }
      }

      // Save the rest of the value that we didn't use to leftOverValues to reshuffle later
      // since some field has more than minLen values
      for (const field in leftOverValues) {
        leftOverValues[field] = leftOverValues[field].concat(
          tableValues[field].slice(minLen)
        );
      }

      // Shuffle the leftover values and push to uniqueTableValues
      // Generate possible combinations of the leftover values

      const totalGroupGeneratedTogether = groupGeneratedTogether.length;
      // This assume that every field in groupGeneratedTogether has the same length
      // which is true since they are either standalone, foreign keys pull from another table and fields came from the same entity row
      const groupLeftOverLength = groupGeneratedTogether.map(
        (group) => leftOverValues[group[0]].length
      );

      this.generateComboAndValidate(
        0,
        totalGroupGeneratedTogether,
        uniqueTableValues,
        uniqueCount,
        minLen,
        groupLeftOverLength,
        groupGeneratedTogether,
        leftOverValues,
        uniqueGroups,
        uniqueGroupsValues
      );

      minLen = Object.values(uniqueTableValues)[0].length;
      tableValues = uniqueTableValues;
    }
    // slice the value to match the lowest length of all the columns
    for (const field in tableValues) {
      tableValues[field] = tableValues[field].slice(0, minLen);
    }
    return tableValues;
  }

  // Return isUnique == true if the row satisfied all the unique constraints
  // along with valuesStrings which is an array of stringified values of each unique group
  private static checkUniqueConstraints(
    uniqueGroups: string[][],
    uniqueGroupsValues: string[][],
    values: Record<string, string>
  ) {
    let isUnique = true;
    const valuesStrings: string[] = [];
    // Go through each unique group and check if the row satisfied all the constraints
    uniqueGroups.forEach((group, index) => {
      let valuesString = "";
      let nullString = "";
      for (const col of group) {
        valuesString += col + ":" + values[col] + ",";
        nullString += col + ":" + "NULL" + ",";
      }
      valuesStrings.push(valuesString);
      // All null still count as unique
      if (uniqueGroupsValues[index].includes(valuesString) && valuesString !== nullString) {
        isUnique = false;
      }
    });
    return { isUnique, valuesStrings };
  }

  private static addNewUniqueRow(
    uniqueCount: number,
    uniqueGroupsValues: string[][],
    valuesStrings: string[],
    values: Record<string, string>,
    uniqueTableValues: ValidTableValuesMap
  ) {
    uniqueGroupsValues.forEach((group, index) => {
      group.push(valuesStrings[index]);
    });
    for (const field in values) {
      uniqueTableValues[field].push(values[field]);
    }
    uniqueCount++;
    return uniqueCount;
  }

  // From the leftover values, generate possible combinations of the values and re-validate
  // to create more unique rows
  private static generateComboAndValidate(
    groupIndex: number,
    totalGroupGeneratedTogether: number,
    uniqueTableValues: ValidTableValuesMap,
    uniqueCount: number,
    minLen: number,
    groupLeftOverLength: number[],
    groupGeneratedTogether: string[][],
    leftOverValues: ValidTableValuesMap,
    uniqueGroups: string[][],
    uniqueGroupsValues: string[][],
    currentValues: Record<string, string> = {},
    totalCombo: number = 0
  ) {
    if (groupIndex == totalGroupGeneratedTogether) {
      totalCombo++;
      const { isUnique, valuesStrings } = this.checkUniqueConstraints(
        uniqueGroups,
        uniqueGroupsValues,
        currentValues
      );
      if (isUnique) {
        uniqueCount = this.addNewUniqueRow(
          uniqueCount,
          uniqueGroupsValues,
          valuesStrings,
          currentValues,
          uniqueTableValues
        );

        // Stop creating combo if we already have enough unique rows
        // or if we already created 200 combos to increase processing speed
        if (uniqueCount == minLen || totalCombo == 200) {
          return;
        }
      }
      return;
    }
    for (let i = 0; i < groupLeftOverLength[groupIndex]; i++) {
      for (const col of groupGeneratedTogether[groupIndex]) {
        currentValues[col] = leftOverValues[col][i];
      }
      this.generateComboAndValidate(
        groupIndex + 1,
        totalGroupGeneratedTogether,
        uniqueTableValues,
        uniqueCount,
        minLen,
        groupLeftOverLength,
        groupGeneratedTogether,
        leftOverValues,
        uniqueGroups,
        uniqueGroupsValues,
        currentValues,
        totalCombo
      );
    }
  }

  private static getValidMultiColumnFKValues(
    tableValues: ValidTableValuesMap,
    fkMap: FKMap,
    rowQuantity: number,
    uniqueGroups: string[][],
    table: TableOptions
  ) {
    for (const group in fkMap) {
      const colsInFK = fkMap[group];
      const firstCol = colsInFK[0];
      const length = tableValues[firstCol].length;
      let isUnique = false;
      // Check to see if this FK is required to be unique by any unique constraint
      for (const uniqueGroup of uniqueGroups) {
        if (uniqueGroup.length != colsInFK.length) {
          continue;
        }
        const _isUnique = uniqueGroup.every((value) =>
          colsInFK.includes(value)
        );
        if (_isUnique) {
          isUnique = _isUnique;
          break;
        }
      }

      // Handle Null percentage by generating random indices to replace with null. The number of indices 
      // is the min null percentage within all columns in the FK
      const nullPercents = table.fields.filter(f => colsInFK.includes(f.name)).map(f => f.genOptions.nullPercent).filter(p => p !== undefined) as number[];
      const minNullPercent = Math.min(...nullPercents)
      const nullQuantity = Math.floor(rowQuantity * (minNullPercent / 100));

      // Since we temporary stored all the values pool in fkMap, we can just generate random indices,
      // pick fk values from those pools and replace the pools with the actual values
      const indices = ValuesGenerator.generateRandomIndices(
        length,
        rowQuantity,
        isUnique,
        false
      );
      const indicesToAddNull = ValuesGenerator.generateRandomUniqueIndices(
        rowQuantity,
        nullQuantity
      ).sort();
      for (const col of fkMap[group]) {
        const values = [];
        for (const index of indices) {
          values.push(tableValues[col][index]);
        }
        this.addNulls(values, indicesToAddNull);
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
            // WARN: Object.values order of values is not guaranteed. Not sure if this will cause any problem 
            const duplicatedValuesEntry = Object.values(duplicatedMap).filter(
              (group) => group.length > 1
            );
            duplicatedValues.push(...duplicatedValuesEntry);
          }
          const fieldValues = validValues.map((value) => value[fieldName]);
          console.log(fieldValues)
          this.addNullsForStandalone(fieldValues, fieldGenOpts, rowQuantity, true);
          console.log(fieldValues)
          // Temporary save the column values to tableValues
          tableValues[fieldName] = fieldValues;
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

  public static async getAllColumnEntities(table: string): Promise<EntitiesValues> {
    const result = await db.query<EntitiesValues>(`SELECT * FROM ${table};`);
    return result as EntitiesValues;
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
    values = this.mapToEmailDomain(values, genOptions, allowedGenOpts);
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
    this.shuffle(values);
    this.addNullsForStandalone(values, genOptions, quantity);
    return values;
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
      entityValues = this.mapToEmailDomain(
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
    this.shuffle(entityValues);
    return entityValues
  }

  private static shuffle<T extends ValidValue>(array: T[]): T[] {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
  }

  private static addNullsForStandalone(
    values: string[],
    genOptions: RuntimeGenOptions,
    quantity: number,
    isEntity: boolean = false
  ) {
    if (!genOptions.notNull && !genOptions.primaryKey && genOptions.nullPercent) {
      const minQuantity = Math.min(values.length, quantity)
      const nullQuantity = Math.floor(minQuantity * (genOptions.nullPercent / 100));
      const indicesToAddNull = ValuesGenerator.generateRandomUniqueIndices(
        minQuantity,
        nullQuantity
      ).sort();
      this.addNulls(values, indicesToAddNull, isEntity);
    }
    return values;
  }

  private static addNulls(values: string[], indicesToAddNull: number[], isEntity: boolean = false) {

    for (let i = 0; i < indicesToAddNull.length; i++) {
      let replaced = values[i];
      values.splice(indicesToAddNull[i], 1, "NULL");
      if (replaced !== undefined && !isEntity) {
        values.push(replaced);
      }
    }
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

  private static mapToEmailDomain<T extends ValidValue>(
    values: T[],
    genOptions: RuntimeGenOptions,
    allowedGenOpts: (keyof GenOptions)[],
    fieldName: string = ""
  ): T[] {
    const { emailDomain, justUsername } = genOptions;
    if (
      allowedGenOpts.includes("emailDomain") &&
      allowedGenOpts.includes("justUsername") &&
      justUsername == "n"
    ) {
      if (emailDomain) {
        return values.map((value) =>
          this.mapper(value, (v) => v + "@" + emailDomain, fieldName)
        );
      } else {
        const emailDomains = [
          "@gmail.com",
          "@yahoo.com",
          "@outlook.com",
          "@hotmail.com",
          "@aol.com",
          "@icloud.com",
          "@protonmail.com",
          "@mail.com",
          "@live.com",
        ];
        return values.map((value) =>
          this.mapper(
            value,
            (v) =>
              v + emailDomains[Math.floor(Math.random() * emailDomains.length)],
            fieldName
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
