/* Replace with your SQL commands */
drop table person;

delete from column_meta
where entity_meta_table = 'person';

delete from entity_meta
where table_name = 'person';