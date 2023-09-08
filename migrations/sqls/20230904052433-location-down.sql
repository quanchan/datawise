/* Replace with your SQL commands */
drop table location;

delete from column_meta
where entity_meta_id = 3;

delete from entity_meta
where display_name = 'Location';