import { GenOptions, WordCasing, allowedGenOptions } from "@/types";
import { TypeProvider } from "./TypeProvider";
import db from "@/db";
import dayjs from "dayjs";

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
   return this.generateRandomDateCore(genOptions, quantity, true);
  }

  public static generateRandomDates(
    genOptions: GenOptions,
    quantity: number
  ): string[] {
    return this.generateRandomDateCore(genOptions, quantity);
  }

  private static generateRandomDateCore(
    genOptions: GenOptions,
    quantity: number,
    withTime: boolean = false
  ) {
    const { minDate, maxDate, minDateInclusive, maxDateInclusive } = genOptions;
    let minDateObj: Date | undefined;
    let maxDateObj: Date | undefined;
    const format = withTime ? "YYYY-MM-DD hh:mm:ss" : "YYYY-MM-DD";
    if (minDate) {
      minDateObj = new Date(minDate);
      if (isNaN(minDateObj.getTime())) {
        throw new Error(
          `Invalid minDate format. Date should be in the format "${format}".`
        );
      }
    }
    if (maxDate) {
      maxDateObj = new Date(maxDate);
      if (isNaN(maxDateObj.getTime())) {
        throw new Error(
          `Invalid maxDate format. Date should be in the format "${format}".`
        );
      }
    }
    const generatedDates: string[] = [];

    for (let i = 0; i < quantity; i++) {
      let randomDate: Date;

      if (minDateObj && maxDateObj) {
        // Generate a random timestamp within the date range
        const timestamp =
          minDateObj.getTime() +
          Math.random() * (maxDateObj.getTime() - minDateObj.getTime());

        // Convert the timestamp to a Date object
        randomDate = new Date(timestamp);

        // Include or exclude the minDate and maxDate based on minDateInclusive and maxDateInclusive
        if (
          (!minDateInclusive && randomDate <= minDateObj) ||
          (!maxDateInclusive && randomDate >= maxDateObj)
        ) {
          i--; // Retry if the date is excluded
          continue;
        }
      } else {
        // Generate a completely random date without bounds
        const year = 1970 + Math.floor(Math.random() * 100);
        const month = Math.floor(Math.random() * 12);
        const day = Math.floor(Math.random() * 31) + 1; // Adding 1 to avoid day 0
        if (withTime) {
          const hours = Math.floor(Math.random() * 24);
          const minutes = Math.floor(Math.random() * 60);
          const seconds = Math.floor(Math.random() * 60);
          randomDate = new Date(year, month, day, hours, minutes, seconds);
        } else {
          randomDate = new Date(year, month, day);
        }
      }
      const dayjsDate = dayjs(randomDate);

      // Format the date as 'YYYY-MM-DD' and push it to the result array
      const formattedDate = dayjsDate.format(format);
      generatedDates.push(formattedDate);
    }

    return generatedDates;
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
      const allowedGenOpts = allowedGenOptions[columnMeta.gen_opts_name!];
      const {
        excluded,
        wordCasing,
        minNumber,
        minNumberInclusive,
        maxNumberInclusive,
        maxNumber,
      } = genOptions;

      if (allowedGenOpts.includes("excluded")) {
        values = values.filter(
          (value) => !excluded?.includes(value.toString())
        );
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
            values = values.map((value) =>
              value.replace(/\w\S*/g, (w: string) =>
                w.replace(/^\w/, (c) => c.toUpperCase())
              )
            );
            break;
          case WordCasing.first:
            values = values.map((value) =>
              value.replace(/^\w/, (c: string) => c.toUpperCase())
            );
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

  public static async getAllValues(column: string, table: string) {
    const result = await db.query<Record<string, string | number>[]>(
      `SELECT ${column} FROM ${table};`
    );
    const values = result.map((row) => row[column as string]);
    return values;
  }
}
