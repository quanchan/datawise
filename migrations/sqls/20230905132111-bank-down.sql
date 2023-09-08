/* Replace with your SQL commands */
drop table bank;

delete from column_meta
where entity_meta_id = 16;

delete from entity_meta
where display_name = 'Bank';