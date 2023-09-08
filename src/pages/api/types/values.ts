import type { NextApiRequest, NextApiResponse } from "next";
import db from "@/db";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<string[]>
) {
  if (req.method == "GET") {
    const { table, column } = req.query;
    console.log(req.body)
    if (table && column) {
      const result = await db.query<string[]>(`SELECT ${column} FROM ${table};`);
      const values = result.map((row) => row[column as string]);
      res.status(200).json(values);
    }
  }
}
