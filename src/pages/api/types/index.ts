import type { NextApiRequest, NextApiResponse } from "next";
import db from "@/db";
import { column_meta as cm, entity_meta as em } from "@/db/schema";
import { Type } from "@/types";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<Type[]>
) {
  if (req.method == "GET") {
    const types = await db.query<Type[]>(`
      SELECT 
        ${cm.n_id} as id, 
        ${cm.n_display_name} as display_name, 
        ${cm.n_description} as description, 
        ${cm.n_example} as example, 
        ${cm.n_data_type} as data_type,
        ${em.n_display_name} as entity_display_name,
        ${em.n_standalone} as standalone,
        ${em.n_custom} as custom
      FROM ${cm.n}
      JOIN ${em.n} 
      ON ${cm.n_entity_meta_id} = ${em.n_id};
    `);
    res.status(200).json(types);
  }
}
