import { Format } from "@/types";
import { MySQLTypeMap, OracleSQLTypeMap, TypeMap } from "@/types/sql";
export class TypeProcessor {
  private _type: string;
  private _args: string[];
  constructor(type: string = "") {
    type = type.replace("(", ",").replace(")", "");
    const [typeString, ...args] = type.split(",");
    this._type = typeString;
    this._args = args;
  }

  public get typeSQL(): string {
    return TypeProcessor.getDisplayType(this._type, this._args);
  }

  public get type(): string {
    return this._type;
  }

  public get args(): string[] {
    return this._args;
  }

  public set type(t: string) {
    this._type = t;
  }

  public set args(a: string[]) {
    this._args = a;
  }

  public getSQLType(format: Format) {
    switch (format) {
      case Format.MySQL:
        return this._getMySQLType();
      case Format.OracleSQL:
        return this._getOracleSQLType();
    } 
  }

  private _getMySQLType(): string {
    const tm = MySQLTypeMap;
    return tm[this._type as keyof TypeMap].toUpperCase();
  }

  private _getOracleSQLType(): string {
    const tm = OracleSQLTypeMap;
    return tm[this._type as keyof TypeMap].toUpperCase();
  }

  public static getDisplayType(type: string, args: string[]): string {
    if (args.length > 0) {
      return `${type}(${args.join(", ")})`;
    }
    return type;
  }

}