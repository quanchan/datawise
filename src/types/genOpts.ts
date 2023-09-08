export type GenOptions = {
  actualType: string,
  maxLength?: number,
  minNumber?: number,
  maxNumber?: number,
  precision?: number,
  scale?: number,
  phoneFaxFormat?: string,
  emailFormat?: string,
  minDate?: Date,
  maxDate?: Date,
  excluded?: string[],
  withEntity?: boolean,
  nullPercent?: number,
  wordCasing?: string,
  stringFormat?: string,
  distribution?: string,
  time?: boolean,

}

export type AllowedGenOptions = Record<string, (keyof GenOptions)[]>;

export const allowedGenOptions: AllowedGenOptions = {
  entityVarchar: ["actualType", "excluded", "wordCasing", "maxLength", "nullPercent", "withEntity"],
  entityNumber: ["actualType", "excluded", "minNumber", "maxNumber", "nullPercent", "withEntity"],
  randomInt: ["actualType", "minNumber", "maxNumber", "nullPercent", "precision", "minNumber", "maxNumber", "distribution"],
  randomDecimal: ["actualType", "minNumber", "maxNumber", "nullPercent", "precision", "scale", "minNumber", "maxNumber", "distribution"],
  randomDate: ["actualType", "minDate", "maxDate", "nullPercent"],
  randomDateTime: ["actualType", "minDate", "maxDate", "nullPercent", "time"],
  randomPhoneFax: ["actualType", "phoneFaxFormat", "nullPercent"],
} 

