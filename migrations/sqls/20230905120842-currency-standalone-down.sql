/* Replace with your SQL commands */
drop table currency;

delete from column_meta
where entity_meta_id = 8;

delete from entity_meta
where display_name = 'Currency';