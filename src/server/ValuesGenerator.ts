import { RuntimeGenOptions, RuntimeTypesId } from "@/types";
import dayjs from "dayjs";


export class ValuesGenerator {
  public static generateRandomInts(
    genOptions: RuntimeGenOptions,
    quantity: number
  ): string[] {
    let { minNumber, maxNumber, precision } = genOptions;
    precision = precision ? +precision! : 5;
    minNumber = minNumber !== "" ? +minNumber! : -(10 ** (precision!) - 1);
    maxNumber = maxNumber !== "" ? +maxNumber! : 10 ** (precision!) - 1;
    
    const randomInts: string[] = [];
    
    for (let i = 0; i < quantity; i++) {
      const randomInt =
        Math.floor(Math.random() * (maxNumber - minNumber + 1)) + minNumber;
      if ((genOptions.unique || genOptions.primaryKey) && randomInts.includes("" + randomInt)) {
        i--; // Retry if the date is excluded
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
    let { minNumber, maxNumber, scale, precision } = genOptions;
    precision = precision ? +precision! : 5;
    scale = scale ? +scale! : 2;
    minNumber = minNumber !== "" ? +minNumber! : -(10 ** (precision - scale) - 1);
    maxNumber = maxNumber !== "" ? +maxNumber! : 10 ** (precision - scale) - 1;
    
    const randomDecimals: string[] = [];

    for (let i = 0; i < quantity; i++) {
      const randomDecimal = (
        Math.random() * (maxNumber - minNumber) +
        minNumber
      ).toFixed(scale);
      if ((genOptions.unique || genOptions.primaryKey) && randomDecimals.includes(randomDecimal)) {
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
      if ((genOptions.unique || genOptions.primaryKey) && randomPhoneFax.includes(phoneFax)) {
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

  public static generateRuntimeValues(typeid: RuntimeTypesId, genOptions: RuntimeGenOptions, quantity: number) {
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
    default:
      throw new Error(`Invalid typeid ${typeid}`);
    }
  }

  private static generateRandomDateCore(
    genOptions: RuntimeGenOptions,
    quantity: number,
    withTime: boolean = false
  ): string[] {
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
      if ((genOptions.unique || genOptions.primaryKey) && generatedDates.includes(formattedDate)) {
        i--; // Retry if the date is excluded
        continue;
      }
      generatedDates.push(formattedDate);
    }

    return generatedDates;
  }


}