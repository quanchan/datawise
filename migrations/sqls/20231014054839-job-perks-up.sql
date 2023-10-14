/* Replace with your SQL commands */
create table
  if not exists job_perks (
    id serial primary key,
    job_perks varchar(255) not null,
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
  ('Job Perk', '', 'job_perks', true, false);

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
    'Job Perk',
    'Perks offered by the company apart from money',
    'Retirement Plans, Paid Leave, Travel Allowance',
    'job_perks',
    'varchar(255)',
    'entityVarchar',
    'job_perks'
  );

INSERT INTO
  job_perks (job_perks, entity_meta_table)
VALUES
  ('Health Benefits', 'job_perks'),
  ('Retirement Plans', 'job_perks'),
  ('Paid Time Off (PTO)', 'job_perks'),
  ('Flexible Work Arrangements', 'job_perks'),
  ('Professional Development', 'job_perks'),
  ('Employee Assistance Programs (EAP)', 'job_perks'),
  ('Gym Memberships', 'job_perks'),
  ('Wellness Programs', 'job_perks'),
  ('Childcare Services', 'job_perks'),
  ('Transportation Benefits', 'job_perks'),
  ('Employee Discounts', 'job_perks'),
  ('Stock Options', 'job_perks'),
  ('Casual Dress Code', 'job_perks'),
  ('On-Site Amenities', 'job_perks'),
  ('Team Building Activities', 'job_perks'),
  ('Employee Recognition Programs', 'job_perks'),
  ('Relocation Assistance', 'job_perks'),
  ('Profit Sharing', 'job_perks'),
  ('Tuition Reimbursement', 'job_perks'),
  ('Travel Opportunities', 'job_perks'),
  ('Free Meals', 'job_perks'),
  ('Mentorship Programs', 'job_perks'),
  ('Pet-Friendly Policies', 'job_perks'),
  ('Generous Bonuses', 'job_perks'),
  ('Maternity/Paternity Leave', 'job_perks'),
  ('Life Insurance', 'job_perks'),
  ('Legal Assistance', 'job_perks'),
  ('Pet Insurance', 'job_perks'),
  ('Remote Work Options', 'job_perks'),
  ('Flexible Hours', 'job_perks');