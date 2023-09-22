export type TypeMap = {
  number: string;
  datetime: string;
  timestamp: string;
  boolean: string;
  char: string;
  varchar: string;
  text: string;
}

export const MySQLTypeMap: TypeMap = {
  number: "DECIMAL",
  datetime: "DATETIME",
  timestamp: "TIMESTAMP",
  boolean: "BOOLEAN",
  char: "CHAR",
  varchar: "VARCHAR",
  text: "TEXT",
}

export const OracleSQLTypeMap: TypeMap = {
  number: "NUMBER",
  datetime: "DATE",
  timestamp: "TIMESTAMP",
  boolean: "NUMBER",
  char: "CHAR",
  varchar: "VARCHAR",
  text: "CLOB",
}


// https://dev.mysql.com/doc/refman/8.0/en/data-types.html
export const MySQLDataType = {
  CHAR: "CHAR",
  VARCHAR: "VARCHAR",
  TEXT: "TEXT",
  TINYINT: "TINYINT",
  SMALLINT: "SMALLINT",
  INT: "INT",
  MEDIUMINT: "MEDIUMINT",
  BIGINT: "BIGINT",
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
  CHAR: "CHAR",
  VARCHAR: "VARCHAR",
  NCHAR: "NCHAR",
  NVARCHAR: "NVARCHAR",
  NUMBER: "NUMBER",
  FLOAT: "FLOAT",
  BINARY_FLOAT: "BINARY_FLOAT",
  BINARY_DOUBLE: "BINARY_DOUBLE",
  DATE: "DATE",
  TIMESTAMP: "TIMESTAMP",
  RAW: "RAW",
  LONG_RAW: "LONG RAW",
  BLOB: "BLOB",
  CLOB: "CLOB",
  NCLOB: "NCLOB",
  BFILE: "BFILE",
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
  CONSTRAINT: string;
  UNIQUE: string;
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
  CONSTRAINT: "CONSTRAINT",
  UNIQUE: "UNIQUE",
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
  CONSTRAINT: "CONSTRAINT",
  UNIQUE: "UNIQUE",
}

// export const MySQLTypePriority = {
//   numeric: [ MySQLDataType.TINYINT, MySQLDataType.SMALLINT, MySQLDataType.INT, MySQLDataType.MEDIUMINT, MySQLDataType.BIGINT, MySQLDataType.DECIMAL],
//   string: [MySQLDataType.CHAR, MySQLDataType.VARCHAR, MySQLDataType.TEXT],
//   date: [MySQLDataType.DATE, MySQLDataType.TIME, MySQLDataType.DATETIME, MySQLDataType.TIMESTAMP],
//   boolean: [MySQLDataType.BOOLEAN],
//   binary: [MySQLDataType.BINARY, MySQLDataType.VARBINARY],
//   set: [MySQLDataType.SET],
//   blob: [MySQLDataType.BLOB],
//   bit: [MySQLDataType.BIT],
// }

// export const OracleTypePriority = {
//   numeric: [ OracleSQLDataType.BINARY_FLOAT, OracleSQLDataType.BINARY_DOUBLE, OracleSQLDataType.NUMBER],
//   string: [OracleSQLDataType.CHAR, OracleSQLDataType.VARCHAR, OracleSQLDataType.NCHAR, OracleSQLDataType.NVARCHAR],
//   date: [OracleSQLDataType.DATE, OracleSQLDataType.TIMESTAMP],
//   blob: [OracleSQLDataType.BLOB, OracleSQLDataType.CLOB, OracleSQLDataType.NCLOB, OracleSQLDataType.BFILE],
//   raw: [OracleSQLDataType.RAW, OracleSQLDataType.LONG_RAW],
// }