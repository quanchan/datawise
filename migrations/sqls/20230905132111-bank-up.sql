create table if not exists bank (
    id serial primary key,
    name varchar(255) not null,
    description text,
    entity_meta_id int not null,
    foreign key (entity_meta_id) references entity_meta(id)
);

insert into entity_meta (id, display_name, table_name, standalone, custom) values
    (16, 'Bank', 'bank', false, false);

insert into column_meta (display_name, column_name, data_type, entity_meta_id) values
    ('Name', 'name', 'varchar(255)', 16);

insert into column_meta (display_name, column_name, data_type, entity_meta_id) values
    ('Description', 'description', 'text', 16);

insert into bank (name, description, entity_meta_id) values ('Commonwealth Bank', 'One of the largest banks in Australia', 16);
insert into bank (name, description, entity_meta_id) values ('Westpac Banking Corporation', 'An Australian bank and financial services provider', 16);
insert into bank (name, description, entity_meta_id) values ('ANZ Bank', 'A major Australian banking and financial services group', 16);
insert into bank (name, description, entity_meta_id) values ('National Australia Bank', 'One of the four largest financial institutions in Australia', 16);
insert into bank (name, description, entity_meta_id) values ('Macquarie Bank', 'A diversified financial services group', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of Queensland', 'A regional bank in Australia', 16);
insert into bank (name, description, entity_meta_id) values ('Suncorp Group', 'An Australian finance, insurance, and banking corporation', 16);
insert into bank (name, description, entity_meta_id) values ('Bendigo and Adelaide Bank', 'An Australian financial institution', 16);
insert into bank (name, description, entity_meta_id) values ('ME Bank', 'An Australian direct bank', 16);
insert into bank (name, description, entity_meta_id) values ('ING Australia', 'An Australian banking and financial services provider', 16);

insert into bank (name, description, entity_meta_id) values ('AMP Bank', 'An Australian retail and corporate bank', 16);
insert into bank (name, description, entity_meta_id) values ('Heritage Bank', 'A customer-owned bank in Australia', 16);
insert into bank (name, description, entity_meta_id) values ('Beyond Bank', 'An Australian customer-owned bank', 16);
insert into bank (name, description, entity_meta_id) values ('Teachers Mutual Bank', 'An Australian financial institution', 16);
insert into bank (name, description, entity_meta_id) values ('CUA', 'A credit union in Australia', 16);
insert into bank (name, description, entity_meta_id) values ('Greater Bank', 'An Australian customer-owned bank', 16);
insert into bank (name, description, entity_meta_id) values ('Bankwest', 'A division of Commonwealth Bank in Australia', 16);
insert into bank (name, description, entity_meta_id) values ('Police Bank', 'An Australian financial institution', 16);
insert into bank (name, description, entity_meta_id) values ('P&N Bank', 'A Western Australian-based bank', 16);
insert into bank (name, description, entity_meta_id) values ('Bank Australia', 'An Australian customer-owned bank', 16);

-- Global Banks
insert into bank (name, description, entity_meta_id) values ('JPMorgan Chase', 'A multinational investment bank and financial services holding company', 16);
insert into bank (name, description, entity_meta_id) values ('Citigroup', 'An American multinational investment bank and financial services corporation', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of America', 'An American multinational investment bank and financial services corporation', 16);
insert into bank (name, description, entity_meta_id) values ('Wells Fargo', 'An American multinational financial services company', 16);
insert into bank (name, description, entity_meta_id) values ('HSBC Holdings', 'A British multinational investment bank and financial services holding company', 16);
insert into bank (name, description, entity_meta_id) values ('Mitsubishi UFJ Financial Group', 'A Japanese bank holding and financial services company', 16);
insert into bank (name, description, entity_meta_id) values ('BNP Paribas', 'A French international banking group', 16);
insert into bank (name, description, entity_meta_id) values ('Société Générale', 'A French multinational investment bank and financial services company', 16);
insert into bank (name, description, entity_meta_id) values ('Barclays', 'A British multinational investment bank and financial services company', 16);
insert into bank (name, description, entity_meta_id) values ('Credit Suisse', 'A Swiss multinational investment bank and financial services company', 16);
insert into bank (name, description, entity_meta_id) values ('UBS Group', 'A Swiss multinational investment bank and financial services company', 16);
insert into bank (name, description, entity_meta_id) values ('Deutsche Bank', 'A German multinational investment bank and financial services company', 16);
insert into bank (name, description, entity_meta_id) values ('Standard Chartered', 'A British multinational banking and financial services company', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of China', 'One of the largest banks in China', 16);
insert into bank (name, description, entity_meta_id) values ('Industrial and Commercial Bank of China', 'The largest bank in China', 16);
insert into bank (name, description, entity_meta_id) values ('China Construction Bank', 'One of the "big four" banks in China', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of Japan', 'The central bank of Japan', 16);
insert into bank (name, description, entity_meta_id) values ('Reserve Bank of India', 'The central bank of India', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of England', 'The central bank of the United Kingdom', 16);
insert into bank (name, description, entity_meta_id) values ('European Central Bank', 'The central bank for the euro and administers monetary policy within the Eurozone', 16);
insert into bank (name, description, entity_meta_id) values ('Swiss National Bank', 'The central bank of Switzerland', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of Canada', 'The central bank of Canada', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of Australia', 'The central bank of Australia', 16);
insert into bank (name, description, entity_meta_id) values ('Reserve Bank of New Zealand', 'The central bank of New Zealand', 16);
insert into bank (name, description, entity_meta_id) values ('Brazilian Central Bank', 'The central bank of Brazil', 16);
insert into bank (name, description, entity_meta_id) values ('Central Bank of Russia', 'The central bank of Russia', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of South Africa', 'The central bank of South Africa', 16);
insert into bank (name, description, entity_meta_id) values ('Central Bank of Saudi Arabia', 'The central bank of Saudi Arabia', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of Korea', 'The central bank of South Korea', 16);
insert into bank (name, description, entity_meta_id) values ('Central Bank of UAE', 'The central bank of the United Arab Emirates', 16);
insert into bank (name, description, entity_meta_id) values ('Bank of Mexico', 'The central bank of Mexico', 16);
