import type { NextApiRequest, NextApiResponse } from "next";
import db from "@/db";
import { TypeProvider } from "@/server/TypeProvider";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<(string | number)[]>
) {
  if (req.method == "GET") {
    const { column, table } = req.query;
    if (column && table) {
      const result = await db.query<Record<string, string | number>[]>(`SELECT ${column} FROM ${table};`);
      const values = result.map((row) => row[column as string]);
      res.status(200).json(values);
    }
  }
}
