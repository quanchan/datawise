create table if not exists soft_skill (
    id serial primary key,
    soft_skill varchar(255) not null,
    entity_meta_id int not null,
    constraint fk_soft_skill_entity_meta foreign key (entity_meta_id) references entity_meta(id)
);

-- entity_meta
insert into entity_meta 
    (id, display_name, description, table_name, standalone, custom)
values 
    (11, 'Soft Skill', '', 'soft_skill', true, false);

-- column_meta
insert into column_meta 
    (display_name, description, example, column_name, data_type, entity_meta_id)
values 
    ('Soft Skill', '', 'Communication', 'soft_skill', 'VARCHAR(255)', 11);

insert into soft_skill (soft_skill, entity_meta_id) values ('Adaptability', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Communication', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Problem Solving', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Teamwork', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Creativity', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Critical Thinking', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Leadership', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Time Management', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Decision Making', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Conflict Resolution', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Stress Management', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Negotiation', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Interpersonal Skills', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Emotional Intelligence', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Attention to Detail', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Advising', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Networking', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Presentation', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Collaboration', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Organizational Skills', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Analytical Skills', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Customer Service', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Multitasking', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Decision Making', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Problem Solving', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Innovation', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Adaptability', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Time Management', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Leadership', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Communication', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Collaboration', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Creativity', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Critical Thinking', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Problem Solving', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Teamwork', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Adaptability', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Decision Making', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Problem Solving', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Leadership', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Communication', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Advising', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Networking', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Presentation', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Collaboration', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Organizational Skills', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Analytical Skills', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Customer Service', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Multitasking', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Decision Making', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Problem Solving', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Innovation', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Adaptability', 11);
insert into soft_skill (soft_skill, entity_meta_id) values ('Time Management', 11);


