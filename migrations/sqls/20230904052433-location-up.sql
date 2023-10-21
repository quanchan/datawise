/* Replace with your SQL commands */
create table
  if not exists location (
    id serial primary key, -- An automatic primary key for easier referencing
    street_address varchar(255) not null,
    suburb_neighbourhood varchar(100),
    city varchar(100),
    state_province varchar(100),
    postcode varchar(20),
    country varchar(100) not null,
    region varchar(100),
    entity_meta_table varchar(255) not null,
    constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta (table_name) on delete cascade
  );

insert into
  entity_meta (
    display_name,
    description,
    table_name,
    standalone,
    custom
  )
values
  ('Location', '', 'location', false, false);

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
    'Street Address',
    'Complete Address of the Location',
    '123 Main St',
    'street_address',
    'varchar(255)',
    'entityVarchar',
    'location'
  ),
  (
    'Suburb/Neighbourhood',
    'Suburb/Neighbourhood of the Location',
    'Central, Redfern, Burwood',
    'suburb_neighbourhood',
    'varchar(100)',
    'entityVarchar',
    'location'
  ),
  (
    'City',
    'City of the Location',
    'Sydney, Melbourne, Brisbane',
    'city',
    'varchar(100)',
    'entityVarchar',
    'location'
  ),
  (
    'State/Province',
    'State or Province of the Location',
    'NSW, VIC',
    'state_province',
    'varchar(100)',
    'entityVarchar',
    'location'
  ),
  (
    'Postcode',
    'Postal Code of the Location',
    '90001',
    'postcode',
    'varchar(20)',
    'entityVarchar',
    'location'
  ),
  (
    'Country',
    'Country of the Location',
    'USA, Australia',
    'country',
    'varchar(100)',
    'entityVarchar',
    'location'
  ),
  (
    'Region',
    'Region of the Location',
    'Asia, Europe, North America, South America, Africa, Oceania',
    'region',
    'varchar(100)',
    'entityVarchar',
    'location'
  );

insert into
  location (
    street_address,
    suburb_neighbourhood,
    city,
    state_province,
    postcode,
    country,
    region,
    entity_meta_table
  )
values
  (
    '123 Main St',
    'Downtown',
    'Los Angeles',
    'California',
    '90001',
    'USA',
    'North America',
    'location'
  ),
  (
    '45 Queen St',
    'Central Business District',
    'Brisbane',
    'Queensland',
    '4000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Jinnah Road',
    'Saddar',
    'Karachi',
    'Sindh',
    '75500',
    'Pakistan',
    'Asia',
    'location'
  ),
  (
    '78 King Edward Street',
    'Oxford',
    'Oxford',
    'Oxfordshire',
    'OX1 4HB',
    'UK',
    'Europe',
    'location'
  ),
  (
    '22 Rue de Rivoli',
    'Le Marais',
    'Paris',
    'Île-de-France',
    '75004',
    'France',
    'Europe',
    'location'
  ),
  (
    '789 Elm St',
    'Parkside',
    'Chicago',
    'Illinois',
    '60601',
    'USA',
    'North America',
    'location'
  ),
  (
    '33 George St',
    'Sydney CBD',
    'Sydney',
    'New South Wales',
    '2000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '55 Pahlavi Ave',
    'Tehran City Center',
    'Tehran',
    'Tehran',
    '11368',
    'Iran',
    'Asia',
    'location'
  ),
  (
    '22 Princes Street',
    'Edinburgh',
    'Edinburgh',
    'Scotland',
    'EH2 2AS',
    'UK',
    'Europe',
    'location'
  ),
  (
    '5 Piazza di Spagna',
    'Spagna',
    'Rome',
    'Lazio',
    '00187',
    'Italy',
    'Europe',
    'location'
  ),
  (
    '1 Alexanderplatz',
    'Mitte',
    'Berlin',
    'Berlin',
    '10178',
    'Germany',
    'Europe',
    'location'
  ),
  (
    '20 Hysan Ave',
    'Causeway Bay',
    'Hong Kong',
    'Hong Kong',
    '',
    'Hong Kong',
    'Asia',
    'location'
  ),
  (
    'Av. Paulista, 1000',
    'Bela Vista',
    'São Paulo',
    'São Paulo',
    '01310-100',
    'Brazil',
    'South America',
    'location'
  ),
  (
    '7 Avenida Central',
    'Barrio Amón',
    'San Jose',
    'San Jose',
    '10101',
    'Costa Rica',
    'Central America',
    'location'
  ),
  (
    '10 Via della Conciliazione',
    'Borgo',
    'Vatican City',
    'Vatican City',
    '00120',
    'Vatican City',
    'Europe',
    'location'
  ),
  (
    '101 Park Street',
    'Sydney CBD',
    'Sydney',
    'New South Wales',
    '2000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '55 Hunter Street',
    'Newcastle West',
    'Newcastle',
    'New South Wales',
    '2300',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '20 Pacific Highway',
    'North Sydney',
    'Sydney',
    'New South Wales',
    '2060',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 Crown Street',
    'Wollongong CBD',
    'Wollongong',
    'New South Wales',
    '2500',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '33 Macquarie Street',
    'Parramatta',
    'Sydney',
    'New South Wales',
    '2150',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '12 William Street',
    'Bathurst',
    'Bathurst',
    'New South Wales',
    '2795',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '45 Russell Street',
    'Camden',
    'Sydney',
    'New South Wales',
    '2570',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 Bridge Street',
    'Albury CBD',
    'Albury',
    'New South Wales',
    '2640',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '18 George Street',
    'Gosford',
    'Gosford',
    'New South Wales',
    '2250',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '6 Victoria Street',
    'Orange',
    'Orange',
    'New South Wales',
    '2800',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '30 George Street',
    'Parramatta',
    'Sydney',
    'New South Wales',
    '2150',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '5 Darling Drive',
    'Darling Harbour',
    'Sydney',
    'New South Wales',
    '2000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '1 Kingsway',
    'Cronulla',
    'Sydney',
    'New South Wales',
    '2230',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '21 Market Street',
    'Wollongong CBD',
    'Wollongong',
    'New South Wales',
    '2500',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '10 Macquarie Street',
    'Liverpool',
    'Sydney',
    'New South Wales',
    '2170',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '55 High Street',
    'Penrith',
    'Penrith',
    'New South Wales',
    '2750',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 Belmore Street',
    'Tamworth',
    'Tamworth',
    'New South Wales',
    '2340',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '12 Crown Street',
    'Kiama',
    'Kiama',
    'New South Wales',
    '2533',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '3 Main Road',
    'Dubbo',
    'Dubbo',
    'New South Wales',
    '2830',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '16 Bridge Street',
    'Maitland',
    'Maitland',
    'New South Wales',
    '2320',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 King Street',
    'Penrith',
    'Penrith',
    'New South Wales',
    '2750',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '14 Macquarie Street',
    'Parramatta',
    'Sydney',
    'New South Wales',
    '2150',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '3 Crown Street',
    'Sutherland',
    'Sydney',
    'New South Wales',
    '2232',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '25 Victoria Street',
    'Central Coast',
    'Gosford',
    'New South Wales',
    '2250',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 High Street',
    'Wollongong CBD',
    'Wollongong',
    'New South Wales',
    '2500',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '40 Bridge Street',
    'Parramatta',
    'Sydney',
    'New South Wales',
    '2150',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Princes Highway',
    'Sutherland',
    'Sydney',
    'New South Wales',
    '2232',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '2 Campbell Street',
    'Orange',
    'Orange',
    'New South Wales',
    '2800',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '123 Collins Street',
    'Melbourne CBD',
    'Melbourne',
    'Victoria',
    '3000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '45 Swanston Street',
    'Carlton',
    'Melbourne',
    'Victoria',
    '3053',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 Bourke Street',
    'Docklands',
    'Melbourne',
    'Victoria',
    '3008',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '21 St Kilda Road',
    'St Kilda',
    'Melbourne',
    'Victoria',
    '3182',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '55 Chapel Street',
    'South Yarra',
    'Melbourne',
    'Victoria',
    '3141',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '30 Flinders Street',
    'Geelong CBD',
    'Geelong',
    'Victoria',
    '3220',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Pakington Street',
    'Geelong West',
    'Geelong',
    'Victoria',
    '3218',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '2 Victoria Parade',
    'Collingwood',
    'Melbourne',
    'Victoria',
    '3066',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '10 Toorak Road',
    'South Yarra',
    'Melbourne',
    'Victoria',
    '3141',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '40 Johnston Street',
    'Fitzroy',
    'Melbourne',
    'Victoria',
    '3065',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '17 Chapel Street',
    'Prahran',
    'Melbourne',
    'Victoria',
    '3181',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '5 Little Collins Street',
    'Melbourne CBD',
    'Melbourne',
    'Victoria',
    '3000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '30 Acland Street',
    'St Kilda',
    'Melbourne',
    'Victoria',
    '3182',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '9 Lonsdale Street',
    'Dandenong',
    'Dandenong',
    'Victoria',
    '3175',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '22 Swan Street',
    'Richmond',
    'Melbourne',
    'Victoria',
    '3121',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '12 Bourke Street',
    'Geelong CBD',
    'Geelong',
    'Victoria',
    '3220',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '41 Smith Street',
    'Collingwood',
    'Melbourne',
    'Victoria',
    '3066',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '14 Toorak Road',
    'South Yarra',
    'Melbourne',
    'Victoria',
    '3141',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '35 Lygon Street',
    'Carlton',
    'Melbourne',
    'Victoria',
    '3053',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '3 Fitzroy Street',
    'Fitzroy',
    'Melbourne',
    'Victoria',
    '3065',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '27 Collins Street',
    'Melbourne CBD',
    'Melbourne',
    'Victoria',
    '3000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '50 Spencer Street',
    'Docklands',
    'Melbourne',
    'Victoria',
    '3008',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 Chapel Street',
    'Windsor',
    'Melbourne',
    'Victoria',
    '3181',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Bourke Street',
    'Collingwood',
    'Melbourne',
    'Victoria',
    '3066',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '40 High Street',
    'Geelong CBD',
    'Geelong',
    'Victoria',
    '3220',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 Swanston Street',
    'Carlton',
    'Melbourne',
    'Victoria',
    '3053',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '19 Toorak Road',
    'South Yarra',
    'Melbourne',
    'Victoria',
    '3141',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '55 Lonsdale Street',
    'Dandenong',
    'Dandenong',
    'Victoria',
    '3175',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '25 Smith Street',
    'Fitzroy',
    'Melbourne',
    'Victoria',
    '3065',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '12 Acland Street',
    'St Kilda',
    'Melbourne',
    'Victoria',
    '3182',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '123 Queen Street',
    'Brisbane CBD',
    'Brisbane',
    'Queensland',
    '4000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '55 South Bank Parklands',
    'South Brisbane',
    'Brisbane',
    'Queensland',
    '4101',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 Surfers Paradise Blvd',
    'Surfers Paradise',
    'Gold Coast',
    'Queensland',
    '4217',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '21 Sunshine Beach Road',
    'Noosa Heads',
    'Noosa',
    'Queensland',
    '4567',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '45 Gympie Terrace',
    'Noosaville',
    'Noosa',
    'Queensland',
    '4566',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '30 Marine Parade',
    'Southport',
    'Gold Coast',
    'Queensland',
    '4215',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Eagle Street',
    'Brisbane CBD',
    'Brisbane',
    'Queensland',
    '4000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '40 Cavill Avenue',
    'Surfers Paradise',
    'Gold Coast',
    'Queensland',
    '4217',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 Hastings Street',
    'Noosa Heads',
    'Noosa',
    'Queensland',
    '4567',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '10 Main Beach Road',
    'Surfers Paradise',
    'Gold Coast',
    'Queensland',
    '4217',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '35 Queen Street',
    'Brisbane CBD',
    'Brisbane',
    'Queensland',
    '4000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '18 South Bank Parklands',
    'South Brisbane',
    'Brisbane',
    'Queensland',
    '4101',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 Surfers Paradise Blvd',
    'Surfers Paradise',
    'Gold Coast',
    'Queensland',
    '4217',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '29 Sunshine Beach Road',
    'Noosa Heads',
    'Noosa',
    'Queensland',
    '4567',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '47 Gympie Terrace',
    'Noosaville',
    'Noosa',
    'Queensland',
    '4566',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '22 Marine Parade',
    'Southport',
    'Gold Coast',
    'Queensland',
    '4215',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '14 Eagle Street',
    'Brisbane CBD',
    'Brisbane',
    'Queensland',
    '4000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '33 Cavill Avenue',
    'Surfers Paradise',
    'Gold Coast',
    'Queensland',
    '4217',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '10 Hastings Street',
    'Noosa Heads',
    'Noosa',
    'Queensland',
    '4567',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '19 Main Beach Road',
    'Surfers Paradise',
    'Gold Coast',
    'Queensland',
    '4217',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '10 National Circuit',
    'Barton',
    'Canberra',
    'Australian Capital Territory',
    '2600',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '5 London Circuit',
    'Canberra CBD',
    'Canberra',
    'Australian Capital Territory',
    '2601',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '20 Constitution Avenue',
    'Parkes',
    'Canberra',
    'Australian Capital Territory',
    '2600',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Commonwealth Avenue',
    'Yarralumla',
    'Canberra',
    'Australian Capital Territory',
    '2600',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '30 Northbourne Avenue',
    'Braddon',
    'Canberra',
    'Australian Capital Territory',
    '2612',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '25 London Circuit',
    'Canberra CBD',
    'Canberra',
    'Australian Capital Territory',
    '2601',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 Anzac Parade',
    'Campbell',
    'Canberra',
    'Australian Capital Territory',
    '2612',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '12 National Circuit',
    'Barton',
    'Canberra',
    'Australian Capital Territory',
    '2600',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '22 Constitution Avenue',
    'Parkes',
    'Canberra',
    'Australian Capital Territory',
    '2600',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 Commonwealth Avenue',
    'Yarralumla',
    'Canberra',
    'Australian Capital Territory',
    '2600',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '10 St Georges Terrace',
    'Perth CBD',
    'Perth',
    'Western Australia',
    '6000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '45 Barrack Street',
    'Perth CBD',
    'Perth',
    'Western Australia',
    '6000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '22 Hay Street',
    'Subiaco',
    'Perth',
    'Western Australia',
    '6008',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '5 South Terrace',
    'Fremantle',
    'Fremantle',
    'Western Australia',
    '6160',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Mounts Bay Road',
    'Kings Park',
    'Perth',
    'Western Australia',
    '6005',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '30 Canning Highway',
    'South Perth',
    'Perth',
    'Western Australia',
    '6151',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '12 Murray Street',
    'Northbridge',
    'Perth',
    'Western Australia',
    '6003',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '19 Stirling Highway',
    'Nedlands',
    'Perth',
    'Western Australia',
    '6009',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 Ocean Drive',
    'Scarborough',
    'Perth',
    'Western Australia',
    '6019',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 Marine Terrace',
    'Geraldton',
    'Geraldton',
    'Western Australia',
    '6530',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '5 Salamanca Place',
    'Battery Point',
    'Hobart',
    'Tasmania',
    '7004',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '18 Elizabeth Street',
    'Launceston CBD',
    'Launceston',
    'Tasmania',
    '7250',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '30 Cimitiere Street',
    'Launceston CBD',
    'Launceston',
    'Tasmania',
    '7250',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '12 Davey Street',
    'Hobart CBD',
    'Hobart',
    'Tasmania',
    '7000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '25 Liverpool Street',
    'Hobart CBD',
    'Hobart',
    'Tasmania',
    '7000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 Macquarie Street',
    'Hobart CBD',
    'Hobart',
    'Tasmania',
    '7000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Murray Street',
    'Devonport',
    'Devonport',
    'Tasmania',
    '7310',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '40 Main Road',
    'Moonah',
    'Hobart',
    'Tasmania',
    '7009',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 West Tamar Road',
    'Riverside',
    'Launceston',
    'Tasmania',
    '7250',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '22 Franklin Wharf',
    'Hobart CBD',
    'Hobart',
    'Tasmania',
    '7000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '15 Rundle Mall',
    'Adelaide CBD',
    'Adelaide',
    'South Australia',
    '5000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '10 King William Street',
    'Adelaide CBD',
    'Adelaide',
    'South Australia',
    '5000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '30 Gouger Street',
    'Adelaide CBD',
    'Adelaide',
    'South Australia',
    '5000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '8 O''Connell Street',
    'North Adelaide',
    'Adelaide',
    'South Australia',
    '5006',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '25 The Parade',
    'Norwood',
    'Adelaide',
    'South Australia',
    '5067',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '12 South Terrace',
    'Adelaide CBD',
    'Adelaide',
    'South Australia',
    '5000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '40 Hindley Street',
    'Adelaide CBD',
    'Adelaide',
    'South Australia',
    '5000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '7 Morphett Street',
    'Adelaide CBD',
    'Adelaide',
    'South Australia',
    '5000',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '22 Rundle Street',
    'Kent Town',
    'Adelaide',
    'South Australia',
    '5067',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '17 Jetty Road',
    'Glenelg',
    'Adelaide',
    'South Australia',
    '5045',
    'Australia',
    'Oceania',
    'location'
  ),
  (
    '123 Main Street',
    'Midtown',
    'New York',
    'New York',
    '10001',
    'USA',
    'North America',
    'location'
  ),
  (
    '45 Elm Street',
    'Downtown LA',
    'Los Angeles',
    'California',
    '90001',
    'USA',
    'North America',
    'location'
  ),
  (
    '8 Peachtree Street',
    'Downtown Atlanta',
    'Atlanta',
    'Georgia',
    '30301',
    'USA',
    'North America',
    'location'
  ),
  (
    '21 Market Street',
    'Financial District',
    'San Francisco',
    'California',
    '94101',
    'USA',
    'North America',
    'location'
  ),
  (
    '55 Washington Avenue',
    'Federal Triangle',
    'Washington, D.C.',
    'District of Columbia',
    '20001',
    'USA',
    'North America',
    'location'
  ),
  (
    '30 State Street',
    'Downtown Crossing',
    'Boston',
    'Massachusetts',
    '02101',
    'USA',
    'North America',
    'location'
  ),
  (
    '15 Michigan Avenue',
    'The Loop',
    'Chicago',
    'Illinois',
    '60601',
    'USA',
    'North America',
    'location'
  ),
  (
    '40 Canal Street',
    'French Quarter',
    'New Orleans',
    'Louisiana',
    '70101',
    'USA',
    'North America',
    'location'
  ),
  (
    '7 Capitol Hill',
    'Civic Center',
    'Denver',
    'Colorado',
    '80201',
    'USA',
    'North America',
    'location'
  ),
  (
    '22 Liberty Street',
    'Old City',
    'Philadelphia',
    'Pennsylvania',
    '19101',
    'USA',
    'North America',
    'location'
  ),
  (
    '123 Oak Street',
    'Midtown',
    'New York',
    'New York',
    '10003',
    'USA',
    'North America',
    'location'
  ),
  (
    '789 Elm Avenue',
    'Downtown LA',
    'Los Angeles',
    'California',
    '90007',
    'USA',
    'North America',
    'location'
  ),
  (
    '456 Peachtree Road',
    'Buckhead',
    'Atlanta',
    'Georgia',
    '30305',
    'USA',
    'North America',
    'location'
  ),
  (
    '321 Pine Lane',
    'Nob Hill',
    'San Francisco',
    'California',
    '94109',
    'USA',
    'North America',
    'location'
  ),
  (
    '555 Cherry Boulevard',
    'Georgetown',
    'Washington, D.C.',
    'District of Columbia',
    '20007',
    'USA',
    'North America',
    'location'
  ),
  (
    '876 Maple Street',
    'Beacon Hill',
    'Boston',
    'Massachusetts',
    '02108',
    'USA',
    'North America',
    'location'
  ),
  (
    '987 Willow Avenue',
    'Lincoln Park',
    'Chicago',
    'Illinois',
    '60614',
    'USA',
    'North America',
    'location'
  ),
  (
    '111 River Road',
    'French Quarter',
    'New Orleans',
    'Louisiana',
    '70116',
    'USA',
    'North America',
    'location'
  ),
  (
    '222 Elm Street',
    'Capitol Hill',
    'Denver',
    'Colorado',
    '80203',
    'USA',
    'North America',
    'location'
  ),
  (
    '333 Oak Avenue',
    'Rittenhouse Square',
    'Philadelphia',
    'Pennsylvania',
    '19103',
    'USA',
    'North America',
    'location'
  ),
  (
    '456 Pine Street',
    'East Village',
    'New York',
    'New York',
    '10009',
    'USA',
    'North America',
    'location'
  ),
  (
    '987 Maple Road',
    'Santa Monica',
    'Los Angeles',
    'California',
    '90401',
    'USA',
    'North America',
    'location'
  ),
  (
    '654 Birch Drive',
    'Decatur',
    'Atlanta',
    'Georgia',
    '30030',
    'USA',
    'North America',
    'location'
  ),
  (
    '222 Walnut Street',
    'Mission District',
    'San Francisco',
    'California',
    '94110',
    'USA',
    'North America',
    'location'
  ),
  (
    '777 Willow Lane',
    'Dupont Circle',
    'Washington, D.C.',
    'District of Columbia',
    '20009',
    'USA',
    'North America',
    'location'
  ),
  (
    '333 Oak Avenue',
    'Back Bay',
    'Boston',
    'Massachusetts',
    '02116',
    'USA',
    'North America',
    'location'
  ),
  (
    '111 Maple Road',
    'Lakeview',
    'Chicago',
    'Illinois',
    '60657',
    'USA',
    'North America',
    'location'
  ),
  (
    '888 Elm Street',
    'Uptown',
    'New Orleans',
    'Louisiana',
    '70118',
    'USA',
    'North America',
    'location'
  ),
  (
    '555 Pine Avenue',
    'Highland',
    'Denver',
    'Colorado',
    '80211',
    'USA',
    'North America',
    'location'
  ),
  (
    '456 Birch Lane',
    'Old City',
    'Philadelphia',
    'Pennsylvania',
    '19106',
    'USA',
    'North America',
    'location'
  ),
  (
    '123 Lone Star Road',
    'Downtown',
    'Austin',
    'Texas',
    '78701',
    'USA',
    'North America',
    'location'
  ),
  (
    '45 Alamo Drive',
    'Alamo Heights',
    'San Antonio',
    'Texas',
    '78209',
    'USA',
    'North America',
    'location'
  ),
  (
    '8 Guadalupe Street',
    'West Campus',
    'Austin',
    'Texas',
    '78705',
    'USA',
    'North America',
    'location'
  ),
  (
    '21 Riverwalk Avenue',
    'Downtown',
    'San Antonio',
    'Texas',
    '78205',
    'USA',
    'North America',
    'location'
  ),
  (
    '55 Mockingbird Lane',
    'Preston Hollow',
    'Dallas',
    'Texas',
    '75230',
    'USA',
    'North America',
    'location'
  ),
  (
    '123 Broadway',
    'Midtown',
    'New York',
    'New York',
    '10012',
    'USA',
    'North America',
    'location'
  ),
  (
    '45 5th Avenue',
    'Greenwich Village',
    'New York',
    'New York',
    '10003',
    'USA',
    'North America',
    'location'
  ),
  (
    '8 Wall Street',
    'Financial District',
    'New York',
    'New York',
    '10005',
    'USA',
    'North America',
    'location'
  ),
  (
    '21 Madison Avenue',
    'Flatiron District',
    'New York',
    'New York',
    '10010',
    'USA',
    'North America',
    'location'
  ),
  (
    '55 Park Place',
    'Tribeca',
    'New York',
    'New York',
    '10007',
    'USA',
    'North America',
    'location'
  ),
  (
    '123 Ocean Avenue',
    'Old Port',
    'Portland',
    'Maine',
    '04101',
    'USA',
    'North America',
    'location'
  ),
  (
    '45 Harbor Drive',
    'East End',
    'Portland',
    'Maine',
    '04102',
    'USA',
    'North America',
    'location'
  ),
  (
    '8 Pine Street',
    'West End',
    'Portland',
    'Maine',
    '04103',
    'USA',
    'North America',
    'location'
  ),
  (
    '21 Lighthouse Road',
    'South Portland',
    'South Portland',
    'Maine',
    '04106',
    'USA',
    'North America',
    'location'
  ),
  (
    '55 Maple Avenue',
    'North Deering',
    'Portland',
    'Maine',
    '04104',
    'USA',
    'North America',
    'location'
  ),
  (
    '123 Pacific Avenue',
    'Santa Monica',
    'Los Angeles',
    'California',
    '90401',
    'USA',
    'North America',
    'location'
  ),
  (
    '45 Hollywood Boulevard',
    'Hollywood',
    'Los Angeles',
    'California',
    '90028',
    'USA',
    'North America',
    'location'
  ),
  (
    '8 Silicon Valley Road',
    'Palo Alto',
    'Palo Alto',
    'California',
    '94301',
    'USA',
    'North America',
    'location'
  ),
  (
    '21 Golden Gate Avenue',
    'San Francisco',
    'San Francisco',
    'California',
    '94102',
    'USA',
    'North America',
    'location'
  ),
  (
    '55 Santa Clara Street',
    'Santa Clara',
    'Santa Clara',
    'California',
    '95050',
    'USA',
    'North America',
    'location'
  ),
  (
    '30 Pacific Coast Highway',
    'Malibu',
    'Malibu',
    'California',
    '90265',
    'USA',
    'North America',
    'location'
  ),
  (
    '15 Sunset Boulevard',
    'Beverly Hills',
    'Beverly Hills',
    'California',
    '90210',
    'USA',
    'North America',
    'location'
  ),
  (
    '40 Wine Country Drive',
    'Napa',
    'Napa',
    'California',
    '94558',
    'USA',
    'North America',
    'location'
  ),
  (
    '7 Orange County Road',
    'Irvine',
    'Irvine',
    'California',
    '92618',
    'USA',
    'North America',
    'location'
  ),
  (
    '22 Golden Gate Bridge Avenue',
    'Sausalito',
    'Sausalito',
    'California',
    '94965',
    'USA',
    'North America',
    'location'
  ),
  (
    '123 Orchard Road',
    'Orchard',
    'Singapore',
    '',
    '238841',
    'Singapore',
    'Asia',
    'location'
  ),
  (
    '45 Karimkhan Street',
    'Tehran',
    'Tehran',
    'Tehran',
    '11369',
    'Iran',
    'Asia',
    'location'
  ),
  (
    '8 Harajuku Street',
    'Shibuya',
    'Tokyo',
    'Tokyo',
    '150-0001',
    'Japan',
    'Asia',
    'location'
  ),
  (
    '21 Beijing Road',
    'Huangpu',
    'Shanghai',
    'Shanghai',
    '200001',
    'China',
    'Asia',
    'location'
  ),
  (
    '55 Galle Face Road',
    'Colombo',
    'Colombo',
    'Western Province',
    '00100',
    'Sri Lanka',
    'Asia',
    'location'
  ),
  (
    '30 Sukhumvit Road',
    'Watthana',
    'Bangkok',
    '',
    '10110',
    'Thailand',
    'Asia',
    'location'
  ),
  (
    '15 Mahatma Gandhi Road',
    'Bangalore',
    'Bangalore',
    'Karnataka',
    '560001',
    'India',
    'Asia',
    'location'
  ),
  (
    '40 Sheikh Zayed Road',
    'Dubai',
    'Dubai',
    'Dubai',
    '00000',
    'United Arab Emirates',
    'Asia',
    'location'
  ),
  (
    '7 Seoul Street',
    'Jung-gu',
    'Seoul',
    '',
    '04631',
    'South Korea',
    'Asia',
    'location'
  ),
  (
    '22 Rama IV Road',
    'Pathum Wan',
    'Bangkok',
    '',
    '10330',
    'Thailand',
    'Asia',
    'location'
  ),
  (
    '123 Forbidden City',
    'Dongcheng',
    'Beijing',
    '',
    '100000',
    'China',
    'Asia',
    'location'
  ),
  (
    '45 Petronas Towers',
    'Kuala Lumpur City Centre',
    'Kuala Lumpur',
    '',
    '50088',
    'Malaysia',
    'Asia',
    'location'
  ),
  (
    '8 National Palace Museum Road',
    'Shilin',
    'Taipei',
    '',
    '111',
    'Taiwan',
    'Asia',
    'location'
  ),
  (
    '21 Rajpath',
    'New Delhi',
    'New Delhi',
    'Delhi',
    '110001',
    'India',
    'Asia',
    'location'
  ),
  (
    '55 Bosphorus Bridge Road',
    'Istanbul',
    'Istanbul',
    'Istanbul',
    '34353',
    'Turkey',
    'Asia',
    'location'
  ),
  (
    '30 Sheikh Zayed Road',
    'Dubai',
    'Dubai',
    'Dubai',
    '00000',
    'United Arab Emirates',
    'Asia',
    'location'
  ),
  (
    '15 Siam Square',
    'Pathum Wan',
    'Bangkok',
    '',
    '10330',
    'Thailand',
    'Asia',
    'location'
  ),
  (
    '40 Hanuman Dhoka Durbar Square',
    'Kathmandu',
    'Kathmandu',
    'Bagmati',
    '44600',
    'Nepal',
    'Asia',
    'location'
  ),
  (
    '7 Marina Bay Sands',
    'Marina Bay',
    'Singapore',
    '',
    '018956',
    'Singapore',
    'Asia',
    'location'
  ),
  (
    '22 Burj Khalifa',
    'Dubai',
    'Dubai',
    'Dubai',
    '00000',
    'United Arab Emirates',
    'Asia',
    'location'
  ),
  (
    '123 Angkor Wat Road',
    'Siem Reap',
    'Siem Reap',
    '',
    '17252',
    'Cambodia',
    'Asia',
    'location'
  ),
  (
    '45 Myeongdong Street',
    'Jung-gu',
    'Seoul',
    '',
    '04536',
    'South Korea',
    'Asia',
    'location'
  ),
  (
    '8 Taj Mahal Road',
    'Agra',
    'Agra',
    'Uttar Pradesh',
    '282001',
    'India',
    'Asia',
    'location'
  ),
  (
    '21 Petronas Towers',
    'Kuala Lumpur City Centre',
    'Kuala Lumpur',
    'Kuala Lumpur',
    '50088',
    'Malaysia',
    'Asia',
    'location'
  ),
  (
    '55 Shinjuku Road',
    'Shinjuku',
    'Tokyo',
    'Tokyo',
    '160-0022',
    'Japan',
    'Asia',
    'location'
  ),
  (
    '30 Victoria Peak Road',
    'Central',
    'Hong Kong',
    '',
    '',
    'Hong Kong',
    'Asia',
    'location'
  ),
  (
    '15 The Grand Palace',
    'Phra Nakhon',
    'Bangkok',
    'Bangkok',
    '10200',
    'Thailand',
    'Asia',
    'location'
  ),
  (
    '40 Lotus Temple Lane',
    'New Delhi',
    'New Delhi',
    'Delhi',
    '110019',
    'India',
    'Asia',
    'location'
  ),
  (
    '7 Hanuman Dhoka Durbar Square',
    'Kathmandu',
    'Kathmandu',
    'Bagmati',
    '44600',
    'Nepal',
    'Asia',
    'location'
  ),
  (
    '22 Burj Al Arab Street',
    'Dubai',
    'Dubai',
    'Dubai',
    '00000',
    'United Arab Emirates',
    'Asia',
    'location'
  ),
  (
    '123 Hoan Kiem Lake Street',
    'Hoan Kiem',
    'Hanoi',
    'Hanoi',
    '10000',
    'Vietnam',
    'Asia',
    'location'
  ),
  (
    '45 Ben Thanh Market Street',
    'District 1',
    'Ho Chi Minh City',
    'Ho Chi Minh City',
    '70000',
    'Vietnam',
    'Asia',
    'location'
  ),
  (
    '8 Hoi An Old Town Road',
    'Hoi An',
    'Hoi An',
    'Quang Nam',
    '560000',
    'Vietnam',
    'Asia',
    'location'
  ),
  (
    '21 Da Nang Beach Road',
    'Da Nang',
    'Da Nang',
    'Da Nang',
    '550000',
    'Vietnam',
    'Asia',
    'location'
  ),
  (
    '55 Nha Trang Beach Road',
    'Nha Trang',
    'Nha Trang',
    'Khanh Hoa',
    '650000',
    'Vietnam',
    'Asia',
    'location'
  ),
  (
    '123 Champs-Élysées',
    'Champs-Élysées',
    'Paris',
    'Île-de-France',
    '75008',
    'France',
    'Europe',
    'location'
  ),
  (
    '45 Brandenburg Gate',
    'Mitte',
    'Berlin',
    'Berlin',
    '10117',
    'Germany',
    'Europe',
    'location'
  ),
  (
    '8 Colosseum Road',
    'Monti',
    'Rome',
    'Lazio',
    '00184',
    'Italy',
    'Europe',
    'location'
  ),
  (
    '21 St. Stephen''s Basilica Street',
    'Budapest',
    'Budapest',
    '',
    '1051',
    'Hungary',
    'Europe',
    'location'
  ),
  (
    '55 Acropolis Avenue',
    'Athens',
    'Athens',
    '',
    '10558',
    'Greece',
    'Europe',
    'location'
  ),
  (
    '30 Old Town Square',
    'Stare Mesto',
    'Prague',
    '',
    '11000',
    'Czech Republic',
    'Europe',
    'location'
  ),
  (
    '15 La Rambla',
    'Gothic Quarter',
    'Barcelona',
    'Catalonia',
    '08002',
    'Spain',
    'Europe',
    'location'
  ),
  (
    '40 Trinity College Green',
    'Dublin',
    'Dublin',
    '',
    '2',
    'Ireland',
    'Europe',
    'location'
  ),
  (
    '7 Buckingham Palace Road',
    'Westminster',
    'London',
    'England',
    'SW1W 0QP',
    'United Kingdom',
    'Europe',
    'location'
  ),
  (
    '22 Charles Bridge Street',
    'Prague',
    'Prague',
    '',
    '11000',
    'Czech Republic',
    'Europe',
    'location'
  ),
  (
    '123 Neuschwanstein Castle Road',
    'Hohenschwangau',
    'Füssen',
    'Bavaria',
    '87645',
    'Germany',
    'Europe',
    'location'
  ),
  (
    '45 Anne Frank House Street',
    'Jordaan',
    'Amsterdam',
    'North Holland',
    '1011 DV',
    'Netherlands',
    'Europe',
    'location'
  ),
  (
    '8 Edinburgh Castle Hill',
    'Edinburgh',
    'Edinburgh',
    'Scotland',
    'EH1 2NG',
    'United Kingdom',
    'Europe',
    'location'
  ),
  (
    '21 Piazza San Marco',
    'San Marco',
    'Venice',
    'Veneto',
    '30124',
    'Italy',
    'Europe',
    'location'
  ),
  (
    '55 Charles Bridge Street',
    'Prague',
    'Prague',
    '',
    '11000',
    'Czech Republic',
    'Europe',
    'location'
  ),
  (
    '30 Sagrada Familia Avenue',
    'Eixample',
    'Barcelona',
    'Catalonia',
    '08013',
    'Spain',
    'Europe',
    'location'
  ),
  (
    '15 Windsor Castle Road',
    'Windsor',
    'Windsor',
    'England',
    'SL4 1NJ',
    'United Kingdom',
    'Europe',
    'location'
  ),
  (
    '40 Vatican City Street',
    'Vatican City',
    'Vatican City',
    '',
    '00120',
    'Vatican City',
    'Europe',
    'location'
  ),
  (
    '7 Louvre Museum Street',
    'Louvre',
    'Paris',
    'Île-de-France',
    '75001',
    'France',
    'Europe',
    'location'
  ),
  (
    '22 Acropolis Museum Street',
    'Athens',
    'Athens',
    '',
    '11742',
    'Greece',
    'Europe',
    'location'
  ),
  (
    '123 Guinness Storehouse Street',
    'St. James''s Gate',
    'Dublin',
    'Dublin',
    '8',
    'Ireland',
    'Europe',
    'location'
  ),
  (
    '45 Palacio Real Street',
    'Madrid',
    'Madrid',
    '',
    '28013',
    'Spain',
    'Europe',
    'location'
  ),
  (
    '8 Berlin Wall Street',
    'Mitte',
    'Berlin',
    'Berlin',
    '10178',
    'Germany',
    'Europe',
    'location'
  ),
  (
    '21 Tower of London Road',
    'Tower Hill',
    'London',
    'England',
    'EC3N 4AB',
    'United Kingdom',
    'Europe',
    'location'
  ),
  (
    '55 Charles Bridge Street',
    'Prague',
    'Prague',
    '',
    '11000',
    'Czech Republic',
    'Europe',
    'location'
  ),
  (
    '30 Vatican Museums Street',
    'Vatican City',
    'Vatican City',
    '',
    '00120',
    'Vatican City',
    'Europe',
    'location'
  ),
  (
    '15 Anne Frank House Street',
    'Jordaan',
    'Amsterdam',
    'North Holland',
    '1011 DV',
    'Netherlands',
    'Europe',
    'location'
  ),
  (
    '40 Eiffel Tower Street',
    'Champ de Mars',
    'Paris',
    'Île-de-France',
    '75007',
    'France',
    'Europe',
    'location'
  ),
  (
    '7 Edinburgh Castle Hill',
    'Edinburgh',
    'Edinburgh',
    'Scotland',
    'EH1 2NG',
    'United Kingdom',
    'Europe',
    'location'
  ),
  (
    '22 Piazza San Marco',
    'San Marco',
    'Venice',
    'Veneto',
    '30124',
    'Italy',
    'Europe',
    'location'
  ),
  (
    '123 Copacabana Beach Avenue',
    'Copacabana',
    'Rio de Janeiro',
    'Rio de Janeiro',
    '22020-002',
    'Brazil',
    'South America',
    'location'
  ),
  (
    '45 La Boca Street',
    'La Boca',
    'Buenos Aires',
    'Buenos Aires',
    '1160',
    'Argentina',
    'South America',
    'location'
  ),
  (
    '8 Machu Picchu Road',
    'Aguas Calientes',
    'Cusco',
    'Cusco',
    '08002',
    'Peru',
    'South America',
    'location'
  ),
  (
    '21 Sugarloaf Mountain Road',
    'Urca',
    'Rio de Janeiro',
    'Rio de Janeiro',
    '22291-270',
    'Brazil',
    'South America',
    'location'
  ),
  (
    '55 Plaza de Mayo Street',
    'Microcentro',
    'Buenos Aires',
    'Buenos Aires',
    '1004',
    'Argentina',
    'South America',
    'location'
  ),
  (
    '30 Cotopaxi Avenue',
    'Quito',
    'Quito',
    'Pichincha',
    '170150',
    'Ecuador',
    'South America',
    'location'
  ),
  (
    '15 Angel Falls Road',
    'Canaima',
    'Gran Sabana',
    'Bolivar',
    '8018',
    'Venezuela',
    'South America',
    'location'
  ),
  (
    '40 Valparaiso Street',
    'Valparaiso',
    'Valparaiso',
    'Valparaiso',
    '2362772',
    'Chile',
    'South America',
    'location'
  ),
  (
    '7 Salar de Uyuni Avenue',
    'Uyuni',
    'Potosi',
    'Potosi',
    '591',
    'Bolivia',
    'South America',
    'location'
  ),
  (
    '22 Iguazu Falls Road',
    'Puerto Iguazu',
    'Misiones',
    'Misiones',
    '3370',
    'Argentina',
    'South America',
    'location'
  ),
  (
    '123 Christ the Redeemer Road',
    'Corcovado',
    'Rio de Janeiro',
    'Rio de Janeiro',
    '22241-125',
    'Brazil',
    'South America',
    'location'
  ),
  (
    '45 Recoleta Cemetery Street',
    'Recoleta',
    'Buenos Aires',
    'Buenos Aires',
    '1111',
    'Argentina',
    'South America',
    'location'
  ),
  (
    '8 Nazca Lines Road',
    'Nazca',
    'Ica',
    '110101',
    '110101',
    'Peru',
    'South America',
    'location'
  ),
  (
    '21 Sao Paulo Street',
    'Sao Paulo',
    'Sao Paulo',
    'Sao Paulo',
    '01310-940',
    'Brazil',
    'South America',
    'location'
  ),
  (
    '55 Atacama Desert Road',
    'San Pedro de Atacama',
    'Antofagasta',
    'Antofagasta',
    '1410000',
    'Chile',
    'South America',
    'location'
  ),
  (
    '30 Tungurahua Street',
    'Banos',
    'Tungurahua',
    'Banos',
    '180250',
    'Ecuador',
    'South America',
    'location'
  ),
  (
    '15 Tequendama Falls Road',
    'Bogota',
    'Bogota',
    'Bogota',
    '111811',
    'Colombia',
    'South America',
    'location'
  ),
  (
    '40 Patagonia Road',
    'Puerto Natales',
    'Magallanes',
    'Puerto Natales',
    '6160000',
    'Chile',
    'South America',
    'location'
  ),
  (
    '7 Cotahuasi Canyon Avenue',
    'Cotahuasi',
    'Arequipa',
    'Arequipa',
    '3864003',
    'Peru',
    'South America',
    'location'
  ),
  (
    '22 Chimborazo Avenue',
    'Riobamba',
    'Chimborazo',
    'Chimborazo',
    '060155',
    'Ecuador',
    'South America',
    'location'
  ),
  (
    '123 Table Mountain Road',
    'Cape Town City Centre',
    'Cape Town',
    'Western Cape',
    '8001',
    'South Africa',
    'Africa',
    'location'
  ),
  (
    '45 Pyramids Road',
    'Giza',
    'Cairo',
    'Giza',
    '12613',
    'Egypt',
    'Africa',
    'location'
  ),
  (
    '8 Victoria Island Street',
    'Victoria Island',
    'Lagos',
    'Lagos',
    '101241',
    'Nigeria',
    'Africa',
    'location'
  ),
  (
    '21 Marrakech Medina Street',
    'Marrakech Medina',
    'Marrakech',
    'Marrakech',
    '40000',
    'Morocco',
    'Africa',
    'location'
  ),
  (
    '55 Casablanca Corniche Avenue',
    'Casablanca',
    'Casablanca',
    'Casablanca',
    '20300',
    'Morocco',
    'Africa',
    'location'
  ),
  (
    '30 Nairobi Central Street',
    'Nairobi Central',
    'Nairobi',
    'Nairobi',
    '00100',
    'Kenya',
    'Africa',
    'location'
  ),
  (
    '15 Table Mountain Road',
    'Cape Town City Centre',
    'Cape Town',
    'Western Cape',
    '8001',
    'South Africa',
    'Africa',
    'location'
  ),
  (
    '40 Abu Simbel Road',
    'Abu Simbel',
    'Aswan',
    '81111',
    '81111',
    'Egypt',
    'Africa',
    'location'
  ),
  (
    '7 Fez Medina Street',
    'Fez Medina',
    'Fez',
    'Fez-Meknes',
    '30000',
    'Morocco',
    'Africa',
    'location'
  ),
  (
    '22 Alexandria Corniche Avenue',
    'Alexandria',
    'Alexandria',
    'Alexandria',
    '21516',
    'Egypt',
    'Africa',
    'location'
  ),
  (
    '123 Dakar Central Street',
    'Dakar Central',
    'Dakar',
    'Dakar',
    '18524',
    'Senegal',
    'Africa',
    'location'
  ),
  (
    '45 Victoria Island Street',
    'Victoria Island',
    'Lagos',
    'Lagos',
    '101241',
    'Nigeria',
    'Africa',
    'location'
  ),
  (
    '8 Addis Ababa Central Avenue',
    'Addis Ababa Central',
    'Addis Ababa',
    'Addis Ababa',
    '1000',
    'Ethiopia',
    'Africa',
    'location'
  ),
  (
    '21 Victoria Falls Road',
    'Victoria Falls',
    'Matabeleland North',
    '901',
    '901',
    'Zimbabwe',
    'Africa',
    'location'
  ),
  (
    '55 Rabat Medina Street',
    'Rabat Medina',
    'Rabat',
    'Rabat-Sale-Kenitra',
    '10000',
    'Morocco',
    'Africa',
    'location'
  ),
  (
    '30 Dar es Salaam Central Road',
    'Dar es Salaam Central',
    'Dar es Salaam',
    'Dar es Salaam',
    '16191',
    'Tanzania',
    'Africa',
    'location'
  ),
  (
    '15 Table Mountain Road',
    'Cape Town City Centre',
    'Cape Town',
    'Western Cape',
    '8001',
    'South Africa',
    'Africa',
    'location'
  ),
  (
    '40 Timbuktu Road',
    'Timbuktu',
    'Timbuktu',
    'Timbuktu',
    '1300',
    'Mali',
    'Africa',
    'location'
  ),
  (
    '7 Accra Central Street',
    'Accra Central',
    'Accra',
    'Greater Accra',
    '00233',
    'Ghana',
    'Africa',
    'location'
  ),
  (
    '22 Harare Central Street',
    'Harare Central',
    'Harare',
    'Harare',
    '00263',
    'Zimbabwe',
    'Africa',
    'location'
  );