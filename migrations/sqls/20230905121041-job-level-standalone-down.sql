/* Replace with your SQL commands */
drop table job_level;

delete from column_meta
where entity_meta_id = 13;

delete from entity_meta
where display_name = 'Job Level';