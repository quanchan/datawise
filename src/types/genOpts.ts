export type GenOptions = {
  actualType: string,
  maxLength?: number,
  minNumber?: number | string,
  minNumberInclusive?: boolean,
  maxNumber?: number | string,
  maxNumberInclusive?: boolean,
  precision?: number,
  scale?: number,
  phoneFaxFormat?: string,
  emailFormat?: string,
  minDate?: string,
  minDateInclusive?: boolean,
  maxDate?: string,
  maxDateInclusive?: boolean,
  excluded?: string[],
  withEntity?: string,
  nullPercent?: number,
  wordCasing?: string,
  stringFormat?: string,
  distribution?: string,
  time?: boolean,
}

export const defaultGenOptions: GenOptions = {
  actualType: "",
  excluded: [],
}

export type AllowedGenOptions = Record<string, (keyof GenOptions)[]>;

export const AllowedGenOptionsMap: AllowedGenOptions = {
  entityVarchar: ["actualType", "excluded", "wordCasing", "maxLength", "nullPercent", "withEntity"],
  entityNumber: ["actualType", "excluded", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive", "nullPercent", "precision", "scale", "withEntity"],
  randomInt: ["actualType", "minNumber", "maxNumber", "nullPercent", "precision", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive", "distribution"],
  randomDecimal: ["actualType", "minNumber", "maxNumber", "nullPercent", "precision", "scale", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive", "distribution"],
  randomDate: ["actualType", "minDate", "maxDate", "minDateInclusive", "maxDateInclusive","nullPercent"],
  randomDateTime: ["actualType", "minDate", "maxDate", "minDateInclusive", "maxDateInclusive", "nullPercent", "time"],
  randomPhoneFax: ["actualType", "phoneFaxFormat", "nullPercent"],
  foreignKey: ["nullPercent"],
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

export const YesNoOptions = [
  { value: 'y', label: "Yes" },
  { value: 'n', label: "No" },
];