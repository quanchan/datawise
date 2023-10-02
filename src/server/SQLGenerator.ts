import {
  AllTablesValuesCache,
  ConstraintType,
  Field,
  Format,
  GenOptions,
  ParsedFKColumnMap,
  ParsedTableConstraint,
  TableConstraint,
  TableOptions,
  TablesParsedFKColumnsMap,
  ValidTableValuesMap,
} from "@/types";
import { TypeProcessor } from "./TypeProcessor";
import {
  CreateTableKeywords,
  MySQLCreateTable,
  OracleSQLCreateTable,
} from "@/types/sql";
import { TypeProvider } from "./TypeProvider";
import { ValuesProvider } from "./ValuesProvider";
import { ConstraintProcessor } from "./ConstraintProcessor";

class SQLGenerator {
  public static async generateAllTables(
    tables: TableOptions[],
    format: Format,
    kw: CreateTableKeywords
  ): Promise<string> {
    let sql = "";

    // Parsed all the table-wide constraints
    const tableParsedConstraintsMap: Record<string, ParsedTableConstraint[]> =
      {};
    tables.forEach((table) => {
      tableParsedConstraintsMap[table.name] =
        ConstraintProcessor.parseConstraints(table.constraints);
    });
    const tableParsedFKColumnMap: TablesParsedFKColumnsMap = {};

    // Validate and map the foreign key constraints to columns for each table
    for (const table in tableParsedConstraintsMap) {
      const parsedConstraints = tableParsedConstraintsMap[table];
      const foreignKeyConstraints = parsedConstraints.filter(
        (constraint) => constraint.type === ConstraintType.FK
      );

      const parsedFKColumnMap = await this.validateAndMapFKOneTable(
        foreignKeyConstraints,
        tables,
        tableParsedFKColumnMap,
        format
      );
      tableParsedFKColumnMap[table] = parsedFKColumnMap;
    }

    // Sort the tables topically by the foreign key constraints dependency graph
    tables = this.topicalSortTables(tables, tableParsedConstraintsMap);
    // Store the values that get generated for each table so we can use them for foreign key columns
    const valuesCache: AllTablesValuesCache = {};

    // Generate the SQL definition for each table
    for (let index = 0; index < tables.length; index++) {
      const table = tables[index];
      sql += await this.generateOneTableDefinition(
        table,
        tableParsedFKColumnMap,
        format,
        kw
      );
      if (index < tables.length - 1) {
        sql += "\n\n";
      }
    }
    // Generate the SQL value insertion for each table
    for (let index = 0; index < tables.length; index++) {
      const table = tables[index];
      const insert = await this.generateValuesInsertion(
        table,
        valuesCache,
        tableParsedConstraintsMap[table.name],
        tableParsedFKColumnMap[table.name],
        kw
      );
      sql += `\n\n${insert}`;
    }

    sql += `\n\n${kw.COMMIT};`;
    return sql;
  }

  // SQL defintion for one table
  protected static async generateOneTableDefinition(
    table: TableOptions,
    tablesForeignKeyMap: TablesParsedFKColumnsMap,
    format: Format,
    kw: CreateTableKeywords
  ): Promise<string> {
    const { name, fields, constraints } = table;

    let sql = `${kw.CREATE_TABLE} ${kw.IF_NOT_EXISTS} ${name} (\n`;

    for (let index = 0; index < fields.length; index++) {
      let field = fields[index];
      const endWithComma = index < fields.length - 1 || constraints.length > 0;

      const generatedColumnSQL = await this.generateOneColumn(
        table.name,
        field,
        tablesForeignKeyMap,
        endWithComma,
        format,
        kw
      );
      sql += generatedColumnSQL;
    }

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
      sql += `  ${kw.CONSTRAINT} ${name} ${condition}`;
      if (i < constraints.length - 1) {
        sql += ",\n";
      }
    });
    return sql;
  }

  private static generateType(
    genOptions: GenOptions,
    gen_opts_name: string = "",
    format: Format,
    actualType?: string
  ): string {
    if (actualType) {
      return actualType;
    }
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
    const typeProcessor = new TypeProcessor(genOptions.actualType);
    return TypeProcessor.getDisplayType(
      typeProcessor.getSQLType(format),
      args as string[]
    );
  }

  private static async generateValuesInsertion(
    table: TableOptions,
    valuesCache: AllTablesValuesCache,
    parsedConstraints: ParsedTableConstraint[],
    parsedFKColumnMap: ParsedFKColumnMap,
    kw: CreateTableKeywords
  ): Promise<string> {
    const { name, fields } = table;
    // Get all the valid values for the table
    const uniqueGroups = parsedConstraints
      .filter((c) =>
        [ConstraintType.PK, ConstraintType.UNIQUE].includes(c.type)
      )
      .map((c) => c.columns as string[]);
    const values = await ValuesProvider.getValidTableValues(
      table,
      valuesCache,
      parsedFKColumnMap,
      uniqueGroups
    );
    const len = Object.values(values)[0].length;
    if (len === 0) {
      return "-- WARNING: Your filters are too strict. No values were generated.";
    }
    let sql = `-- INFO: Total rows generated: ${len}\n`;

    // Save the generated values for future generation of foreign key columns
    const cachedTableValues: ValidTableValuesMap = {};
    for (const [key, value] of Object.entries(values)) {
      cachedTableValues[key] = value;
    }
    valuesCache[name] = cachedTableValues;

    sql += `${kw.INSERT_INTO} ${name} (
  ${fields.map((field) => field.name).join(",\n  ")}
) ${kw.VALUES}`;
    const needQuoteWraps = fields.map((field) => {
      let systemType =
        parsedFKColumnMap[field.name]?.systemType ||
        field.genOptions.actualType;
      const typeProcessor = new TypeProcessor(systemType);
      return typeProcessor.needQuoteWrap;
    });
    for (let i = 0; i < len; i++) {
      const rowValues = Object.values(values).map((v) => v[i]);
      const rowValuesWithQuote = rowValues.map((v, i) =>
        needQuoteWraps[i] ? `'${v}'` : v
      );
      sql += `\n(${rowValuesWithQuote.join(", ")})`;
      if (i < len - 1) {
        sql += ",";
      }
    }
    sql += ";";

    return sql;
  }

  private static async generateOneColumn(
    tableName: string,
    field: Field,
    tablesForeignKeyMap: TablesParsedFKColumnsMap,
    endWithComma: boolean,
    format: Format,
    kw: CreateTableKeywords,
    alternativeColumnName?: string
  ): Promise<string> {
    const {
      name,
      type,
      defaultValue,
      constraints: fconstraints,
      genOptions,
    } = field;
    let sql = "";
    const { notNull, unique, primaryKey } = fconstraints;
    let fkActualType = tablesForeignKeyMap[tableName]?.[name]?.typeWithArgs;
    const isForeignKey = TypeProvider.isForeignKey(type);
    const type_meta = await TypeProvider.getTypeById(type);
    const actualType = this.generateType(
      genOptions,
      type_meta?.gen_opts_name,
      format,
      fkActualType
    );
    const fname = alternativeColumnName ? alternativeColumnName : name;
    sql += `  ${fname} ${actualType}`;
    if (!notNull) {
      sql += ` ${kw.NULL}`;
    } else {
      sql += ` ${kw.NOT} ${kw.NULL}`;
    }
    if (unique) {
      sql += ` ${kw.UNIQUE}`;
    }
    if (!isForeignKey) {
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

  private static async validateAndMapFKOneTable(
    foreignKeyConstraints: ParsedTableConstraint[],
    tables: TableOptions[],
    tablesForeignKeyMap: TablesParsedFKColumnsMap,
    format: Format
  ): Promise<ParsedFKColumnMap> {
    const constraintMap: ParsedFKColumnMap = {};
    for (let j = 0; j < foreignKeyConstraints.length; j++) {
      const constraint = foreignKeyConstraints[j];
      const {
        columns,
        referencedTable: refTableName,
        referencedColumns: refColumnNames,
      } = constraint;
      const referencedTable = tables.find(
        (table) => table.name.toLowerCase() === refTableName!.toLowerCase()
      );
      if (!referencedTable) {
        throw new Error(`Referenced table ${refTableName} not found`);
      }
      const referencedColumns = referencedTable.fields.filter((field) =>
        refColumnNames!.includes(field.name.toLowerCase())
      );
      if (referencedColumns.length !== refColumnNames!.length) {
        throw new Error(`Invalid referenced columns`);
      }

      for (let i = 0; i < columns!.length; i++) {
        let fkActualType = referencedColumns[i].type; // This can be either foreign key or actual type id
        let typeWithArgs;
        let systemType;
        // Dont need to go up more than 1 lvl since we already derived the type for every fk column
        if (TypeProvider.isForeignKey(fkActualType)) {
          const parsedFKColumn =
            tablesForeignKeyMap[referencedTable.name][
              referencedColumns[i].name
            ];
          fkActualType = parsedFKColumn.typeWithArgs;
          typeWithArgs = fkActualType;
          systemType = parsedFKColumn.systemType;
        } else {
          // In case the type we found is an actual type id
          const type_meta = await TypeProvider.getTypeById(fkActualType);
          typeWithArgs = this.generateType(
            referencedColumns[i].genOptions,
            type_meta?.gen_opts_name,
            format
          );
          systemType = referencedColumns[i].genOptions.actualType;
        }
        constraintMap[columns![i]] = {
          refTable: referencedTable.name,
          refColumn: referencedColumns[i].name,
          typeWithArgs,
          group: j,
          isStandalone: columns!.length === 1,
          systemType,
        };
      }
    }
    return constraintMap;
  }

  private static topicalSortTables(
    tables: TableOptions[],
    parsedConstraintsMap: Record<string, ParsedTableConstraint[]>
  ): TableOptions[] {
    let dependencyMap: Record<string, string[]> = {};
    for (let index = 0; index < tables.length; index++) {
      const table = tables[index];
      const parsedConstraints = parsedConstraintsMap[table.name];
      const foreignKeyConstraints = parsedConstraints.filter(
        (constraint) => constraint.type === ConstraintType.FK
      );
      const referencedTables = foreignKeyConstraints
        .map((constraint) => constraint.referencedTable)
        .filter((val) => val !== undefined && val !== table.name);
      dependencyMap[table.name] = referencedTables as string[];
    }

    const order: string[] = [];
    const visited: Record<string, boolean> = {};
    const inProgress: Record<string, boolean> = {};

    function visit(table: string) {
      if (inProgress[table]) {
        throw new Error("Circular dependency detected");
      }

      if (!visited[table]) {
        inProgress[table] = true;

        const prerequisites = dependencyMap[table] || [];
        for (const prerequisite of prerequisites) {
          if (!visited[prerequisite]) {
            visit(prerequisite);
          }
        }

        visited[table] = true;
        inProgress[table] = false;
        order.push(table);
      }
    }

    for (const table in dependencyMap) {
      if (!visited[table]) {
        visit(table);
      }
    }

    const sortedTables = order.map((name) => {
      const table = tables.find((table) => table.name === name);
      return table;
    });
    return sortedTables as TableOptions[];
  }
}

export class MySQLGenerator extends SQLGenerator {
  public static async generateAllTables(
    tables: TableOptions[],
    format: Format
  ): Promise<string> {
    return super.generateAllTables(tables, format, MySQLCreateTable);
  }
}

export class OracleSQLGenerator extends SQLGenerator {
  public static async generateAllTables(
    tables: TableOptions[],
    format: Format
  ): Promise<string> {
    return super.generateAllTables(tables, format, OracleSQLCreateTable);
  }
}
