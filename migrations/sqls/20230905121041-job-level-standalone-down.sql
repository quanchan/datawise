/* Replace with your SQL commands */
drop table job_level;

delete from column_meta
where entity_meta_table = 'job_level';

delete from entity_meta
where table_name = 'job_level';