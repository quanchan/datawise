import { GenOptions } from "./genOpts";

export type FieldConstraints = {
  notNull: boolean;
  unique: boolean;
  primaryKey: boolean;
}

export type Field = {
  name: string;
  type: string;
  defaultValue: string;
  constraints: FieldConstraints;
  genOptions: GenOptions,
}

export const defaultField: Field = {
  name: "Field_1",
  type: "",
  defaultValue: "",
  constraints: {
    notNull: false,
    unique: false,
    primaryKey: false,
  },
  genOptions: {
    actualType: "",
  }
};

export type TableConstraints = {
  name: string;
  condition: string;
}

export const defaultTableConstaints: TableConstraints = {
  name: "Constraint_1",
  condition: "",
};

export type TableOptions = {
  name: string;
  rowQuantity: number;
  fields: Field[];
  constraints: TableConstraints[];
}

export const defaultTableOptions: TableOptions = {
  name: "Table_1",
  rowQuantity: 50,
  fields: [{ ...defaultField }],
  constraints: [{ ...defaultTableConstaints }],
};

export enum Format {
  MySQL = "MySQL",
  OracleSQL = "OracleSQL"
}

export type Tables = {
  tables: TableOptions[];
  format: Format;
}

export const defaultTables: Tables = {
  tables: [{ ...defaultTableOptions }],
  format: Format.MySQL,
};