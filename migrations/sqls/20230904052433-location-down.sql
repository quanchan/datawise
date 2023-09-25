/* Replace with your SQL commands */
drop table location;

delete from column_meta
where entity_meta_table = 'location';

delete from entity_meta
where table_name = 'location';