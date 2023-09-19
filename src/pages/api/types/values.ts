import type { NextApiRequest, NextApiResponse } from "next";
import { ValuesProvider } from "@/server/ValuesProvider";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<(string | number)[]>
) {
  if (req.method == "GET") {
    const { column, table } = req.query;
    if (column && table) {
      const values = await ValuesProvider.getAllValues(column as string, table as string);
      res.status(200).json(values);
    }
  }
}
