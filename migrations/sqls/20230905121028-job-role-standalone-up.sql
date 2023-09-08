create table if not exists job_role (
    id serial primary key,
    job_role varchar(255) not null,
    entity_meta_id int not null,
    constraint fk_job_role_entity_meta foreign key (entity_meta_id) references entity_meta(id)
);

-- entity_meta
insert into entity_meta 
    (id, display_name, description, table_name, standalone, custom)
values 
    (12, 'Job Role', '', 'job_role', true, false);

-- column_meta
insert into column_meta 
    (display_name, description, example, column_name, data_type, gen_opts_name, entity_meta_id)
values 
    ('Job Role', '', 'Software Engineer', 'job_role', 'varchar.255', 'entityVarchar', 12);

insert into job_role (job_role, entity_meta_id) values ('Financial Analyst', 12);
insert into job_role (job_role, entity_meta_id) values ('Customer Service Representative', 12);
insert into job_role (job_role, entity_meta_id) values ('Product Manager', 12);
insert into job_role (job_role, entity_meta_id) values ('Nurse', 12);
insert into job_role (job_role, entity_meta_id) values ('Teacher', 12);
insert into job_role (job_role, entity_meta_id) values ('Lawyer', 12);
insert into job_role (job_role, entity_meta_id) values ('Mechanical Engineer', 12);
insert into job_role (job_role, entity_meta_id) values ('IT Support Specialist', 12);
insert into job_role (job_role, entity_meta_id) values ('Pharmacist', 12);
insert into job_role (job_role, entity_meta_id) values ('Architect', 12);
insert into job_role (job_role, entity_meta_id) values ('Registered Nurse', 12);
insert into job_role (job_role, entity_meta_id) values ('Marketing Manager', 12);
insert into job_role (job_role, entity_meta_id) values ('Software Engineer', 12);
insert into job_role (job_role, entity_meta_id) values ('Financial Planner', 12);
insert into job_role (job_role, entity_meta_id) values ('Human Resources Specialist', 12);
insert into job_role (job_role, entity_meta_id) values ('Business Analyst', 12);
insert into job_role (job_role, entity_meta_id) values ('Dentist', 12);
insert into job_role (job_role, entity_meta_id) values ('Electrician', 12);
insert into job_role (job_role, entity_meta_id) values ('Retail Manager', 12);
insert into job_role (job_role, entity_meta_id) values ('Web Developer', 12);
insert into job_role (job_role, entity_meta_id) values ('Registered Dietitian', 12);
insert into job_role (job_role, entity_meta_id) values ('Interior Designer', 12);
insert into job_role (job_role, entity_meta_id) values ('Civil Engineer', 12);
insert into job_role (job_role, entity_meta_id) values ('Account Manager', 12);
insert into job_role (job_role, entity_meta_id) values ('Social Worker', 12);
insert into job_role (job_role, entity_meta_id) values ('Financial Controller', 12);
insert into job_role (job_role, entity_meta_id) values ('Laboratory Technician', 12);
insert into job_role (job_role, entity_meta_id) values ('IT Manager', 12);
insert into job_role (job_role, entity_meta_id) values ('Pharmacy Technician', 12);
insert into job_role (job_role, entity_meta_id) values ('Software Architect', 12);
insert into job_role (job_role, entity_meta_id) values ('Registered Nurse Practitioner', 12);
insert into job_role (job_role, entity_meta_id) values ('Marketing Director', 12);
insert into job_role (job_role, entity_meta_id) values ('Mechanical Designer', 12);
insert into job_role (job_role, entity_meta_id) values ('Human Resources Assistant', 12);
insert into job_role (job_role, entity_meta_id) values ('Business Development Manager', 12);
insert into job_role (job_role, entity_meta_id) values ('Orthodontist', 12);
insert into job_role (job_role, entity_meta_id) values ('Electrical Engineer', 12);
insert into job_role (job_role, entity_meta_id) values ('Retail Sales Associate', 12);
insert into job_role (job_role, entity_meta_id) values ('UI/UX Designer', 12);
insert into job_role (job_role, entity_meta_id) values ('Clinical Psychologist', 12);
insert into job_role (job_role, entity_meta_id) values ('Financial Manager', 12);
insert into job_role (job_role, entity_meta_id) values ('Medical Assistant', 12);
insert into job_role (job_role, entity_meta_id) values ('Web Designer', 12);
insert into job_role (job_role, entity_meta_id) values ('Licensed Practical Nurse', 12);
insert into job_role (job_role, entity_meta_id) values ('Marketing Assistant', 12);
insert into job_role (job_role, entity_meta_id) values ('Software Tester', 12);
