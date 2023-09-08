create table if not exists currency (
    id serial primary key,
    currency varchar(255) not null,
    name varchar(255) not null,
    symbol varchar(10) not null,
    origin_country varchar(255) not null,
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
    ('Currency code', 'Unique 3-letter code', 'USD, AUD, JPY', 'currency', 'varchar.255', 8)
    ('Name', 'Currency full name', 'United States Dollar, Australian Dollar, Indian Rupee', 'name', 'varchar.255', 8),
    ('Symbol', 'Currency symbol', '$, £, ¥', 'symbol', 'varchar.10', 8),
    ('Origin Country', 'Currency origin country', 'United States', 'origin_country', 'varchar.255', 8);

INSERT INTO currency (currency, name, symbol, origin_country, entity_meta_id)
VALUES
    ('USD', 'United States Dollar', '$', 'United States', 8),
    ('EUR', 'Euro', '€', 'Eurozone', 8),
    ('JPY', 'Japanese Yen', '¥', 'Japan', 8),
    ('GBP', 'British Pound Sterling', '£', 'United Kingdom', 8),
    ('AUD', 'Australian Dollar', '$', 'Australia', 8),
    ('CAD', 'Canadian Dollar', '$', 'Canada', 8),
    ('CHF', 'Swiss Franc', 'Fr', 'Switzerland', 8),
    ('CNY', 'Chinese Yuan', '¥', 'China', 8),
    ('SEK', 'Swedish Krona', 'kr', 'Sweden', 8),
    ('NZD', 'New Zealand Dollar', '$', 'New Zealand', 8),
    ('SGD', 'Singapore Dollar', '$', 'Singapore', 8),
    ('INR', 'Indian Rupee', '₹', 'India', 8),
    ('BRL', 'Brazilian Real', 'R$', 'Brazil', 8),
    ('KRW', 'South Korean Won', '₩', 'South Korea', 8),
    ('ZAR', 'South African Rand', 'R', 'South Africa', 8),
    ('MXN', 'Mexican Peso', '$', 'Mexico', 8),
    ('RUB', 'Russian Ruble', '₽', 'Russia', 8),
    ('TRY', 'Turkish Lira', '₺', 'Turkey', 8),
    ('AED', 'United Arab Emirates Dirham', 'د.إ', 'United Arab Emirates', 8),
    ('HKD', 'Hong Kong Dollar', 'HK$', 'Hong Kong', 8),
    ('NOK', 'Norwegian Krone', 'kr', 'Norway', 8),
    ('DKK', 'Danish Krone', 'kr', 'Denmark', 8),
    ('THB', 'Thai Baht', '฿', 'Thailand', 8),
    ('MYR', 'Malaysian Ringgit', 'RM', 'Malaysia', 8),
    ('IDR', 'Indonesian Rupiah', 'Rp', 'Indonesia', 8),
    ('PHP', 'Philippine Peso', '₱', 'Philippines', 8),
    ('SAR', 'Saudi Riyal', '﷼', 'Saudi Arabia', 8),
    ('QAR', 'Qatari Riyal', '﷼', 'Qatar', 8),
    ('KWD', 'Kuwaiti Dinar', 'د.ك', 'Kuwait', 8),
    ('BHD', 'Bahraini Dinar', 'د.ب', 'Bahrain', 8),
    ('OMR', 'Omani Rial', '﷼', 'Oman', 8),
    ('LBP', 'Lebanese Pound', 'ل.ل', 'Lebanon', 8),
    ('EGP', 'Egyptian Pound', 'E£', 'Egypt', 8),
    ('ILS', 'Israeli New Shekel', '₪', 'Israel', 8),
    ('KES', 'Kenyan Shilling', 'KSh', 'Kenya', 8),
    ('ZMW', 'Zambian Kwacha', 'ZK', 'Zambia', 8),
    ('NGN', 'Nigerian Naira', '₦', 'Nigeria', 8),
    ('ZWL', 'Zimbabwean Dollar', 'Z$', 'Zimbabwe', 8),
    ('CLP', 'Chilean Peso', '$', 'Chile', 8),
    ('COP', 'Colombian Peso', '$', 'Colombia', 8),
    ('PEN', 'Peruvian Nuevo Sol', 'S/', 'Peru', 8),
    ('ARS', 'Argentine Peso', '$', 'Argentina', 8),
    ('UYU', 'Uruguayan Peso', '$', 'Uruguay', 8),
    ('VND', 'Vietnamese Dong', '₫', 'Vietnam', 8),
    ('BGN', 'Bulgarian Lev', 'лв', 'Bulgaria', 8),
    ('RON', 'Romanian Leu', 'lei', 'Romania', 8),
    ('HUF', 'Hungarian Forint', 'Ft', 'Hungary', 8),
    ('CZK', 'Czech Koruna', 'Kč', 'Czech Republic', 8);