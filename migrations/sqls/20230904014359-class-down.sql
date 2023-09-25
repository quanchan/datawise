/* Replace with your SQL commands */
drop table class;

delete from column_meta
where entity_meta_table = 'class';

delete from entity_meta
where table_name = 'class';