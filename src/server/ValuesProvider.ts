import {
  GenOptions,
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
} from "@/types";
import { TypeProvider } from "./TypeProvider";
import db from "@/db";
import { ValuesGenerator } from "./ValuesGenerator";

export class ValuesProvider {
  private static async getValidColumnValuesWithoutEntity(
    columnMeta: ColumnMeta,
    genOptions: GenOptions,
    quantity: number
  ): Promise<string[]> {
    const { column_name, entity_meta_table, gen_opts_name } = columnMeta;
    let values = await this.getAllColumnValues(column_name, entity_meta_table);
    const allowedGenOpts = AllowedGenOptionsMap[gen_opts_name!];
    values = this.filterByExcluded(values, genOptions, allowedGenOpts);
    values = this.filterByMinNumber(values, genOptions, allowedGenOpts);
    values = this.filterByMaxNumber(values, genOptions, allowedGenOpts);
    values = this.mapByWordCasing(values, genOptions, allowedGenOpts);
    return this.shuffleAndSlice(values, quantity);
  }
  
  private static async getValidColumnValuesWithEntity(
    entityValues: EntitiesValues,
    columnsGenParams: GenerationParams[],
    quantity: number
  ) {
    for (const param of columnsGenParams) {
      const { columnMeta, genOptions, fieldName } = param;
      const { gen_opts_name } = columnMeta;
      const allowedGenOpts = AllowedGenOptionsMap[gen_opts_name!];
      entityValues = this.filterByExcluded(entityValues, genOptions, allowedGenOpts, fieldName);
      entityValues = this.filterByMinNumber(entityValues, genOptions, allowedGenOpts, fieldName);
      entityValues = this.filterByMaxNumber(entityValues, genOptions, allowedGenOpts, fieldName);
      entityValues = this.mapByWordCasing(entityValues, genOptions, allowedGenOpts, fieldName);
    }
    return this.shuffleAndSlice(entityValues, quantity);
  }

  public static async getValidTableValues(
    table: TableOptions
  ): Promise<ValidTableValuesMap> {
    const { fields, rowQuantity } = table;
    const tableValues: ValidTableValuesMap = {};
    const entityMap: EntityMap = {};
    for (const field of fields) {
      const { type, genOptions, name } = field;
      let values: ValidColumnValue = [];

      if (TypeProvider.isRuntimeTypeId(type)) {
        values = ValuesGenerator.generateRuntimeValues(
          type as RuntimeTypesId,
          genOptions,
          rowQuantity
        );
      } else {
        const columnMeta = await TypeProvider.getColumnMetaById(type);
        if (columnMeta) {
          switch (genOptions.withEntity) {
            case "n":
              values = await this.getValidColumnValuesWithoutEntity(
                columnMeta,
                genOptions,
                rowQuantity
              );
              break;
            case "y":
              if (!entityMap[columnMeta.entity_meta_table]) {
                entityMap[columnMeta.entity_meta_table] = [
                  { columnMeta, genOptions, fieldName: name },
                ];
              } else {
                entityMap[columnMeta.entity_meta_table].push({
                  columnMeta,
                  genOptions,
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
    for (const entity in entityMap) {
      const fields = entityMap[entity];
      const entityValues = await this.getAllColumnEntities(entity);
      const validValues = await this.getValidColumnValuesWithEntity(entityValues, fields, rowQuantity);
      if (validValues.length != 0) {
        const fieldNameGetter = validValues[0];
        for (const fieldName in fieldNameGetter) {
          tableValues[fieldName] = validValues.map((value) => value[fieldName]);
        }
      }
    }
    return tableValues;
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

  private static shuffleAndSlice<T extends ValidValue>(array: T[], quantity: number): T[] {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]]; // Swap elements
    }
    return array.slice(0, quantity);
  }

  private static filterByExcluded<T extends ValidValue>(
    values: T[],
    genOptions: GenOptions,
    allowedGenOpts: (keyof GenOptions)[],
    fieldName: string = ""
  ) {
    const { excluded } = genOptions;
    if (excluded && allowedGenOpts.includes("excluded")) {
      return values.filter(
        (value) =>
          !excluded.includes(
            typeof value !== "string" ? value[fieldName].toString() : value.toString()
          )
      );
    }
    return values;
  }

  private static filterByMinNumber<T extends ValidValue>(
    values: T[],
    genOptions: GenOptions,
    allowedGenOpts: (keyof GenOptions)[],
    fieldName: string = ""
  ) {
    const { minNumber, minNumberInclusive } = genOptions;
    if (minNumber && allowedGenOpts.includes("minNumber")) {
      if (minNumberInclusive && allowedGenOpts.includes("minNumberInclusive")) {
        return values.filter(
          (value) => Number(typeof value === "string" ? value : value[fieldName as string]) >= minNumber
        );
      } else {
        return values.filter(
          (value) => Number(typeof value === "string"  ? value : value[fieldName as string]) > minNumber
        );
      }
    }
    return values;
  }

  private static filterByMaxNumber<T extends ValidValue>(
    values: T[],
    genOptions: GenOptions,
    allowedGenOpts: (keyof GenOptions)[],
    fieldName: string = ""
  ) {
    const { maxNumber, maxNumberInclusive } = genOptions;
    if (maxNumber && allowedGenOpts.includes("maxNumber")) {
      if (maxNumberInclusive && allowedGenOpts.includes("maxNumberInclusive")) {
        return values.filter(
          (value) => Number(typeof value !== "string" ? value[fieldName as string] : value) <= maxNumber
        );
      } else {
        return values.filter(
          (value) => Number(typeof value !== "string" ? value[fieldName as string] : value) < maxNumber
        );
      }
    }
    return values;
  }

  private static mapByWordCasing<T extends ValidValue>(
    values: T[],
    genOptions: GenOptions,
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
