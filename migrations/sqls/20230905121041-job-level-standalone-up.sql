create table if not exists job_level (
    id serial primary key,
    job_level varchar(255) not null,
    entity_meta_id int not null,
    constraint fk_job_level_entity_meta foreign key (entity_meta_id) references entity_meta(id)
);

-- entity_meta
insert into entity_meta 
    (id, display_name, description, table_name, standalone, custom)
values 
    (13, 'Job Level', '', 'job_level', true, false);

-- column_meta
insert into column_meta 
    (display_name, description, example, column_name, data_type, entity_meta_id)
values 
    ('Job Level', '', 'Senior', 'job_level', 'VARCHAR(255)', 13);

INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Novice', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Apprentice', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Junior', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Trainee', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Associate', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Specialist', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Intermediate', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Senior', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Expert', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Lead', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Supervisor', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Manager', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Director', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Executive', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Chief', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Coordinator', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Strategist', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Innovator', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Mentor', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Visionary', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Principal', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Architect', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Pioneer', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Pathfinder', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Captain', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Conductor', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Maestro', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Ambassador', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Luminary', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Virtuoso', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Philosopher', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Maverick', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Evangelist', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Artisan', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Navigator', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Curator', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Steward', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Partner', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('President', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Chairman', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Founder', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Philanthropist', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Diplomat', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Analyst', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Orchestrator', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Sage', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Trailblazer', 13);
INSERT INTO job_level (job_level, entity_meta_id) VALUES ('Innovator', 13);
