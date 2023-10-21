/* Replace with your SQL commands */
drop table job_perks;

delete from column_meta
where entity_meta_table = 'job_perks';

delete from entity_meta
where table_name = 'job_perks';