import { Field, FieldConstraints, Format, TableConstraints, TableOptions, Tables } from "@/types";

// https://dev.mysql.com/doc/refman/8.0/en/data-types.html
export const MySQLDataType = {
  VARCHAR: "VARCHAR",
  TEXT: "TEXT",
  CHAR: "CHAR",
  TINYINT: "TINYINT",
  SMALLINT: "SMALLINT",
  INT: "INT",
  MEDIUMINT: "MEDIUMINT",
  BIGINT: "BIGINT",
  FLOAT: "FLOAT",
  DOUBLE: "DOUBLE",
  DECIMAL: "DECIMAL",
  NUMERIC: "NUMERIC",
  DATE: "DATE",
  DATETIME: "DATETIME",
  TIMESTAMP: "TIMESTAMP",
  TIME: "TIME",
  BOOLEAN: "BOOLEAN",
  BIT: "BIT",
  BINARY: "BINARY",
  VARBINARY: "VARBINARY",
  SET: "SET",
  BLOB: "BLOB",
}

// https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/Data-Types.html#GUID-A3C0D836-BADB-44E5-A5D4-265BA5968483
export const OracleSQLDataType = {
  VARCHAR: "VARCHAR",
  VARCHAR2: "VARCHAR2",
  NVARCHAR: "NVARCHAR",
  NVARCHAR2: "NVARCHAR2",
  NUMBER: "NUMBER",
  FLOAT: "FLOAT",
  BINARY_FLOAT: "BINARY_FLOAT",
  BINARY_DOUBLE: "BINARY_DOUBLE",
  DATE: "DATE",
  TIMESTAMP: "TIMESTAMP",
  RAW: "RAW",
  LONG_RAW: "LONG RAW",
  CHAR: "CHAR",
  NCHAR: "NCHAR",
  CLOB: "CLOB",
  NCLOB: "NCLOB",
  BLOB: "BLOB",
}

export type CreateTableKeywords = {
  CREATE_TABLE: string;
  IF_NOT_EXISTS: string;
  NULL: string;
  NOT: string;
  DEFAULT: string;
  PRIMARY_KEY: string;
  CHECK: string;
  FOREIGN_KEY: string;
  COMMIT: string;
}

export const MySQLCreateTable: CreateTableKeywords = {
  CREATE_TABLE: "CREATE TABLE",
  IF_NOT_EXISTS: "IF NOT EXISTS",
  NULL: "NULL",
  NOT: "NOT",
  DEFAULT: "DEFAULT",
  PRIMARY_KEY: "PRIMARY KEY",
  CHECK: "CHECK",
  FOREIGN_KEY: "FOREIGN KEY",
  COMMIT: "COMMIT",
}

export const OracleSQLCreateTable: CreateTableKeywords = {
  CREATE_TABLE: "CREATE TABLE",
  IF_NOT_EXISTS: "IF NOT EXISTS",
  NULL: "NULL",
  NOT: "NOT",
  DEFAULT: "DEFAULT",
  PRIMARY_KEY: "PRIMARY KEY",
  CHECK: "CHECK",
  FOREIGN_KEY: "FOREIGN KEY",
  COMMIT: "COMMIT",
}

class SQLGenerator {
  public static generateAllTables(tables: TableOptions[], createKeywords: CreateTableKeywords) {
    let sql = "";
    tables.forEach((table, index) => {
      sql += this.generateOneTable(table, createKeywords);
      if (index < tables.length - 1) {
        sql += "\n\n";
      }
    })
    sql += `\n\n${createKeywords.COMMIT};`;
    return sql;
  }

  public static generateOneTable(table: TableOptions, createKeywords: CreateTableKeywords): string {
    const { name, fields, constraints } = table;
    let sql = `${createKeywords.CREATE_TABLE} ${createKeywords.IF_NOT_EXISTS} ${name} (\n`;
    fields.forEach((field: Field, index) => {
      const { name: fname, type, defaultValue, constraints: fconstraints } = field;
      const { notNull, unique, primaryKey } = fconstraints;
      const actualType = this.generateType(type);
      sql += `\t${fname} ${actualType}`;
      if (!notNull) {
        sql += ` ${createKeywords.NULL}`;
      } else {
        sql += ` ${createKeywords.NOT} ${createKeywords.NULL}`;
      }
      if (defaultValue) {
        sql += ` ${createKeywords.DEFAULT} ${defaultValue}`;
      }
      if (primaryKey) {
        sql += ` ${createKeywords.PRIMARY_KEY}`;
      }
      if (index < fields.length - 1) {
        sql += ",\n";
      }
      const tableConstraint = this.generateConstraints(constraints);
      sql += tableConstraint;
    });
    sql += "\n);";
    return sql;
  }

  public static generateConstraints(constraints: TableConstraints[]): string {
    return ""
  }

  public static generateType(type: string): string {
    return ""
  }

}

export class MySQLGenerator extends SQLGenerator {
  public static generateOneTable(table: TableOptions): string {
    return super.generateOneTable(table, MySQLCreateTable);
  }

  public static generateAllTables(tables: TableOptions[]): string {
    return super.generateAllTables(tables, MySQLCreateTable);
  }
}

export class OracleSQLGenerator extends SQLGenerator {
  public static generateOneTable(table: TableOptions): string {
    return super.generateOneTable(table, MySQLCreateTable);
  }

  public static generateAllTables(tables: TableOptions[]): string {
    return super.generateAllTables(tables, MySQLCreateTable);
  }
}
