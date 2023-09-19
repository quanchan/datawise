import { GenOptions, WordCasing, allowedGenOptions } from "@/types";
import { TypeProvider } from "./TypeProvider";
import db from "@/db";

export class ValuesProvider {
  public static generateRandomInts(
    genOptions: GenOptions,
    quantity: number
  ): number[] {
    const { minNumber, maxNumber } = genOptions;
    const randomInts: number[] = [];
    for (let i = 0; i < quantity; i++) {
      const randomInt =
        Math.floor(Math.random() * (maxNumber! - minNumber! + 1)) + minNumber!;
      randomInts.push(randomInt);
    }
    return randomInts;
  }

  public static generateRandomDecimals(
    genOptions: GenOptions,
    quantity: number
  ): number[] {
    const { minNumber, maxNumber, scale } = genOptions;
    const randomDecimals: number[] = [];
    for (let i = 0; i < quantity; i++) {
      const randomDecimal = (
        Math.random() * (maxNumber! - minNumber!) +
        minNumber!
      ).toFixed(scale);
      randomDecimals.push(randomDecimal);
    }
    return randomDecimals;
  }

  public static generateRandomPhoneFax(
    genOptions: GenOptions,
    quantity: number
  ): string[] {
    const { phoneFaxFormat } = genOptions;
    // sample format: +## (###) ###-####
    const randomPhoneFax: string[] = [];
    for (let i = 0; i < quantity; i++) {
      let phoneFax = phoneFaxFormat || "";
      for (let j = 0; j < phoneFax.length; j++) {
        if (phoneFax[j] === "#") {
          phoneFax = phoneFax.replace(
            "#",
            Math.floor(Math.random() * 10).toString()
          );
        }
      }
      randomPhoneFax.push(phoneFax);
    }
    return randomPhoneFax;
  }

  public static generateRandomDateTimes(
    genOptions: GenOptions,
    quantity: number
  ) {
    // TODO: Implement
  }

  public static generateRandomDates(genOptions: GenOptions, quantity: number) {
    // TODO: Implement
  }

  public static async getValidValues(
    typeid: string,
    genOptions: GenOptions,
    quantity: number
  ) {
    switch (typeid) {
      case "int":
        return this.generateRandomInts(genOptions, quantity);
      case "decimal":
        return this.generateRandomDecimals(genOptions, quantity);
      case "phonefax":
        return this.generateRandomPhoneFax(genOptions, quantity);
      case "datetime":
        return this.generateRandomDateTimes(genOptions, quantity);
      case "date":
        return this.generateRandomDates(genOptions, quantity);
    }
    const columnMeta = await TypeProvider.getColumnMetaById(typeid);
    if (columnMeta) {
      const { column_name, entity_meta_table } = columnMeta;
      let values = await this.getAllValues(column_name, entity_meta_table);
      const allowedGenOpts = allowedGenOptions[columnMeta.gen_opts_name!]
      const { excluded, wordCasing, minNumber, minNumberInclusive, maxNumberInclusive, maxNumber } = genOptions;

      if (allowedGenOpts.includes("excluded")) {
        values = values.filter((value) => !excluded?.includes(value.toString()));
      }
      if (allowedGenOpts.includes("wordCasing")) {
        switch (wordCasing) {
          case WordCasing.lower:
            values = values.map((value) => value.toLowerCase());
            break;
          case WordCasing.upper:
            values = values.map((value) => value.toUpperCase());
            break;
          case WordCasing.capital:
            values = values.map((value) => value.replace(/\w\S*/g, (w: string) => (w.replace(/^\w/, (c) => c.toUpperCase()))));
            break;
          case WordCasing.first:
            values = values.map((value) => value.replace(/^\w/, (c: string) => c.toUpperCase()));
            break;
        }
        if (allowedGenOpts.includes("minNumber")) {
          if (minNumber) {
            if (minNumberInclusive) {
              values = values.filter((value) => value >= minNumber);
            } else {
              values = values.filter((value) => value > minNumber);
            }
          }
        }
        if (allowedGenOpts.includes("maxNumber")) {
          if (maxNumber) {
            if (maxNumberInclusive) {
              values = values.filter((value) => value <= maxNumber);
            } else {
              values = values.filter((value) => value < maxNumber);
            }
          }
        }
        
      }
    }
  }

  public static async getAllValues(
    column: string,
    table: string,
  ) {
    const result = await db.query<Record<string, string | number>[]>(`SELECT ${column} FROM ${table};`);
    const values = result.map((row) => row[column as string]);
    return values;
  }
}
