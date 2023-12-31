import { Format } from "@/types";
import { MySQLTypeMap, NeedQuoteWrap, OracleSQLTypeMap, TypeMap } from "@/types/sql";
export class TypeProcessor {
  private _type: keyof TypeMap;
  private _args: string[];
  constructor(type: string = "") {
    type = type.replace("(", ",").replace(")", "");
    const [typeString, ...args] = type.split(",");
    this._type = typeString as keyof TypeMap;
    this._args = args;
  }

  public get typeSQL(): string {
    return TypeProcessor.getDisplayType(this._type, this._args);
  }

  public get type(): string {
    return this._type;
  }

  public get needQuoteWrap(): boolean {
    return NeedQuoteWrap[this._type as keyof TypeMap];
  }

  public get args(): string[] {
    return this._args;
  }

  public set type(t: keyof TypeMap) {
    this._type = t;
  }

  public set args(a: string[]) {
    this._args = a;
  }

  // Map our arbitrary type to an actual SQL type of the given format
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
    const raw = tm[this._type as keyof TypeMap];
    if (!raw) {
      throw new Error(`Invalid type ${this._type}`);
    }
    return raw.toUpperCase();
  }

  private _getOracleSQLType(): string {
    const tm = OracleSQLTypeMap;
    const raw = tm[this._type as keyof TypeMap];
    if (!raw) {
      throw new Error(`Invalid type ${this._type}`);
    }
    return raw.toUpperCase();  }

  // Static method to make the type presentable
  public static getDisplayType(type: string, args: string[]): string {
    type = type.toUpperCase();
    if (args.length > 0) {
      return `${type}(${args.join(", ")})`;
    }
    return type;
  }

}