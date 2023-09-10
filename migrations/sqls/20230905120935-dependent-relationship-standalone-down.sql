/* Replace with your SQL commands */
drop table dependent_relationship;

delete from column_meta
where entity_meta_table = 'dependent_relationship';

delete from entity_meta
where table_name = 'dependent_relationship';