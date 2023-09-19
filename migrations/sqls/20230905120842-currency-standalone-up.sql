create table
  if not exists currency (
    id serial primary key,
    currency varchar(255) not null,
    name varchar(255) not null,
    symbol varchar(10) not null,
    origin_country varchar(255) not null,
    entity_meta_table varchar(255) not null,
    constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta (table_name) on delete cascade
  );

-- entity_meta
insert into
  entity_meta (
    display_name,
    description,
    table_name,
    standalone,
    custom
  )
values
  ('Currency', '', 'currency', false, false);

-- column_meta
insert into
  column_meta (
    display_name,
    description,
    example,
    column_name,
    data_type,
    gen_opts_name,
    entity_meta_table
  )
values
  (
    'Currency Code',
    'Unique 3-letter code',
    'USD, AUD, JPY',
    'currency',
    'varchar(255)',
    'entityVarchar',
    'currency'
  ),
  (
    'Currency Name',
    'Currency full name',
    'United States Dollar, Australian Dollar, Indian Rupee',
    'name',
    'varchar(255)',
    'entityVarchar',
    'currency'
  ),
  (
    'Currency Symbol',
    'Currency symbol',
    '$, £, ¥',
    'symbol',
    'varchar(10)',
    'entityVarchar',
    'currency'
  ),
  (
    'Currency Origin Country',
    'Currency origin country',
    'United States',
    'origin_country',
    'varchar(255)',
    'entityVarchar',
    'currency'
  );

INSERT INTO
  currency (
    currency,
    name,
    symbol,
    origin_country,
    entity_meta_table
  )
VALUES
  (
    'USD',
    'United States Dollar',
    '$',
    'United States',
    'currency'
  ),
  ('EUR', 'Euro', '€', 'Eurozone', 'currency'),
  ('JPY', 'Japanese Yen', '¥', 'Japan', 'currency'),
  (
    'GBP',
    'British Pound Sterling',
    '£',
    'United Kingdom',
    'currency'
  ),
  ('AUD', 'Australian Dollar', '$', 'Australia', 'currency'),
  ('CAD', 'Canadian Dollar', '$', 'Canada', 'currency'),
  ('CHF', 'Swiss Franc', 'Fr', 'Switzerland', 'currency'),
  ('CNY', 'Chinese Yuan', '¥', 'China', 'currency'),
  ('SEK', 'Swedish Krona', 'kr', 'Sweden', 'currency'),
  (
    'NZD',
    'New Zealand Dollar',
    '$',
    'New Zealand',
    'currency'
  ),
  ('SGD', 'Singapore Dollar', '$', 'Singapore', 'currency'),
  ('INR', 'Indian Rupee', '₹', 'India', 'currency'),
  ('BRL', 'Brazilian Real', 'R$', 'Brazil', 'currency'),
  ('KRW', 'South Korean Won', '₩', 'South Korea', 'currency'),
  (
    'ZAR',
    'South African Rand',
    'R',
    'South Africa',
    'currency'
  ),
  ('MXN', 'Mexican Peso', '$', 'Mexico', 'currency'),
  ('RUB', 'Russian Ruble', '₽', 'Russia', 'currency'),
  ('TRY', 'Turkish Lira', '₺', 'Turkey', 'currency'),
  (
    'AED',
    'United Arab Emirates Dirham',
    'د.إ',
    'United Arab Emirates',
    'currency'
  ),
  ('HKD', 'Hong Kong Dollar', 'HK$', 'Hong Kong', 'currency'),
  ('NOK', 'Norwegian Krone', 'kr', 'Norway', 'currency'),
  ('DKK', 'Danish Krone', 'kr', 'Denmark', 'currency'),
  ('THB', 'Thai Baht', '฿', 'Thailand', 'currency'),
  ('MYR', 'Malaysian Ringgit', 'RM', 'Malaysia', 'currency'),
  ('IDR', 'Indonesian Rupiah', 'Rp', 'Indonesia', 'currency'),
  ('PHP', 'Philippine Peso', '₱', 'Philippines', 'currency'),
  ('SAR', 'Saudi Riyal', '﷼', 'Saudi Arabia', 'currency'),
  ('QAR', 'Qatari Riyal', '﷼', 'Qatar', 'currency'),
  ('KWD', 'Kuwaiti Dinar', 'د.ك', 'Kuwait', 'currency'),
  ('BHD', 'Bahraini Dinar', 'د.ب', 'Bahrain', 'currency'),
  ('OMR', 'Omani Rial', '﷼', 'Oman', 'currency'),
  ('LBP', 'Lebanese Pound', 'ل.ل', 'Lebanon', 'currency'),
  ('EGP', 'Egyptian Pound', 'E£', 'Egypt', 'currency'),
  ('ILS', 'Israeli New Shekel', '₪', 'Israel', 'currency'),
  ('KES', 'Kenyan Shilling', 'KSh', 'Kenya', 'currency'),
  ('ZMW', 'Zambian Kwacha', 'ZK', 'Zambia', 'currency'),
  ('NGN', 'Nigerian Naira', '₦', 'Nigeria', 'currency'),
  ('ZWL', 'Zimbabwean Dollar', 'Z$', 'Zimbabwe', 'currency'),
  ('CLP', 'Chilean Peso', '$', 'Chile', 'currency'),
  ('COP', 'Colombian Peso', '$', 'Colombia', 'currency'),
  ('PEN', 'Peruvian Nuevo Sol', 'S/', 'Peru', 'currency'),
  ('ARS', 'Argentine Peso', '$', 'Argentina', 'currency'),
  ('UYU', 'Uruguayan Peso', '$', 'Uruguay', 'currency'),
  ('VND', 'Vietnamese Dong', '₫', 'Vietnam', 'currency'),
  ('BGN', 'Bulgarian Lev', 'лв', 'Bulgaria', 'currency'),
  ('RON', 'Romanian Leu', 'lei', 'Romania', 'currency'),
  ('HUF', 'Hungarian Forint', 'Ft', 'Hungary', 'currency'),
  ('CZK', 'Czech Koruna', 'Kč', 'Czech Republic', 'currency');