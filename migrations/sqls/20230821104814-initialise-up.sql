/* Replace with your SQL commands */
create table if not exists entity_meta
(
  display_name varchar(255) unique not null,
  description text,
  table_name varchar(255) primary key,
  standalone boolean not null,
  custom boolean not null
);

create table if not exists column_meta
(
  id serial primary key,
  display_name varchar(255),
  description text,
  example varchar(255),
  column_name varchar(255) not null,
  data_type varchar(255) not null,
  gen_opts_name varchar(255) not null,
  entity_meta_table varchar(255) not null,
  constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta(table_name) on delete cascade
);


