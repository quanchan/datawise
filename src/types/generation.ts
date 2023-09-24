import { GenOptions } from "./genOpts"
import { ColumnMeta } from "./type"

export type ValidColumnValue = string[]
export type ValidTableValuesMap = Record<string, ValidColumnValue>
export type GenerationParams = {
  genOptions: GenOptions,
  columnMeta: ColumnMeta,
  fieldName: string,
}
export type EntityMap = Record<string, GenerationParams[]> 
export type EntitiesValues = Record<string, string>[]
export type ValidValue = Record<string, string> | string