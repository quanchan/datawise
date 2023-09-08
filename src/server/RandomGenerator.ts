import { GenOptions } from "@/types";

export class RandomGenerator {
  public static generateRandomInts(genOptions: GenOptions, quantity: number): number[] {
    const { minNumber, maxNumber } = genOptions;
    const randomInts: number[] = [];
    for (let i = 0; i < quantity; i++) {
      const randomInt = Math.floor(Math.random() * (maxNumber! - minNumber! + 1)) + minNumber!;
      randomInts.push(randomInt);
    }
    return randomInts;
  }

  public static generateRandomDecimals(genOptions: GenOptions, quantity: number): number[] {
    const { minNumber, maxNumber, scale } = genOptions;
    const randomDecimals: number[] = [];
    for (let i = 0; i < quantity; i++) {
      const randomDecimal = (Math.random() * (maxNumber! - minNumber!) + minNumber!).toFixed(scale);
      randomDecimals.push(randomDecimal);
    }
    return randomDecimals;
  }

  public static generateRandomPhoneFax(genOptions: GenOptions, quantity: number): string[] {
    const { phoneFaxFormat } = genOptions;
    // sample format: +## (###) ###-####
    const randomPhoneFax: string[] = [];
    for (let i = 0; i < quantity; i++) {
      let phoneFax = phoneFaxFormat || "";
      for (let j = 0; j < phoneFax.length; j++) {
        if (phoneFax[j] === "#") {
          phoneFax = phoneFax.replace("#", Math.floor(Math.random() * 10).toString());
        }
      }
      randomPhoneFax.push(phoneFax);
    }
    return randomPhoneFax;
  }
}