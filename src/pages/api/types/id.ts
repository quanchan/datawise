import type { NextApiRequest, NextApiResponse } from "next";

import { Type } from "@/types";
import { TypeProvider } from "@/server/TypeProvider";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<Type | undefined>
) {
  if (req.method == "GET") {
    const { id } = req.query;
    const types = await TypeProvider.getTypeById(id as string);
    res.status(200).json(types);
  }
}
