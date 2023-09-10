import type { NextApiRequest, NextApiResponse } from "next";

import { CustomType, Type } from "@/types";
import { TypeProvider } from "@/server/TypeProvider";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method == "POST") {
    const newType = req.body as CustomType;
    await TypeProvider.createType(newType);
    res.status(200);
  }
}