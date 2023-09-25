import { ConstraintType } from "@/types";

export class ConstraintProcessor {
  public static parse(input: string): object | null {
    // Lowercase and remove extra whitespace
    input.toLowerCase().replace(/\s+/g, ' ');
    if (input.startsWith(ConstraintType.FK)) {
      return this.parseForeignKey(input);
    } else if (input.startsWith(ConstraintType.PK)) {
      return this.parsePrimaryKey(input);
    } else if (input.startsWith(ConstraintType.UNIQUE)) {
      return this.parseUnique(input);
    } else if (input.startsWith(ConstraintType.CHECK)) {
      return this.parseCheck(input);
    } else {
      return null; // Invalid input
    }
  }

  private static parseForeignKey(input: string): object | null {
    const regex = /foreign key\((.*?)\) references (.*?)\((.*?)\)/;
    const match = input.match(regex);

    if (!match || match.length !== 4) {
      return null; // Invalid foreign key constraint format
    }

    const [, columns, referencedTable, referencedColumns] = match;
    
    return {
      type: ConstraintType.FK,
      columns: columns.split(',').map(col => col.trim()),
      referencedTable,
      referencedColumns: referencedColumns.split(',').map(col => col.trim()),
    };
  }

  private static parsePrimaryKey(input: string): object | null {
    const regex = /primary key\((.*?)\)/;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      return null; // Invalid primary key constraint format
    }

    const [, columns] = match;

    return {
      type: ConstraintType.PK,
      columns: columns.split(',').map(col => col.trim()),
    };
  }

  private static parseUnique(input: string): object | null {
    const regex = /unique\((.*?)\)/;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      return null; // Invalid unique constraint format
    }

    const [, columns] = match;

    return {
      type: ConstraintType.UNIQUE,
      columns: columns.split(',').map(col => col.trim()),
    };
  }

  private static parseCheck(input: string): object | null {
    const regex = /check\((.*?)\)/;
    const match = input.match(regex);

    if (!match || match.length !== 2) {
      return null; // Invalid unique constraint format
    }

    const [, checkCondition] = match;
    return {
      type: ConstraintType.CHECK,
      condition: checkCondition,
    };
  }
}