/* Replace with your SQL commands */
drop table company;

delete from column_meta
where entity_meta_table = 'company';

delete from entity_meta
where table_name = 'company';