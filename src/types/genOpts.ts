export type GenOptions = {
  actualType: string,
  maxLength?: number,
  minNumber?: number,
  minNumberInclusive?: boolean,
  maxNumber?: number,
  maxNumberInclusive?: boolean,
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
  entityNumber: ["actualType", "excluded", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive", "nullPercent", "precision", "scale", "withEntity"],
  randomInt: ["actualType", "minNumber", "maxNumber", "nullPercent", "precision", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive", "distribution"],
  randomDecimal: ["actualType", "minNumber", "maxNumber", "nullPercent", "precision", "scale", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive", "distribution"],
  randomDate: ["actualType", "minDate", "maxDate", "nullPercent"],
  randomDateTime: ["actualType", "minDate", "maxDate", "nullPercent", "time"],
  randomPhoneFax: ["actualType", "phoneFaxFormat", "nullPercent"],
} 

export enum WordCasing {
  original = "original",
  lower = "lower",
  upper = "upper",
  capital = "capital",
  first = "first",
}

export const WordCasingOptions = [
  { value: WordCasing.original, label: "Original" },
  { value: WordCasing.lower, label: "Lowercase" },
  { value: WordCasing.upper, label: "Uppercase" },
  { value: WordCasing.capital, label: "All words capitalization" },
  { value: WordCasing.first, label: "First word capitalization" },
];