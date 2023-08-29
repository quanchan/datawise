/* Replace with your SQL commands */
create table if not exists entity_meta
(
  id serial primary key,
  display_name varchar(255) unique not null,
  description text,
  table_name varchar(255) unique not null,
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
  entity_meta_id int not null,
  constraint fk_entity_meta_id foreign key (entity_meta_id) references entity_meta(id) on delete cascade
);

