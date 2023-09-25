/* Replace with your SQL commands */
drop table bank;

delete from column_meta
where entity_meta_table = 'bank';

delete from entity_meta
where table_name = 'bank';