import { GenOptions } from "./genOpts";

export type Type = {
  id: string,
  display_name: string,
  column_name: string,
  description: string,
  data_type: string,
  example: string,
  gen_opts_name?: string,
  gen_opts?: (keyof GenOptions)[],
  entity_display_name: string,
  entity_table_name: string,
  standalone: boolean,
  custom: boolean,
}

export type CustomType = {
  name: string,
  actualSQLType: string,
  description: string,
  values: string,
  separator: string,
}

export const defaultCustomType: CustomType = {
  name: "",
  actualSQLType: "",
  description: "",
  values: "",
  separator: 'comma',
}