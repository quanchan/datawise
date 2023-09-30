import { ConstraintType, ParsedTableConstraint, TableConstraint } from "@/types";

export class ConstraintProcessor {
  private static parse(input: string): ParsedTableConstraint | undefined {
    // Lowercase and remove extra whitespace
    input = input.toLowerCase().replace(/\s+/g, ' ');
    if (input.startsWith(ConstraintType.FK)) {
      return this.parseForeignKey(input);
    } else if (input.startsWith(ConstraintType.PK)) {
      return this.parsePrimaryKey(input);
    } else if (input.startsWith(ConstraintType.UNIQUE)) {
      return this.parseUnique(input);
    } else if (input.startsWith(ConstraintType.CHECK)) {
      return this.parseCheck(input);
    } else {
      return; // Invalid input
    }
  }

  private static parseForeignKey(input: string): ParsedTableConstraint | undefined {
    const regex = /foreign key\((.*?)\) references (.*?)\((.*?)\)/;
    const match = input.match(regex);

    if (!match || match.length !== 4) {
      return; // Invalid foreign key constraint format
    }

    const [, columns, referencedTable, referencedColumns] = match;
    const columnNames = columns.split(',').map(col => col.trim());
    const refColumnNames = referencedColumns.split(',').map(col => col.trim());
    if (columnNames.length !== refColumnNames.length) {
      return; // Invalid foreign key constraint format
    }
    return {
      type: ConstraintType.FK,
      columns: columnNames,
      referencedTable,
      referencedColumns: refColumnNames,
    };
  }

  private static parsePrimaryKey(input: string): ParsedTableConstraint | undefined {
    const regex = /primary key\((.*?)\)/;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      return; // Invalid primary key constraint format
    }

    const [, columns] = match;

    return {
      type: ConstraintType.PK,
      columns: columns.split(',').map(col => col.trim()),
    };
  }

  private static parseUnique(input: string): ParsedTableConstraint | undefined {
    const regex = /unique\((.*?)\)/;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      return; // Invalid unique constraint format
    }

    const [, columns] = match;

    return {
      type: ConstraintType.UNIQUE,
      columns: columns.split(',').map(col => col.trim()),
    };
  }

  private static parseCheck(input: string): ParsedTableConstraint | undefined {
    const regex = /check\((.*?)\)/;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      return; // Invalid unique constraint format
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
      const parsedConstraint = this.parse(condition);
      if (!parsedConstraint) {
        // Ignore this error
        return;
      }
      return parsedConstraint;
    }).filter(constraint => constraint) as ParsedTableConstraint[];
  }
}