import type { NextApiRequest, NextApiResponse } from "next";
import { Format, Tables, Type } from "@/types";
import { MySQLGenerator, OracleSQLGenerator } from "@/server/sqlGenerator";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<string>
) {
  if (req.method == "POST") {
    const schema = req.body as Tables;
    const { tables, format } = schema;
    let sql = ""
    switch (format) {
      case Format.MySQL:
        sql = await MySQLGenerator.generateAllTables(tables);
        break;
      case Format.OracleSQL:
        sql = await OracleSQLGenerator.generateAllTables(tables);
        break;
      }
      res.status(200).send(sql);
    }
}