create table
  if not exists yesno (
    id serial primary key,
    yesno varchar(5) not null,
    entity_meta_table varchar(255) not null,
    constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta (table_name) on delete cascade
  );

-- entity_meta
insert into
  entity_meta (
    display_name,
    description,
    table_name,
    standalone,
    custom
  )
values
  ('YesNo', '', 'yesno', true, false);

-- column_meta
insert into
  column_meta (
    display_name,
    description,
    example,
    column_name,
    data_type,
    gen_opts_name,
    entity_meta_table
  )
values
  (
    'Yes/No',
    '',
    'Yes',
    'yesno',
    'varchar.255',
    'entityVarchar',
    'yesno'
  );

insert into
  yesno (yesno, entity_meta_table)
values
  ('Yes', 'yesno'),
  ('No', 'yesno'),
  ('Y', 'yesno'),
  ('N', 'yesno'),
  ('True', 'yesno'),
  ('False', 'yesno'),
  ('T', 'yesno'),
  ('F', 'yesno');