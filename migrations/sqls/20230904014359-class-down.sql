/* Replace with your SQL commands */
drop table class;

delete from column_meta
where entity_meta_id = 2;

delete from entity_meta
where display_name = 'Class';