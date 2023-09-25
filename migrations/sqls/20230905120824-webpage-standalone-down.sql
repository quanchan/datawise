/* Replace with your SQL commands */
drop table webpage;

delete from column_meta
where entity_meta_table = 'webpage';

delete from entity_meta
where table_name = 'webpage';