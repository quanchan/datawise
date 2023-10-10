import { ConstraintType, ParsedTableConstraint, TableConstraint } from "@/types";

export class ConstraintProcessor {
  private static parse(input: string): ParsedTableConstraint {
    // Remove extra whitespace
    input = input.replace(/\s+/g, ' ');
    const lowerinput = input.toLowerCase();
    if (lowerinput.startsWith(ConstraintType.FK)) {
      return this.parseForeignKey(input);
    } else if (lowerinput.startsWith(ConstraintType.PK)) {
      return this.parsePrimaryKey(input);
    } else if (lowerinput.startsWith(ConstraintType.UNIQUE)) {
      return this.parseUnique(input);
    } else if (lowerinput.startsWith(ConstraintType.CHECK)) {
      return this.parseCheck(input);
    } else {
      throw new Error(`Invalid constraint. Please use only "CHECK", "PRIMARY KEY", "FOREIGN KEY" and "UNIQUE": ${input}`);
    }
  }

  private static parseForeignKey(input: string): ParsedTableConstraint {
    const regex = /foreign key\s?\((.*?)\) references (.*?)\((.*?)\)/i;
    const match = input.match(regex);

    if (!match || match.length !== 4) {
      throw new Error(`Invalid foreign key constraint format: ${input}`);
    }

    const [, columns, referencedTable, referencedColumns] = match;
    const columnNames = columns.split(',').map(col => col.trim());
    const refColumnNames = referencedColumns.split(',').map(col => col.trim());
    if (columnNames.length !== refColumnNames.length) {
      throw new Error(`Mismatch column: ${input}`);
    }
    return {
      type: ConstraintType.FK,
      columns: columnNames,
      referencedTable: referencedTable.trim(),
      referencedColumns: refColumnNames,
    };
  }

  private static parsePrimaryKey(input: string): ParsedTableConstraint {
    const regex = /primary key\s?\((.*?)\)/i;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      throw new Error(`Invalid primary key constraint format: ${input}`);
    }

    const [, columns] = match;

    return {
      type: ConstraintType.PK,
      columns: columns.split(',').map(col => col.trim()),
    };
  }

  private static parseUnique(input: string): ParsedTableConstraint {
    const regex = /unique\s?\((.*?)\)/i;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      throw new Error(`Invalid unique constraint format: ${input}`);
    }

    const [, columns] = match;

    return {
      type: ConstraintType.UNIQUE,
      columns: columns.split(',').map(col => col.trim()),
    };
  }

  private static parseCheck(input: string): ParsedTableConstraint {
    const regex = /check\s?\((.*?)\)/i;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      throw new Error(`Invalid check constraint format: ${input}`);
    }

    const [, checkCondition] = match;
    return {
      type: ConstraintType.CHECK,
      condition: checkCondition,
    };
  }

  public static parseConstraints(constraints: TableConstraint[]): ParsedTableConstraint[] {
    return constraints.map(constraint => {
      const { condition } = constraint;
      return this.parse(condition);
    });
  }
}