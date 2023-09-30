import { GenOptions } from "./genOpts"
import { FieldConstraints } from "./table"
import { ColumnMeta } from "./type"

export type ValidColumnValue = string[]
export type ValidTableValuesMap = Record<string, ValidColumnValue>
export type AllTablesValuesCache = Record<string, ValidTableValuesMap>
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

export type ParsedFKColumn = {
  refTable: string,
  refColumn: string,
  typeWithArgs: string,
  group: number,
  isStandalone: boolean,
  systemType: string,
}

export type ParsedFKColumnMap = Record<string, ParsedFKColumn>
export type TablesParsedFKColumnsMap = Record<string, ParsedFKColumnMap>