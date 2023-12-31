import type { NextApiRequest, NextApiResponse } from "next";

import { Type } from "@/types";
import { TypeProvider } from "@/server/TypeProvider";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<Type[]>
) {
  if (req.method == "GET") {
    const types = await TypeProvider.getAllTypes();
    res.status(200).json(types);
  }
}
