create table if not exists yesno (
    id serial primary key,
    yesno varchar(5) not null,
    entity_meta_id int not null,
    constraint fk_yesno_entity_meta foreign key (entity_meta_id) references entity_meta(id)
);

-- entity_meta
insert into entity_meta 
    (id, display_name, description, table_name, standalone, custom)
values 
    (9, 'YesNo', '', 'yesno', true, false);

-- column_meta
insert into column_meta 
    (display_name, description, example, column_name, data_type, gen_opts_name, entity_meta_id)
values 
    ('Yes/No', '', 'Yes', 'yesno', 'varchar.255', 'entityVarchar', 9);

insert into yesno (yesno, entity_meta_id) values ('Yes', 9);
insert into yesno (yesno, entity_meta_id) values ('No', 9);
insert into yesno (yesno, entity_meta_id) values ('Y', 9);
insert into yesno (yesno, entity_meta_id) values ('N', 9);
insert into yesno (yesno, entity_meta_id) values ('True', 9);
insert into yesno (yesno, entity_meta_id) values ('False', 9);
insert into yesno (yesno, entity_meta_id) values ('T', 9);
insert into yesno (yesno, entity_meta_id) values ('F', 9);