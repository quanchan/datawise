/* Replace with your SQL commands */
drop table product;

delete from column_meta
where entity_meta_table = 'product';

delete from entity_meta
where table_name = 'product';