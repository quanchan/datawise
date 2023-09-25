/* Replace with your SQL commands */
drop table yesno;

delete from column_meta
where entity_meta_table = 'yesno';

delete from entity_meta
where table_name = 'yesno';