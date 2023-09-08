create table if not exists dependent_relationship (
    id serial primary key,
    dependent_relationship varchar(255) not null,
    entity_meta_id int not null,
    constraint fk_dependent_relationship_entity_meta foreign key (entity_meta_id) references entity_meta(id)
);

-- entity_meta
insert into entity_meta 
    (id, display_name, description, table_name, standalone, custom)
values 
    (10, 'Dependent Relationship', '', 'dependent_relationship', true, false);

-- column_meta
insert into column_meta 
    (display_name, description, example, column_name, data_type, gen_opts_name, entity_meta_id)
values 
    ('Dependent Relationship', '', 'Spouse', 'dependent_relationship', 'varchar.255', 'entityVarchar', 10);

insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Spouse', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Child', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Parent', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Sibling', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Grandparent', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Grandchild', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Aunt', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Uncle', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Cousin', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Niece', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Nephew', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Stepchild', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Stepparent', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Stepsibling', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('In-Law', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Guardian', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Ward', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Other', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('None', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Self', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Friend', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Colleague', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Boss', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Employee', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Co-Worker', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Roommate', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Landlord', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Tenant', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Neighbor', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Acquaintance', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Stranger', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Pet', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Supervisor', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Subordinate', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Mentor', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Mentee', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Coach', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Player', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Doctor', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Patient', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Teacher', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Student', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Advisor', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Advisee', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Counselor', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Client', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Customer', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Supplier', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Vendor', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Partner', 10);
insert into dependent_relationship (dependent_relationship, entity_meta_id) values ('Associate', 10);
