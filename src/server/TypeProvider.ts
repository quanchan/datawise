import db from "@/db";
import {
  ColumnMeta,
  CustomType,
  RuntimeTypesId,
  Type,
  AllowedGenOptionsMap,
  SpecialTypesId,
} from "@/types";
import { column_meta as cm, entity_meta as em } from "@/db/schema";
export class TypeProvider {
  private static runtimeTypes: Type[] = [
    {
      id: RuntimeTypesId.int,
      display_name: "Random Integer",
      description:
        "Random integer generated with user-defined options. Can be used to generate serial primary keys.",
      example: "1, 2, 3, 4, 5",
      data_type: "number",
      gen_opts_name: "randomInt",
      column_name: "",
      entity_display_name: "",
      entity_meta_table: "",
      standalone: true,
      custom: false,
    },
    {
      id: RuntimeTypesId.decimal,
      display_name: "Random Decimal",
      description: "Random decimal generated with user-defined options",
      example: "1.23, 4.56, 7.89",
      data_type: "number",
      gen_opts_name: "randomDecimal",
      column_name: "",
      entity_display_name: "",
      entity_meta_table: "",
      standalone: true,
      custom: false,
    },
    {
      id: RuntimeTypesId.datetime,
      display_name: "Random Datetime",
      description: "Random datetime generated with user-defined options",
      example: "2021-01-01 00:00:00",
      data_type: "datetime",
      gen_opts_name: "randomDateTime",
      column_name: "",
      entity_display_name: "",
      entity_meta_table: "",
      standalone: true,
      custom: false,
    },
    {
      id: RuntimeTypesId.date,
      display_name: "Random Date",
      description: "Random date generated with user-defined options",
      example: "2021-01-01",
      data_type: "datetime",
      gen_opts_name: "randomDate",
      column_name: "",
      entity_display_name: "",
      entity_meta_table: "",
      standalone: true,
      custom: false,
    },
    {
      id: RuntimeTypesId.phonefax,
      display_name: "Random Phone/Fax",
      description: "Random phone/fax generated with user-defined options",
      example: "+81 3 1234 5678",
      data_type: "varchar(255)",
      gen_opts_name: "randomPhoneFax",
      column_name: "",
      entity_display_name: "",
      entity_meta_table: "",
      standalone: true,
      custom: false,
    },
    {
      id: RuntimeTypesId.regex,
      display_name: "Random String w/ Regex",
      description:
        "Random string generated using Simplified Regex. Can be used to generate unique id, email addresses, barcode, etc.",
      example: "ABC-123, 1234567890, 2021-01-01",
      data_type: "varchar(255)",
      gen_opts_name: "randomRegex",
      column_name: "",
      entity_display_name: "",
      entity_meta_table: "",
      standalone: true,
      custom: false,
    },
  ];

  public static foreignKey = {
    id: SpecialTypesId.foreignKey,
    display_name: "Foreign Key",
    description:
      "A placeholder type so you can write your own Foreign Key Constraint using this field in the Constraint Editor.",
    example: "",
    data_type: "foreignKey",
    gen_opts_name: "foreignKey",
    column_name: "",
    entity_display_name: "",
    entity_meta_table: "",
    standalone: true,
    custom: false,
  };

  public static isRuntimeTypeId(typeid: string): boolean {
    return Object.values(RuntimeTypesId).includes(typeid as RuntimeTypesId);
  }

  public static isForeignKey(typeid: string): boolean {
    return typeid === SpecialTypesId.foreignKey;
  }

  private static addGenOptsToType(type?: Type): Type | undefined {
    if (!type) {
      return type;
    }
    return {
      ...type,
      gen_opts: type.gen_opts_name
        ? AllowedGenOptionsMap[type.gen_opts_name]
        : [],
    };
  }

  public static async getAllTypes(): Promise<Type[]> {
    const types = await db.query<Type[]>(`
    SELECT 
      ${cm.n_id} as id, 
      ${cm.n_display_name} as display_name, 
      ${cm.n_description} as description, 
      ${cm.n_example} as example, 
      ${cm.n_data_type} as data_type,
      ${cm.n_column_name} as column_name,
      ${cm.n_gen_opts_name} as gen_opts_name,
      ${em.n_display_name} as entity_display_name,
      ${em.n_table_name} as entity_meta_table,
      ${em.n_standalone} as standalone,
      ${em.n_custom} as custom
    FROM ${cm.n}
    JOIN ${em.n} 
    ON ${cm.n_entity_meta_table} = ${em.n_table_name};
    `);
    const allTypes = [...types, this.foreignKey, ...this.runtimeTypes];
    return allTypes.map((type: Type) => this.addGenOptsToType(type) as Type);
  }

  public static async getTypeById(id?: string): Promise<Type | undefined> {
    if (!id) {
      return undefined;
    }
    try {
      let type = [...this.runtimeTypes, this.foreignKey].find(
        (type) => type.id === id
      );
      if (!type) {
        const types = await db.query<Type[]>(`
        SELECT 
          ${cm.n_id} as id, 
          ${cm.n_display_name} as display_name, 
          ${cm.n_description} as description, 
          ${cm.n_example} as example, 
          ${cm.n_data_type} as data_type,
          ${cm.n_column_name} as column_name,
          ${cm.n_gen_opts_name} as gen_opts_name,
          ${em.n_display_name} as entity_display_name,
          ${em.n_table_name} as entity_meta_table,
          ${em.n_standalone} as standalone,
          ${em.n_custom} as custom
        FROM ${cm.n}
        JOIN ${em.n} 
        ON ${cm.n_entity_meta_table} = ${em.n_table_name}
        WHERE ${cm.n_id} = ${id};
      `);
        if (types.length !== 0) {
          type = types[0];
        }
      }
      return this.addGenOptsToType(type);
    } catch (e) {
      return undefined;
    }
  }

  public static async getTypeByDisplayName(
    name?: string
  ): Promise<Type | undefined> {
    if (!name) {
      return undefined;
    }
    try {
      const types = await db.query<Type[]>(`
      SELECT 
        ${cm.n_id} as id, 
        ${cm.n_display_name} as display_name, 
        ${cm.n_description} as description, 
        ${cm.n_example} as example, 
        ${cm.n_data_type} as data_type,
        ${cm.n_column_name} as column_name,
        ${cm.n_gen_opts_name} as gen_opts_name,
        ${em.n_display_name} as entity_display_name,
        ${em.n_table_name} as entity_meta_table,
        ${em.n_standalone} as standalone,
        ${em.n_custom} as custom
      FROM ${cm.n}
      JOIN ${em.n} 
      ON ${cm.n_entity_meta_table} = ${em.n_table_name}
      WHERE ${cm.n_display_name} = '${name}';`);
      console.log("types", types)
      if (types.length !== 0) {
        const newType = types[0];
        return this.addGenOptsToType(newType);
      }
    } catch (e) {
      console.log(e)
      return undefined;
    }
  }

  private static separatorMap: { [key: string]: string } = {
    comma: ",",
    semicolon: ";",
    newline: "\n",
  };

  public static async createType(type: CustomType) {
    const { name, actualSQLType, description, values, separator } = type;
    const valuesArr = values
      .split(TypeProvider.separatorMap[separator])
      .map((v) => v.trim());
    const column_name = name.toLowerCase().trim().replace(" ", "_");
    const client = await db.pool.connect();
    try {
      await client.query("BEGIN");
      await client.query(`
      INSERT INTO ${em.n} (
        ${em.display_name},
        ${em.description},
        ${em.table_name},
        ${em.standalone},
        ${em.custom}
      ) VALUES (
        '${name}',
        '',
        '${column_name}',
        false,
        true
      );`);
      const insertRes = await client.query(`
      INSERT INTO ${cm.n} (
        ${cm.display_name}, 
        ${cm.description}, 
        ${cm.example}, 
        ${cm.data_type}, 
        ${cm.column_name}, 
        ${cm.entity_meta_table}, 
        ${cm.gen_opts_name}
      ) VALUES (
        '${name}', 
        '${description}', 
        '${valuesArr.slice(0, 3).join(", ")}', 
        '${actualSQLType}', 
        '${column_name}', 
        '${column_name}', 
        'entityVarchar'
      ) RETURNING ${cm.id};`);
      const { id } = insertRes.rows[0];
      await client.query(`
      CREATE TABLE IF NOT EXISTS ${column_name} (
        id SERIAL PRIMARY KEY,
        ${column_name} ${actualSQLType},
        entity_meta_table VARCHAR(255) NOT NULL,
        CONSTRAINT fk_entity_meta_table FOREIGN KEY (entity_meta_table) REFERENCES ${em.n}(table_name) ON DELETE CASCADE
      );`);
      const promises = valuesArr.map(
        async (value: string) =>
          await client.query(`
            INSERT INTO ${column_name} (
              ${column_name},
              entity_meta_table
            ) VALUES (
              '${value}',
              '${column_name}'
            );`)
      );
      await Promise.all(promises);
      await client.query("COMMIT");
      return await this.getTypeById(id);
    } catch (e) {
      await client.query("ROLLBACK");
      throw e;
    } finally {
      client.release();
    }
  }

  public static async getColumnMetaById(
    id?: string
  ): Promise<ColumnMeta | undefined> {
    if (!id) {
      return undefined;
    }
    let type = [...this.runtimeTypes, this.foreignKey].find(
      (type) => type.id === id
    );
    if (type) {
      return this.convertTypeToColumnMeta(type);
    }
    const column_meta = await db.query(`
      SELECT * FROM ${cm.n} WHERE ${cm.n_id} = ${id};
    `);
    if (column_meta.length === 0) {
      return undefined;
    }
    return column_meta[0];
  }

  private static convertTypeToColumnMeta(type: Type): ColumnMeta {
    return {
      id: type.id,
      display_name: type.display_name,
      description: type.description,
      example: type.example,
      data_type: type.data_type,
      column_name: type.column_name,
      gen_opts_name: type.gen_opts_name,
      entity_meta_table: type.entity_meta_table,
    };
  }
}
