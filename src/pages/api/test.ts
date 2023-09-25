import type { NextApiRequest, NextApiResponse } from "next";

import { Type } from "@/types";
import { ValuesProvider } from "@/server/ValuesProvider";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method == "GET") {
    const datetime = ValuesProvider.generateRandomDates({
      minDate: "2022-01-01",
      maxDate: "2020-01-01",
      maxDateInclusive: true,
      minDateInclusive: true,
    }, 10);
    res.status(200).json(datetime);
  }
}
