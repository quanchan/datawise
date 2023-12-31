import { RuntimeGenOptions, RuntimeTypesId, ValidColumnValue } from "@/types";
import dayjs from "dayjs";

export class ValuesGenerator {
  public static generateRandomInts(
    genOptions: RuntimeGenOptions,
    quantity: number
  ): string[] {
    let {
      minNumber,
      maxNumber,
      precision,
      minNumberInclusive,
      maxNumberInclusive,
      unique,
      primaryKey,
      serial,
      divisibleBy
    } = genOptions;
    precision = precision ? +precision! : 5;
    minNumber = minNumber !== undefined ? +minNumber! : -(10 ** precision! - 1);
    maxNumber = maxNumber !== undefined ? +maxNumber! : 10 ** precision! - 1;
    minNumber = minNumberInclusive ? minNumber : minNumber + 1;
    maxNumber = maxNumberInclusive ? maxNumber : maxNumber - 1;
    divisibleBy = divisibleBy ? +divisibleBy : 1;
    const randomInts: string[] = [];
    if (serial === "y") {
      minNumber = minNumber || 0;
      for (let i = 0; i < quantity; i++) {
        randomInts.push("" + (minNumber + divisibleBy * i));
      }
      return randomInts;
    }
    const minDivisible = Math.ceil(minNumber / divisibleBy) * divisibleBy;
    const maxDivisible = Math.floor(maxNumber / divisibleBy) * divisibleBy;
    const maxQuantity = (unique || primaryKey) ? Math.min(quantity, (maxDivisible - minDivisible) / divisibleBy + 1 ) : quantity;
    for (let i = 0; i < maxQuantity; i++) {
      const randomInt =
        Math.floor(Math.random() * ((maxDivisible - minDivisible) / divisibleBy + 1)) * divisibleBy +
        minDivisible;
      if ((unique || primaryKey) && randomInts.includes("" + randomInt) && randomInts.length < maxQuantity) {
        i--; // Retry if the number is already in the array
        continue;
      }
      randomInts.push("" + randomInt);
    }
    return randomInts;
  }

  public static generateRandomDecimals(
    genOptions: RuntimeGenOptions,
    quantity: number
  ): string[] {
    let {
      minNumber,
      maxNumber,
      scale,
      precision,
      maxNumberInclusive,
      minNumberInclusive,
      unique,
      primaryKey,
    } = genOptions;
    precision = precision ? +precision! : 5;
    scale = scale ? +scale! : 2;
    minNumber =
      minNumber !== undefined ? +minNumber! : -(10 ** (precision - scale) - 1);
    maxNumber =
      maxNumber !== undefined ? +maxNumber! : 10 ** (precision - scale) - 1;
    minNumber = minNumberInclusive ? minNumber : minNumber + 1 / 10 ** scale;
    maxNumber = maxNumberInclusive ? maxNumber : maxNumber - 1 / 10 ** scale;
    const randomDecimals: string[] = [];

    for (let i = 0; i < quantity; i++) {
      const randomDecimal = (
        Math.random() * (maxNumber - minNumber) +
        minNumber
      ).toFixed(scale);
      if ((unique || primaryKey) && randomDecimals.includes(randomDecimal)) {
        i--; // Retry if the date is excluded
        continue;
      }
      randomDecimals.push(randomDecimal);
    }

    return randomDecimals;
  }

  public static generateRandomPhoneFax(
    genOptions: RuntimeGenOptions,
    quantity: number
  ): string[] {
    const { phoneFaxFormat, unique, primaryKey } = genOptions;
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
      if ((unique || primaryKey) && randomPhoneFax.includes(phoneFax)) {
        i--; // Retry if the date is excluded
        continue;
      }
      randomPhoneFax.push(phoneFax);
    }

    return randomPhoneFax;
  }

  public static generateRandomDateTimes(
    genOptions: RuntimeGenOptions,
    quantity: number
  ): string[] {
    return this.generateRandomDateCore(genOptions, quantity, true);
  }

  public static generateRandomDates(
    genOptions: RuntimeGenOptions,
    quantity: number
  ): string[] {
    return this.generateRandomDateCore(genOptions, quantity);
  }

  public static generateRuntimeValues(
    typeid: RuntimeTypesId,
    genOptions: RuntimeGenOptions,
    quantity: number
  ) {
    switch (typeid) {
      case RuntimeTypesId.int:
        return this.generateRandomInts(genOptions, quantity);
      case RuntimeTypesId.decimal:
        return this.generateRandomDecimals(genOptions, quantity);
      case RuntimeTypesId.phonefax:
        return this.generateRandomPhoneFax(genOptions, quantity);
      case RuntimeTypesId.datetime:
        return this.generateRandomDateTimes(genOptions, quantity);
      case RuntimeTypesId.date:
        return this.generateRandomDates(genOptions, quantity);
      case RuntimeTypesId.regex:
        return this.generateRandomRegexString(genOptions, quantity);
      default:
        throw new Error(`Invalid typeid ${typeid}`);
    }
  }
  public static generateRandomRegexString(
    genOptions: RuntimeGenOptions,
    quantity: number
  ) {
    const { regex, unique, primaryKey } = genOptions;
    // sample format: +## (###) ###-####
    const randomStrings: string[] = [];
    let regexPattern = regex || "";
    for (let i = 0; i < quantity; i++) {
      let result = "";
      for (let j = 0; j < regexPattern.length; j++) {
        const char = regexPattern[j];
        if (char === "/") {
          // Handle simplified regex tokens
          const token = regexPattern.slice(j, j + 2);
          switch (token) {
            case "/w":
              result += Math.random().toString(36).slice(2, 3); // Random alphanumeric character
              break;
            case "/d":
              result += Math.floor(Math.random() * 10).toString(); // Random digit
              break;
            case "/W":
              result += Math.random().toString(36).slice(2, 3).toUpperCase(); // Random uppercase alphabetic character or digit
              break;
            case "/a":
              result += String.fromCharCode(
                Math.floor(Math.random() * 26) + 97
              ); // Random lowercase alphabetic character
              break;
            case "/A":
              result += String.fromCharCode(
                Math.floor(Math.random() * 26) + 65
              ); // Random uppercase alphabetic character
              break;
            default:
              j--;
              result += char; // Leave other characters unchanged
          }
          j++; // Skip the next character since it's part of the token
        } else {
          result += char; // Leave other characters unchanged
        }
      }
      if ((unique || primaryKey) && randomStrings.includes(result)) {
        i--; // Retry if the string are supposed to be unique
        continue;
      }
      randomStrings.push(result);
    }

    return randomStrings;
  }

  private static generateRandomDateCore(
    genOptions: RuntimeGenOptions,
    quantity: number,
    withTime: boolean = false
  ): string[] {
    const {
      minDate,
      maxDate,
      minDateInclusive,
      maxDateInclusive,
      unique,
      primaryKey,
    } = genOptions;
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
      if ((unique || primaryKey) && generatedDates.includes(formattedDate)) {
        i--; // Retry if the date is excluded
        continue;
      }
      generatedDates.push(formattedDate);
    }

    return generatedDates;
  }

  public static generateRandomValueFromGivenPool(
    pool: ValidColumnValue,
    genOptions: RuntimeGenOptions,
    quantity: number,
    canMapToItself: boolean
  ): ValidColumnValue {
    const { unique } = genOptions;
    const generatedValues: ValidColumnValue = [];
    const indices = this.generateRandomIndices(
      pool.length,
      quantity,
      unique,
      canMapToItself
    );
    for (const index of indices) {
      if (index === -1) {
        generatedValues.push("NULL");
        continue;
      }
      generatedValues.push(pool[index]);
    }
    return generatedValues;
  }

  public static generateRandomIndices(
    range: number,
    quantity: number,
    unique: boolean,
    canMapToItself: boolean
  ): number[] {
    const generatedIndexes: number[] = [];

    quantity = unique ? Math.min(quantity, range) : quantity;
    // Create an array from 0 to range - 1
    const pool = Array.from(Array(range).keys());
    if (unique && range == quantity) {
      // shuffle the pool
      for (let i = pool.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [pool[i], pool[j]] = [pool[j], pool[i]];
      }
      return pool;
    }

    for (let i = 0; i < quantity; i++) {
      let randomIndex;
      if (canMapToItself) {
        randomIndex = i == 0 ? -1 : Math.floor(Math.random() * i);
        generatedIndexes.push(randomIndex);
        continue;
      } else {
        randomIndex = Math.floor(Math.random() * range);
      }
      if (unique && generatedIndexes.includes(randomIndex)) {
        i--; // Retry if the index already exists
        continue;
      }
      generatedIndexes.push(randomIndex);
    }
    return generatedIndexes;
  }

  public static generateRandomUniqueIndices(range: number, quantity: number) {
    // To efficiently generate quantity unique indices within the range [0, range), we use the Fisher-Yates (or Knuth) shuffle algorithm.
    if (quantity === 0) {
      return [];
    }
    const indices = Array(range)
      .fill(0)
      .map((_, i) => i);
    for (let i = range - 1; i >= range - quantity; i--) {
      const randomIndex = Math.floor(Math.random() * (i + 1));
      // Swap the random index with the current index
      [indices[i], indices[randomIndex]] = [indices[randomIndex], indices[i]];
    }

    return indices.slice(-quantity);
  }
}
