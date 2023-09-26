import { ConstraintType, Field, GenOptions, ParsedTableConstraint, TableConstraint, TableOptions } from "@/types";
import { TypeProcessor } from "./TypeProcessor";
import { CreateTableKeywords, MySQLCreateTable } from "@/types/sql";
import { TypeProvider } from "./TypeProvider";
import { ValuesProvider } from "./ValuesProvider";
import { ConstraintProcessor } from "./ConstraintProcessor";

class SQLGenerator {
  public static async generateAllTables(
    tables: TableOptions[],
    kw: CreateTableKeywords
  ): Promise<string> {
    let sql = "";
    for (let index = 0; index < tables.length; index++) {
      const table = tables[index];
      sql += await this.generateOneTable(table, tables, kw);
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

  protected static async generateOneTable(
    table: TableOptions,
    tables: TableOptions[],
    kw: CreateTableKeywords
  ): Promise<string> {
    const { name, fields, constraints } = table;
    
    const parsedConstraints = ConstraintProcessor.parseConstraints(constraints);
    const foreignKeyConstraints = parsedConstraints.filter(constraint => constraint.type === ConstraintType.FK);

    let sql = `${kw.CREATE_TABLE} ${kw.IF_NOT_EXISTS} ${name} (\n`;

    for (let index = 0; index < fields.length; index++) {
      let field = fields[index];
      const endWithComma = index < fields.length - 1 || constraints.length > 0 || foreignKeyConstraints.length > 0;
      const generatedColumnSQL = await this.generateOneColumn(field, kw, false, endWithComma);
      sql += generatedColumnSQL;
    }
    
    const foreignKey = await this.generateForeignKey(parsedConstraints, table, tables, kw);
    sql += foreignKey;
    const tableConstraint = this.generateConstraints(constraints, kw);
    sql += tableConstraint;
    sql += "\n);";

    return sql;
  }

  private static generateConstraints(
    constraints: TableConstraint[],
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

  private static generateType(
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

  private static async generateValuesInsertion(
    table: TableOptions,
    kw: CreateTableKeywords
  ): Promise<string> {
    const { name, fields } = table;

    const values = await ValuesProvider.getValidTableValues(table);
    const minLen = Math.min(...Object.values(values).map((v) => v.length));
    if (minLen === 0) {
      return "-- WARNING: Your filters are too strict. No values were generated.";
    }
    let sql = `${kw.INSERT_INTO} ${name} (
      ${"\t" + fields.map((field) => field.name).join(",\n\t")}
      ) ${kw.VALUES}`;
    const needQuoteWraps = fields.map((field) => {
      const typeProcessor = new TypeProcessor(field.genOptions.actualType);
      return typeProcessor.needQuoteWrap;
    });
    for (let i = 0; i < minLen; i++) {
      const rowValues = Object.values(values).map((v) => v[i]);
      const rowValuesWithQuote = rowValues.map((v, i) => needQuoteWraps[i] ? `'${v}'` : v);
      sql += `\n\t(${rowValuesWithQuote.join(", ")})`;
      if (i < minLen - 1) {
        sql += ",";
      }
    }
    sql += ";";

    return sql;
  }

  private static async generateOneColumn(field: Field, kw: CreateTableKeywords, isForeignKey: boolean, endWithComma: boolean, alternativeColumnName?: string): Promise<string> {
    const {
      name,
      type,
      defaultValue,
      constraints: fconstraints,
      genOptions,
    } = field;
    let sql = "";
    const { notNull, unique, primaryKey } = fconstraints;
    const type_meta = await TypeProvider.getTypeById(type);
    const actualType = this.generateType(
      genOptions,
      type_meta?.gen_opts_name
    );
    const fname = alternativeColumnName ? alternativeColumnName : name;
    sql += `\t${fname} ${actualType}`;
    if (!notNull) {
      sql += ` ${kw.NULL}`;
    } else {
      sql += ` ${kw.NOT} ${kw.NULL}`;
    }
    if (!isForeignKey) {
      if (unique) {
        sql += ` ${kw.UNIQUE}`;
      }
      if (defaultValue) {
        sql += ` ${kw.DEFAULT} ${defaultValue}`;
      }
      if (primaryKey) {
        sql += ` ${kw.PRIMARY_KEY}`;
      }
    }
    if (endWithComma) {
      sql += ",";
    }
    sql += "\n";
    return sql;
  }

  private static async generateForeignKey(foreignKeyConstraints: ParsedTableConstraint[], table: TableOptions, tables: TableOptions[], kw:  CreateTableKeywords): Promise<string> {
    let sql = "";
    for (let j = 0; j < foreignKeyConstraints.length; j++) {
      const constraint = foreignKeyConstraints[j];
      const { columns, referencedTable: refTableName, referencedColumns: refColumnNames } = constraint;
      const referencedTable = tables.find(table => table.name.toLowerCase() === refTableName!.toLowerCase());
      if (!referencedTable) {
        sql += `-- ERROR: Referenced table ${refTableName} not found\n`;
        continue;
      }
      const referencedColumns = referencedTable.fields.filter(field => {
        if (refColumnNames!.includes(field.name.toLowerCase())) {
          return true;
        } else {
          sql += `-- ERROR: Referenced column ${field.name} not found\n`;
          return false;
        }
      });
      if (referencedColumns.length !== refColumnNames!.length) {
        continue;
      }
      for (let i = 0; i < columns!.length; i++) {
        const endWithComma = i < columns!.length - 1 || table.constraints.length > 0 || j < foreignKeyConstraints.length - 1;
        const foreignKeyColumnsSQL = await this.generateOneColumn(referencedColumns[i], kw, true, endWithComma, columns![i]); 
        sql += foreignKeyColumnsSQL;
      }
    }
    return sql;
  }

}

export class MySQLGenerator extends SQLGenerator {
  public static async generateAllTables(
    tables: TableOptions[]
  ): Promise<string> {
    return super.generateAllTables(tables, MySQLCreateTable);
  }
}

export class OracleSQLGenerator extends SQLGenerator {
  public static async generateAllTables(
    tables: TableOptions[]
  ): Promise<string> {
    return super.generateAllTables(tables, MySQLCreateTable);
  }
}
