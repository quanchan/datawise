create table if not exists currency (
    id serial primary key,
    currency varchar(255) not null,
    entity_meta_id int not null,
    constraint fk_currency_entity_meta foreign key (entity_meta_id) references entity_meta(id)
);

-- entity_meta
insert into entity_meta 
    (id, display_name, description, table_name, standalone, custom)
values 
    (8, 'Currency', '', 'currency', true, false);

-- column_meta
insert into column_meta 
    (display_name, description, example, column_name, data_type, entity_meta_id)
values 
    ('Currency', '', 'USD', 'currency', 'VARCHAR(255)', 8);

insert into currency (currency, entity_meta_id) values ('USD', 8);
insert into currency (currency, entity_meta_id) values ('EUR', 8);
insert into currency (currency, entity_meta_id) values ('GBP', 8);
insert into currency (currency, entity_meta_id) values ('JPY', 8);
insert into currency (currency, entity_meta_id) values ('AUD', 8);
insert into currency (currency, entity_meta_id) values ('CAD', 8);
insert into currency (currency, entity_meta_id) values ('CHF', 8);
insert into currency (currency, entity_meta_id) values ('CNY', 8);
insert into currency (currency, entity_meta_id) values ('SEK', 8);
insert into currency (currency, entity_meta_id) values ('NZD', 8);
insert into currency (currency, entity_meta_id) values ('KRW', 8);
insert into currency (currency, entity_meta_id) values ('SGD', 8);
insert into currency (currency, entity_meta_id) values ('NOK', 8);
insert into currency (currency, entity_meta_id) values ('MXN', 8);
insert into currency (currency, entity_meta_id) values ('INR', 8);
insert into currency (currency, entity_meta_id) values ('BRL', 8);
insert into currency (currency, entity_meta_id) values ('RUB', 8);
insert into currency (currency, entity_meta_id) values ('HKD', 8);
insert into currency (currency, entity_meta_id) values ('ZAR', 8);
insert into currency (currency, entity_meta_id) values ('TRY', 8);
insert into currency (currency, entity_meta_id) values ('THB', 8);
insert into currency (currency, entity_meta_id) values ('IDR', 8);
insert into currency (currency, entity_meta_id) values ('MYR', 8);
insert into currency (currency, entity_meta_id) values ('PHP', 8);
insert into currency (currency, entity_meta_id) values ('HUF', 8);
insert into currency (currency, entity_meta_id) values ('CZK', 8);
insert into currency (currency, entity_meta_id) values ('DKK', 8);
insert into currency (currency, entity_meta_id) values ('ILS', 8);
insert into currency (currency, entity_meta_id) values ('PLN', 8);
insert into currency (currency, entity_meta_id) values ('AED', 8);
insert into currency (currency, entity_meta_id) values ('SAR', 8);
insert into currency (currency, entity_meta_id) values ('CLP', 8);
insert into currency (currency, entity_meta_id) values ('COP', 8);
insert into currency (currency, entity_meta_id) values ('VND', 8);
insert into currency (currency, entity_meta_id) values ('EGP', 8);
insert into currency (currency, entity_meta_id) values ('ZAR', 8);
insert into currency (currency, entity_meta_id) values ('KES', 8);
insert into currency (currency, entity_meta_id) values ('NGN', 8);
insert into currency (currency, entity_meta_id) values ('CHF', 8);
insert into currency (currency, entity_meta_id) values ('MXN', 8);
insert into currency (currency, entity_meta_id) values ('TRY', 8);
insert into currency (currency, entity_meta_id) values ('IDR', 8);
insert into currency (currency, entity_meta_id) values ('MYR', 8);
insert into currency (currency, entity_meta_id) values ('PHP', 8);
insert into currency (currency, entity_meta_id) values ('HUF', 8);
insert into currency (currency, entity_meta_id) values ('CZK', 8);
insert into currency (currency, entity_meta_id) values ('DKK', 8);
insert into currency (currency, entity_meta_id) values ('ILS', 8);
insert into currency (currency, entity_meta_id) values ('PLN', 8);
