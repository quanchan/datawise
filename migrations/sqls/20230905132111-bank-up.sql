create table
  if not exists bank (
    id serial primary key,
    name varchar(255) not null,
    description varchar(255),
    entity_meta_table varchar(255) not null,
    constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta (table_name) on delete cascade
  );

insert into
  entity_meta (display_name, table_name, standalone, custom)
values
  ('Bank', 'bank', false, false);

insert into
  column_meta (
    display_name,
    description,
    column_name,
    data_type,
    gen_opts_name,
    entity_meta_table
  )
values
  (
    'Bank Name',
    'Bank name',
    'name',
    'varchar.255',
    'entityVarchar',
    'bank'
  ),
  (
    'Bank Description',
    '',
    'description',
    'varchar.255',
    'entityVarchar',
    'bank'
  );

insert into
  bank (name, description, entity_meta_table)
values
  (
    'Commonwealth Bank',
    'One of the largest banks in Australia',
    'bank'
  ),
  (
    'Westpac Banking Corporation',
    'An Australian bank and financial services provider',
    'bank'
  ),
  (
    'ANZ Bank',
    'A major Australian banking and financial services group',
    'bank'
  ),
  (
    'National Australia Bank',
    'One of the four largest financial institutions in Australia',
    'bank'
  ),
  (
    'Macquarie Bank',
    'A diversified financial services group',
    'bank'
  ),
  (
    'Bank of Queensland',
    'A regional bank in Australia',
    'bank'
  ),
  (
    'Suncorp Group',
    'An Australian finance, insurance, and banking corporation',
    'bank'
  ),
  (
    'Bendigo and Adelaide Bank',
    'An Australian financial institution',
    'bank'
  ),
  ('ME Bank', 'An Australian direct bank', 'bank'),
  (
    'ING Australia',
    'An Australian banking and financial services provider',
    'bank'
  ),
  (
    'AMP Bank',
    'An Australian retail and corporate bank',
    'bank'
  ),
  (
    'Heritage Bank',
    'A customer-owned bank in Australia',
    'bank'
  ),
  (
    'Beyond Bank',
    'An Australian customer-owned bank',
    'bank'
  ),
  (
    'Teachers Mutual Bank',
    'An Australian financial institution',
    'bank'
  ),
  ('CUA', 'A credit union in Australia', 'bank'),
  (
    'Greater Bank',
    'An Australian customer-owned bank',
    'bank'
  ),
  (
    'Bankwest',
    'A division of Commonwealth Bank in Australia',
    'bank'
  ),
  (
    'Police Bank',
    'An Australian financial institution',
    'bank'
  ),
  (
    'P&N Bank',
    'A Western Australian-based bank',
    'bank'
  ),
  (
    'Bank Australia',
    'An Australian customer-owned bank',
    'bank'
  ),
  (
    'JPMorgan Chase',
    'A multinational investment bank and financial services holding company',
    'bank'
  ),
  (
    'Citigroup',
    'An American multinational investment bank and financial services corporation',
    'bank'
  ),
  (
    'Bank of America',
    'An American multinational investment bank and financial services corporation',
    'bank'
  ),
  (
    'Wells Fargo',
    'An American multinational financial services company',
    'bank'
  ),
  (
    'HSBC Holdings',
    'A British multinational investment bank and financial services holding company',
    'bank'
  ),
  (
    'Mitsubishi UFJ Financial Group',
    'A Japanese bank holding and financial services company',
    'bank'
  ),
  (
    'BNP Paribas',
    'A French international banking group',
    'bank'
  ),
  (
    'Société Générale',
    'A French multinational investment bank and financial services company',
    'bank'
  ),
  (
    'Barclays',
    'A British multinational investment bank and financial services company',
    'bank'
  ),
  (
    'Credit Suisse',
    'A Swiss multinational investment bank and financial services company',
    'bank'
  ),
  (
    'UBS Group',
    'A Swiss multinational investment bank and financial services company',
    'bank'
  ),
  (
    'Deutsche Bank',
    'A German multinational investment bank and financial services company',
    'bank'
  ),
  (
    'Standard Chartered',
    'A British multinational banking and financial services company',
    'bank'
  ),
  (
    'Bank of China',
    'One of the largest banks in China',
    'bank'
  ),
  (
    'Industrial and Commercial Bank of China',
    'The largest bank in China',
    'bank'
  ),
  (
    'China Construction Bank',
    'One of the "big four" banks in China',
    'bank'
  ),
  (
    'Bank of Japan',
    'The central bank of Japan',
    'bank'
  ),
  (
    'Reserve Bank of India',
    'The central bank of India',
    'bank'
  ),
  (
    'Bank of England',
    'The central bank of the United Kingdom',
    'bank'
  ),
  (
    'European Central Bank',
    'The central bank for the euro and administers monetary policy within the Eurozone',
    'bank'
  ),
  (
    'Swiss National Bank',
    'The central bank of Switzerland',
    'bank'
  ),
  (
    'Bank of Canada',
    'The central bank of Canada',
    'bank'
  ),
  (
    'Bank of Australia',
    'The central bank of Australia',
    'bank'
  ),
  (
    'Reserve Bank of New Zealand',
    'The central bank of New Zealand',
    'bank'
  ),
  (
    'Brazilian Central Bank',
    'The central bank of Brazil',
    'bank'
  ),
  (
    'Central Bank of Russia',
    'The central bank of Russia',
    'bank'
  ),
  (
    'Bank of South Africa',
    'The central bank of South Africa',
    'bank'
  ),
  (
    'Central Bank of Saudi Arabia',
    'The central bank of Saudi Arabia',
    'bank'
  ),
  (
    'Bank of Korea',
    'The central bank of South Korea',
    'bank'
  ),
  (
    'Central Bank of UAE',
    'The central bank of the United Arab Emirates',
    'bank'
  ),
  (
    'Bank of Mexico',
    'The central bank of Mexico',
    'bank'
  );