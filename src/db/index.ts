import { Pool, QueryArrayConfig, QueryConfig } from "pg";
const pool = new Pool({
  password: process.env.DATABASE_PASSWORD,
  user: process.env.DATABASE_USERNAME,
  database: process.env.DATABASE_NAME,
  max: 5,
  idleTimeoutMillis: 30000,
  connectionTimeoutMillis: 2000,
});

async function query<I extends any[]>(
  config: string | QueryConfig<I> | QueryArrayConfig<I>,
  values?: I
) {
  const start = Date.now();
  const res = await pool.query(config, values);
  const duration = Date.now() - start;
  console.log("executed query", { text: config, duration, rows: res.rowCount });
  return res.rows;
}

const db = { query }
export default db;