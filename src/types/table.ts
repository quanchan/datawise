import { GenOptions, defaultGenOptions } from "./genOpts";
import { CustomType, defaultCustomType } from "./type";

export type FieldConstraints = {
  notNull: boolean;
  unique: boolean;
  primaryKey: boolean;
};

export type Field = {
  name: string;
  type: string;
  defaultValue: string;
  constraints: FieldConstraints;
  genOptions: GenOptions,
};

export const defaultField: Field = {
  name: "Field_1",
  type: "",
  defaultValue: "",
  constraints: {
    notNull: false,
    unique: false,
    primaryKey: false,
  },
  genOptions: defaultGenOptions
};

export type TableConstraints = {
  name: string;
  condition: string;
};

export const defaultTableConstraints: TableConstraints = {
  name: "Constraint_1",
  condition: "",
};

export type TableOptions = {
  name: string;
  rowQuantity: number;
  fields: Field[];
  constraints: TableConstraints[];
};

export const defaultTableOptions: TableOptions = {
  name: "Table_1",
  rowQuantity: 50,
  fields: [{ ...defaultField }],
  constraints: [{ ...defaultTableConstraints }],
};

export enum Format {
  MySQL = "MySQL",
  OracleSQL = "OracleSQL",
}

export type Tables = {
  tables: TableOptions[];
  format: Format;
  newType: CustomType;
};

export const defaultTables: Tables = {
  tables: [{ ...defaultTableOptions }],
  format: Format.MySQL,
  newType: defaultCustomType,
};

export const sqlReservedWords = [
  "ADD",
  "ALL",
  "ALTER",
  "AND",
  "ANY",
  "AS",
  "ASC",
  "AUTO_INCREMENT", // specific to MySQL
  "BEGIN",
  "BETWEEN",
  "BY",
  "CASE",
  "CHECK",
  "COLUMN",
  "COMMIT",
  "CONSTRAINT",
  "CREATE",
  "CROSS",
  "DEFAULT",
  "DELETE",
  "DESC",
  "DISTINCT",
  "DROP",
  "ELSE",
  "END",
  "EXISTS",
  "FOREIGN",
  "FROM",
  "FULL",
  "GROUP",
  "HAVING",
  "IN",
  "INDEX",
  "INNER",
  "INSERT",
  "INTERSECT",
  "INTO",
  "IS",
  "JOIN",
  "KEY",
  "LEFT",
  "LIKE",
  "LIMIT",
  "NOT",
  "NULL",
  "ON",
  "OR",
  "ORDER",
  "OUTER",
  "PRIMARY",
  "REFERENCES",
  "RIGHT",
  "ROLLBACK",
  "SELECT",
  "SET",
  "TABLE",
  "THEN",
  "TO",
  "TRANSACTION",
  "UNION",
  "UNIQUE",
  "UPDATE",
  "VALUES",
  "WHERE",
];
