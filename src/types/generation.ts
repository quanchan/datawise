import { ConstraintType } from "./constraint"
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
export type FKMap = Record<number, string[]>
export type RuntimeGenOptions = FieldConstraints & GenOptions

export type ParsedTableConstraint = {
  type: ConstraintType,
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

export type UniqueGroupConstraint = {
  type: ConstraintType.UNIQUE | ConstraintType.PK,
  columns: string[],
}