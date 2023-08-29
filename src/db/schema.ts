export class column_meta {
  static n = "column_meta";
  static id = "id";
  static display_name = "display_name";
  static description = "description";
  static example = "example";
  static column_name = "column_name";
  static entity_meta_id = "entity_meta_id";
  static n_id = this.n + "." + this.id;
  static n_display_name = this.n + "." + this.display_name;
  static n_description = this.n + "." + this.description;
  static n_example = this.n + "." + this.example;
  static n_column_name = this.n + "." + this.column_name;
  static n_entity_meta_id = this.n + "." + this.entity_meta_id;
}

export class entity_meta {
  static n = "entity_meta";
  static id = "id";
  static display_name = "display_name";
  static description = "description";
  static table_name = "table_name";
  static standalone = "standalone";
  static custom = "custom";
  static n_id = this.n + "." + this.id;
  static n_display_name = this.n + "." + this.display_name;
  static n_description = this.n + "." + this.description;
  static n_table_name = this.n + "." + this.table_name;
  static n_standalone = this.n + "." + this.standalone;
  static n_custom = this.n + "." + this.custom;
}