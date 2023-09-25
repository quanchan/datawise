create table
    if not exists job_level (
        id serial primary key,
        job_level varchar(255) not null,
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
    ('Job Level', '', 'job_level', true, false);

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
        'Job Level',
        '',
        'Junior, Mid, Senior, ',
        'job_level',
        'varchar(255)',
        'entityVarchar',
        'job_level'
    );

INSERT INTO
    job_level (job_level, entity_meta_table)
VALUES
    ('Novice', 'job_level'),
    ('Apprentice', 'job_level'),
    ('Junior', 'job_level'),
    ('Trainee', 'job_level'),
    ('Associate', 'job_level'),
    ('Specialist', 'job_level'),
    ('Intermediate', 'job_level'),
    ('Senior', 'job_level'),
    ('Expert', 'job_level'),
    ('Lead', 'job_level'),
    ('Supervisor', 'job_level'),
    ('Manager', 'job_level'),
    ('Director', 'job_level'),
    ('Executive', 'job_level'),
    ('Chief', 'job_level'),
    ('Mid Level', 'job_level'),
    ('President', 'job_level');