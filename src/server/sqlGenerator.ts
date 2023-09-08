import { Field, FieldConstraints, Format, GenOptions, TableConstraints, TableOptions, Tables } from "@/types";
import { TypeProcessor } from "./TypeProcessor";
import { CreateTableKeywords, MySQLCreateTable } from "@/types/sql";



class SQLGenerator {
  public static generateAllTables(tables: TableOptions[], kw: CreateTableKeywords) {
    let sql = "";
    tables.forEach((table, index) => {
      sql += this.generateOneTable(table, kw);
      if (index < tables.length - 1) {
        sql += "\n\n";
      }
    })
    sql += `\n\n${kw.COMMIT};`;
    return sql;
  }

  public static generateOneTable(table: TableOptions, kw: CreateTableKeywords): string {
    const { name, fields, constraints } = table;
    let sql = `${kw.CREATE_TABLE} ${kw.IF_NOT_EXISTS} ${name} (\n`;
    fields.forEach((field: Field, index) => {
      const { name: fname, type, defaultValue, constraints: fconstraints, genOptions } = field;
      const { notNull, unique, primaryKey } = fconstraints;
      const actualType = this.generateType(type, genOptions);
      sql += `\t${fname} ${actualType}`;
      if (!notNull) {
        sql += ` ${kw.NULL}`;
      } else {
        sql += ` ${kw.NOT} ${kw.NULL}`;
      }
      if (unique) {
        sql += ` ${kw.UNIQUE}`;
      }
      if (defaultValue) {
        sql += ` ${kw.DEFAULT} ${defaultValue}`;
      }
      if (primaryKey) {
        sql += ` ${kw.PRIMARY_KEY}`;
      }
      if (index < fields.length - 1) {
        sql += ",\n";
      }
      const tableConstraint = this.generateConstraints(constraints, kw);
      sql += tableConstraint;
    });
    sql += "\n);";
    return sql;
  }

  public static generateConstraints(constraints: TableConstraints[], kw: CreateTableKeywords): string {
    const sql = constraints.reduce((acc, constraint) => {
      const { name, condition } = constraint;
      const constraintSQL = `\n\t${kw.CONSTRAINT} ${name} ${condition}`;
      return acc + constraintSQL;
    }, "")
    return sql;
  }

  public static generateType(type: string, genOptions: GenOptions): string {
    return genOptions.actualType;
  }
}

export class MySQLGenerator extends SQLGenerator {
  public static generateOneTable(table: TableOptions): string {
    return super.generateOneTable(table, MySQLCreateTable);
  }

  public static generateAllTables(tables: TableOptions[]): string {
    return super.generateAllTables(tables, MySQLCreateTable);
  }

  public static generateType(genOptions: GenOptions): string {
    const typeProcessor = new TypeProcessor(genOptions.actualType);
    const type = typeProcessor.getSQLType(Format.MySQL);
    return type;
  }

}

export class OracleSQLGenerator extends SQLGenerator {
  public static generateOneTable(table: TableOptions): string {
    return super.generateOneTable(table, MySQLCreateTable);
  }

  public static generateAllTables(tables: TableOptions[]): string {
    return super.generateAllTables(tables, MySQLCreateTable);
  }

  public static generateType(genOptions: GenOptions): string {
    const typeProcessor = new TypeProcessor(genOptions.actualType);
    const type = typeProcessor.getSQLType(Format.OracleSQL);
    return type;
  }
}
