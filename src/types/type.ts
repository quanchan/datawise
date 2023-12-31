import { GenOptions } from "./genOpts";

export enum RuntimeTypesId {
  int = "int",
  decimal = "decimal",
  datetime = "datetime",
  date = "date",
  phonefax = "phonefax",
  regex = "regex",
}

export enum SpecialTypesId {
  foreignKey = "foreignKey",
}

export type Type = {
  gen_opts?: (keyof GenOptions)[],
  entity_display_name: string,
  standalone: boolean,
  custom: boolean,
} & ColumnMeta

export type ColumnMeta = {
  id: string,
  display_name: string,
  column_name: string,
  description: string,
  data_type: string,
  example: string,
  gen_opts_name?: string,
  entity_meta_table: string,
}

export type CustomType = {
  name: string,
  actualSQLType: string,
  description: string,
  values: string,
  separator: string,
}

export const separatorOptions = [
  { value: "newline", label: 'NEW LINE ("\\n")' },
  { value: "comma", label: 'COMMA (",")' },
];

export const defaultCustomType: CustomType = {
  name: "",
  actualSQLType: "",
  description: "",
  values: "",
  separator: separatorOptions[0].value,
}