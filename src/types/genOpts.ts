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
  minDate?: string,
  minDateInclusive?: boolean,
  maxDate?: string,
  maxDateInclusive?: boolean,
  excluded?: string[],
  withEntity?: string,
  nullPercent?: number,
  wordCasing?: string,
  stringFormat?: string,
  time?: boolean,
  serial?: string,
  emailDomain?: string,
  justUsername?: string,
  regex?: string,
  divisibleBy?: number,
}

export const defaultGenOptions: GenOptions = {
  actualType: "",
  excluded: [],
}

export type AllowedGenOptions = Record<string, (keyof GenOptions)[]>;

export const AllowedGenOptionsMap: AllowedGenOptions = {
  entityVarchar: ["actualType", "excluded", "wordCasing", "maxLength", "nullPercent", "withEntity"],
  entityNumber: ["actualType", "excluded", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive", "nullPercent", "precision", "scale", "withEntity", "divisibleBy"],
  entityEmail: ["actualType", "excluded", "maxLength", "emailFormat", "emailDomain", "nullPercent", "withEntity", "emailDomain", "justUsername"],
  randomInt: ["actualType", "minNumber", "maxNumber", "nullPercent", "precision", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive", "serial", "divisibleBy"],
  randomDecimal: ["actualType", "minNumber", "maxNumber", "nullPercent", "precision", "scale", "minNumber", "maxNumber", "minNumberInclusive", "maxNumberInclusive"],
  randomDate: ["actualType", "minDate", "maxDate", "minDateInclusive", "maxDateInclusive","nullPercent"],
  randomDateTime: ["actualType", "minDate", "maxDate", "minDateInclusive", "maxDateInclusive", "nullPercent", "time"],
  randomPhoneFax: ["actualType", "maxLength", "phoneFaxFormat", "nullPercent"],
  randomRegex: ["actualType", "maxLength", "regex", "nullPercent"],
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