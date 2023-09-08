/* Replace with your SQL commands */
drop table dependent_relationship;

delete from column_meta
where entity_meta_id = 10;

delete from entity_meta
where display_name = 'Dependent Relationship';