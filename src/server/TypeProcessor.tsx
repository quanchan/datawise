export class TypeProcessor {
  private _type: string;
  private _args: string[];
  constructor(type: string) {
    const [typeString, ...args] = type.split(".");
    this._type = typeString.toUpperCase();
    this._args = args;
  }

  public get typeSQL(): string {
    if (this._args.length > 0) {
      return `${this._type}(${this._args.join(", ")})`;
    }
    return this._type;
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


}