/* Replace with your SQL commands */
drop table car;

delete from column_meta
where entity_meta_table = 'car';

delete from entity_meta
where table_name = 'car';