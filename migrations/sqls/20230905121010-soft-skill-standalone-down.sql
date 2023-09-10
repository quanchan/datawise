/* Replace with your SQL commands */
drop table soft_skill;

delete from column_meta
where entity_meta_table = 'soft_skill';

delete from entity_meta
where table_name = 'soft_skill';