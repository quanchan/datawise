/* Replace with your SQL commands */
drop table food;

delete from column_meta
where entity_meta_table = 'food';

delete from entity_meta
where table_name = 'food';