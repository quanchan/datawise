import db from "@/db";
import { CustomType, Type, allowedGenOptions } from "@/types";
import { column_meta as cm, entity_meta as em } from "@/db/schema";

export class TypeProvider {
  static runtimeTypes: Type[] = [
    {
      id: "int",
      display_name: "Random Integer",
      description: "Random integer generated with user-defined options",
      example: "1, 2, 3, 4, 5",
      data_type: "int",
      gen_opts_name: "randomInt",
      column_name: "",
      entity_display_name: "",
      entity_table_name: "",
      standalone: true,
      custom: false,
    },
    {
      id: "decimal",
      display_name: "Random Decimal",
      description: "Random decimal generated with user-defined options",
      example: "1.23, 4.56, 7.89",
      data_type: "decimal",
      gen_opts_name: "randomDecimal",
      column_name: "",
      entity_display_name: "",
      entity_table_name: "",
      standalone: true,
      custom: false,
    },
    {
      id: "datetime",
      display_name: "Random Datetime",
      description: "Random datetime generated with user-defined options",
      example: "2021-01-01 00:00:00",
      data_type: "datetime",
      gen_opts_name: "randomDateTime",
      column_name: "",
      entity_display_name: "",
      entity_table_name: "",
      standalone: true,
      custom: false,
    },
    {
      id: "date",
      display_name: "Random Date",
      description: "Random date generated with user-defined options",
      example: "2021-01-01",
      data_type: "datetime",
      gen_opts_name: "randomDate",
      column_name: "",
      entity_display_name: "",
      entity_table_name: "",
      standalone: true,
      custom: false,
    },
    {
      id: "phonefax",
      display_name: "Random Phone/Fax",
      description: "Random phone/fax generated with user-defined options",
      example: "+81 3 1234 5678",
      data_type: "varchar.255",
      gen_opts_name: "randomPhoneFax",
      column_name: "",
      entity_display_name: "",
      entity_table_name: "",
      standalone: true,
      custom: false,
    },
  ];

  private static addGenOptsToType(type?: Type): Type | undefined {
    if (!type) {
      return type;
    }
    return {
      ...type,
      gen_opts: type.gen_opts_name ? allowedGenOptions[type.gen_opts_name] : [],
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
      ${em.n_table_name} as entity_table_name,
      ${em.n_standalone} as standalone,
      ${em.n_custom} as custom
    FROM ${cm.n}
    JOIN ${em.n} 
    ON ${cm.n_entity_meta_table} = ${em.n_table_name};
    `);
    const allTypes = [...types, ...this.runtimeTypes];
    return allTypes.map((type: Type) => this.addGenOptsToType(type) as Type);
  }

  public static async getTypeById(id?: string): Promise<Type | undefined> {
    if (!id) {
      return undefined;
    }
    let type = this.runtimeTypes.find((type) => type.id === id);
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
          ${em.n_table_name} as entity_table_name,
          ${em.n_standalone} as standalone,
          ${em.n_custom} as custom
        FROM ${cm.n}
        JOIN ${em.n} 
        ON ${cm.n_entity_meta_table} = ${em.n_table_name};
        WHERE ${cm.n_id} = ${id};
      `);
      if (types.length !== 0) {
        type = types[0];
      }
    }
    return this.addGenOptsToType(type);
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
      await client.query(`
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
        ${column_name}, 
        'entityVarchar'
      );`);
    } catch (e) {
      await client.query("ROLLBACK");
      throw e;
    } finally {
      client.release();
    }
  }
}
