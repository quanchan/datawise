/* Replace with your SQL commands */
drop table creditcard;

delete from column_meta
where entity_meta_table = 'creditcard';

delete from entity_meta
where table_name = 'creditcard';