/* Replace with your SQL commands */
drop table product;

delete from column_meta
where entity_meta_id = 14;

delete from entity_meta
where display_name = 'Product';