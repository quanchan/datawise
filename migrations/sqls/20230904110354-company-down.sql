/* Replace with your SQL commands */
drop table company;

delete from column_meta
where entity_meta_id = 6;

delete from entity_meta
where display_name = 'Company';