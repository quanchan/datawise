import { GenOptions, TableConstraints, TableOptions } from "@/types";
import { TypeProcessor } from "./TypeProcessor";
import { CreateTableKeywords, MySQLCreateTable } from "@/types/sql";
import { TypeProvider } from "./TypeProvider";
import { ValuesProvider } from "./ValuesProvider";

class SQLGenerator {
  public static async generateAllTables(
    tables: TableOptions[],
    kw: CreateTableKeywords
  ): Promise<string> {
    let sql = "";
    for (let index = 0; index < tables.length; index++) {
      const table = tables[index];
      sql += await this.generateOneTable(table, kw);
      if (index < tables.length - 1) {
        sql += "\n\n";
      }
    }
    
    for (let index = 0; index < tables.length; index++) {
      const table = tables[index];
      const insert = await this.generateValuesInsertion(table, kw);
      sql += `\n\n${insert}`;
    }
    
    sql += `\n\n${kw.COMMIT};`;
    return sql;
  }

  public static async generateOneTable(
    table: TableOptions,
    kw: CreateTableKeywords
  ): Promise<string> {
    const { name, fields, constraints } = table;
    let sql = `${kw.CREATE_TABLE} ${kw.IF_NOT_EXISTS} ${name} (\n`;
    for (let index = 0; index < fields.length; index++) {
      let field = fields[index];
      const {
        name: fname,
        type,
        defaultValue,
        constraints: fconstraints,
        genOptions,
      } = field;
      const { notNull, unique, primaryKey } = fconstraints;
      const type_meta = await TypeProvider.getTypeById(type);
      const actualType = this.generateType(
        genOptions,
        type_meta?.gen_opts_name
      );
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
      if (index < fields.length - 1 || constraints.length > 0) {
        sql += ",\n";
      }
    }
    const tableConstraint = this.generateConstraints(constraints, kw);
    sql += tableConstraint;
    sql += "\n);";

    return sql;
  }

  public static generateConstraints(
    constraints: TableConstraints[],
    kw: CreateTableKeywords
  ): string {
    let sql = "";
    constraints.forEach((constraint, i) => {
      const { name, condition } = constraint;
      sql += `\t${kw.CONSTRAINT} ${name} ${condition}`;
      if (i < constraints.length - 1) {
        sql += ",\n";
      }
    });
    return sql;
  }

  public static generateType(
    genOptions: GenOptions,
    gen_opts_name: string = ""
  ): string {
    let args: (string | undefined)[];
    switch (gen_opts_name) {
      case "entityVarchar":
        args = [genOptions.maxLength?.toString()];
        break;
      case "entityNumber":
        args = [genOptions.precision?.toString(), genOptions.scale?.toString()];
        break;
      case "randomPhoneFax":
        args = [genOptions.phoneFaxFormat?.length.toString()];
        break;
      case "randomInt":
        args = [genOptions.precision?.toString()];
        break;
      case "randomDecimal":
        args = [genOptions.precision?.toString(), genOptions.scale?.toString()];
        break;
      default:
        args = [];
    }
    args = args.filter((arg) => arg !== undefined);
    return TypeProcessor.getDisplayType(
      genOptions.actualType,
      args as string[]
    );
  }

  public static async generateValuesInsertion(
    table: TableOptions,
    kw: CreateTableKeywords
  ): Promise<string> {
    const { name, fields } = table;
    let sql = `${kw.INSERT_INTO} ${name} (
${"\t" + fields.map((field) => field.name).join(",\n\t")}
) ${kw.VALUES}`;
    const values = await ValuesProvider.getValidTableValues(table);
    const minLen = Math.min(...Object.values(values).map((v) => v.length));
    for (let i = 0; i < minLen; i++) {
      const rowValues = Object.values(values).map((v) => v[i]);
      sql += `\n\t(${rowValues.join(", ")})`;
      if (i < minLen - 1) {
        sql += ",";
      }
    }
    sql += ";";

    return sql;
  }
}

export class MySQLGenerator extends SQLGenerator {
  public static async generateOneTable(table: TableOptions): Promise<string> {
    return super.generateOneTable(table, MySQLCreateTable);
  }

  public static async generateAllTables(
    tables: TableOptions[]
  ): Promise<string> {
    return super.generateAllTables(tables, MySQLCreateTable);
  }
}

export class OracleSQLGenerator extends SQLGenerator {
  public static async generateOneTable(table: TableOptions): Promise<string> {
    return super.generateOneTable(table, MySQLCreateTable);
  }

  public static async generateAllTables(
    tables: TableOptions[]
  ): Promise<string> {
    return super.generateAllTables(tables, MySQLCreateTable);
  }
}
