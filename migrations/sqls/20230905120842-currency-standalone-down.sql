/* Replace with your SQL commands */
drop table currency;

delete from column_meta
where entity_meta_table = 'currency';

delete from entity_meta
where table_name = 'currency';