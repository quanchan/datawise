/* Replace with your SQL commands */
drop table professional_skills;

delete from column_meta
where entity_meta_table = 'professional_skills';

delete from entity_meta
where table_name = 'professional_skills';