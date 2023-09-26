import { GenOptions } from "./genOpts"
import { FieldConstraints } from "./table"
import { ColumnMeta } from "./type"

export type ValidColumnValue = string[]
export type ValidTableValuesMap = Record<string, ValidColumnValue>
export type GenerationParams = {
  genOptions: RuntimeGenOptions,
  columnMeta: ColumnMeta,
  fieldName: string,
}
export type EntityMap = Record<string, GenerationParams[]> 
export type EntitiesValues = Record<string, string>[]
export type ValidValue = Record<string, string> | string
export type RuntimeGenOptions = FieldConstraints & GenOptions

export type ParsedTableConstraint = {
  type: string,
  columns?: string[],
  referencedTable?: string,
  referencedColumns?: string[],
  condition?: string,
}