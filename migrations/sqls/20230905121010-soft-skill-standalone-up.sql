create table
  if not exists soft_skill (
    id serial primary key,
    soft_skill varchar(255) not null,
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
  ('Soft Skill', '', 'soft_skill', true, false);

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
    'Soft Skill',
    '',
    'Communication',
    'soft_skill',
    'varchar.255',
    'entityVarchar',
    'soft_skill'
  );

insert into
  soft_skill (soft_skill, entity_meta_table)
values
  ('Adaptability', 'soft_skill'),
  ('Communication', 'soft_skill'),
  ('Problem Solving', 'soft_skill'),
  ('Teamwork', 'soft_skill'),
  ('Creativity', 'soft_skill'),
  ('Critical Thinking', 'soft_skill'),
  ('Leadership', 'soft_skill'),
  ('Time Management', 'soft_skill'),
  ('Decision Making', 'soft_skill'),
  ('Conflict Resolution', 'soft_skill'),
  ('Stress Management', 'soft_skill'),
  ('Negotiation', 'soft_skill'),
  ('Interpersonal Skills', 'soft_skill'),
  ('Emotional Intelligence', 'soft_skill'),
  ('Attention to Detail', 'soft_skill'),
  ('Advising', 'soft_skill'),
  ('Networking', 'soft_skill'),
  ('Presentation', 'soft_skill'),
  ('Collaboration', 'soft_skill'),
  ('Organizational Skills', 'soft_skill'),
  ('Analytical Skills', 'soft_skill'),
  ('Customer Service', 'soft_skill'),
  ('Multitasking', 'soft_skill'),
  ('Innovation', 'soft_skill');