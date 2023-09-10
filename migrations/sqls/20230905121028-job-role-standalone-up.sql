create table
  if not exists job_role (
    id serial primary key,
    job_role varchar(255) not null,
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
  ('Job Role', '', 'job_role', true, false);

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
    'Job Role',
    '',
    'Software Engineer, Nurse, Dentist',
    'job_role',
    'varchar.255',
    'entityVarchar',
    'job_role'
  );

insert into
  job_role (job_role, entity_meta_table)
values
  ('Financial Analyst', 'job_role'),
  ('Customer Service Representative', 'job_role'),
  ('Product Manager', 'job_role'),
  ('Nurse', 'job_role'),
  ('Teacher', 'job_role'),
  ('Lawyer', 'job_role'),
  ('Mechanical Engineer', 'job_role'),
  ('IT Support Specialist', 'job_role'),
  ('Pharmacist', 'job_role'),
  ('Architect', 'job_role'),
  ('Registered Nurse', 'job_role'),
  ('Marketing Manager', 'job_role'),
  ('Software Engineer', 'job_role'),
  ('Financial Planner', 'job_role'),
  ('Human Resources Specialist', 'job_role'),
  ('Business Analyst', 'job_role'),
  ('Dentist', 'job_role'),
  ('Electrician', 'job_role'),
  ('Retail Manager', 'job_role'),
  ('Web Developer', 'job_role'),
  ('Registered Dietitian', 'job_role'),
  ('Interior Designer', 'job_role'),
  ('Civil Engineer', 'job_role'),
  ('Account Manager', 'job_role'),
  ('Social Worker', 'job_role'),
  ('Financial Controller', 'job_role'),
  ('Laboratory Technician', 'job_role'),
  ('IT Manager', 'job_role'),
  ('Pharmacy Technician', 'job_role'),
  ('Software Architect', 'job_role'),
  ('Registered Nurse Practitioner', 'job_role'),
  ('Marketing Director', 'job_role'),
  ('Mechanical Designer', 'job_role'),
  ('Human Resources Assistant', 'job_role'),
  ('Business Development Manager', 'job_role'),
  ('Orthodontist', 'job_role'),
  ('Electrical Engineer', 'job_role'),
  ('Retail Sales Associate', 'job_role'),
  ('UI/UX Designer', 'job_role'),
  ('Clinical Psychologist', 'job_role'),
  ('Financial Manager', 'job_role'),
  ('Medical Assistant', 'job_role'),
  ('Web Designer', 'job_role'),
  ('Licensed Practical Nurse', 'job_role'),
  ('Marketing Assistant', 'job_role'),
  ('Software Tester', 'job_role');