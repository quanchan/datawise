/* Replace with your SQL commands */
create table if not exists location (
    id serial primary key, -- An automatic primary key for easier referencing
    street_address varchar(255) not null, 
    suburb varchar(100),
    state_province varchar(100),
    postcode varchar(20), 
    country varchar(100) not null,
    region varchar(100),
  entity_meta_id int not null,
  constraint fk_entity_meta_id foreign key (entity_meta_id) references entity_meta(id) on delete cascade
);
insert into entity_meta (id, display_name, description, table_name, standalone, custom) values (
  3,
  'Location',
  '',
  'location',
  false,
  false
);
insert into column_meta 
(display_name, description, example, column_name, data_type, entity_meta_id)
values 
('Street Address', 
'Complete Address of the Location', 
'123 Main St', 
'street_address', 
'varchar(255)', 
3);

insert into column_meta 
(display_name, description, example, column_name, data_type, entity_meta_id)
values 
('Suburb', 
'Suburb of the Location', 
'Downtown', 
'suburb', 
'varchar(100)', 
3);

insert into column_meta 
(display_name, description, example, column_name, data_type, entity_meta_id)
values 
('State/Province', 
'State or Province of the Location', 
'California', 
'state_province', 
'varchar(100)', 
3);

insert into column_meta 
(display_name, description, example, column_name, data_type, entity_meta_id)
values 
('Postcode', 
'Postal Code of the Location', 
'90001', 
'postcode', 
'varchar(20)', 
3);

insert into column_meta 
(display_name, description, example, column_name, data_type, entity_meta_id)
values 
('Country', 
'Country of the Location', 
'USA', 
'country', 
'varchar(100)', 
3);

insert into column_meta 
(display_name, description, example, column_name, data_type, entity_meta_id)
values 
('Region', 
'Region or District of the Location', 
'West Coast', 
'region', 
'varchar(100)', 
3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('123 Main St', 'Downtown', 'California', '90001', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('45 Queen St', 'Central Business District', 'Queensland', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('15 Jinnah Road', 'Saddar', 'Sindh', '75500', 'Pakistan', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('78 King Edward Street', 'Oxford', 'Oxfordshire', 'OX1 4HB', 'UK', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('22 Rue de Rivoli', 'Le Marais', 'Île-de-France', '75004', 'France', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1007 Mountain Drive', 'Gotham', 'New Jersey', '07310', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('200 Ocean Drive', 'Copacabana', 'Rio de Janeiro', '22070-020', 'Brazil', 'South America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3-5 Rämistrasse', 'Zurich Center', 'Zurich', '8001', 'Switzerland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('14 Red Square', 'Tverskoy', 'Moscow', '101000', 'Russia', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('25 Nile Corniche', 'Cairo', 'Cairo Governorate', '11221', 'Egypt', 'Africa', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('89 Ocean View', 'Green Point', 'Western Cape', '8051', 'South Africa', 'Africa', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('12 Shinjuku St', 'Shinjuku', 'Tokyo', '160-0022', 'Japan', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('5 Rajpath Marg', 'New Delhi', 'Delhi', '110001', 'India', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('200 Han St', 'Gangnam', 'Seoul', '06066', 'South Korea', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('44 Calle Mayor', 'Sol', 'Madrid', '28013', 'Spain', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('10 Via Roma', 'Centro', 'Sicily', '90133', 'Italy', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('60 Paseo de la Reforma', 'Juarez', 'Mexico City', '06500', 'Mexico', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('18 Jalan Bukit Bintang', 'Kuala Lumpur', 'Wilayah Persekutuan', '55100', 'Malaysia', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('33 Queen Street', 'Auckland Central', 'Auckland', '1010', 'New Zealand', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('90 Avenue Road', 'Yorkville', 'Ontario', 'M5R 2H2', 'Canada', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('67 Tahlia Street', 'Riyadh', 'Riyadh Region', '12241', 'Saudi Arabia', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('25 Sheikh Zayed Rd', 'Downtown Dubai', 'Dubai', '31303', 'UAE', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('8 Orchard Rd', 'Orchard', 'Central Region', '238879', 'Singapore', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('28 Kurfürstendamm', 'Charlottenburg', 'Berlin', '10719', 'Germany', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('70 Wangfujing St', 'Dongcheng', 'Beijing', '100006', 'China', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('50 Avenida Paulista', 'Bela Vista', 'São Paulo', '01310-000', 'Brazil', 'South America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('38 Khreschatyk St', 'Pechersk', 'Kyiv', '01001', 'Ukraine', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('19 Istiklal Ave', 'Beyoglu', 'Istanbul', '34435', 'Turkey', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('5 Syntagma Sq', 'Syntagma', 'Attica', '10563', 'Greece', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('40 Dam Square', 'Centrum', 'North Holland', '1012 NP', 'Netherlands', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('30 Karl Johans gate', 'Sentrum', 'Oslo', '0159', 'Norway', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('27 Drottninggatan', 'Norrmalm', 'Stockholm', '111 51', 'Sweden', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('100 Stroget', 'Indre By', 'Copenhagen', '1550', 'Denmark', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('5 Vaci Utca', 'Belváros', 'Budapest', '1052', 'Hungary', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('15 Nevsky Prospect', 'Tsentralny', 'St. Petersburg', '191186', 'Russia', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2 Esplanadi', 'Kluuvi', 'Helsinki', '00130', 'Finland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3 Krakowskie Przedmiescie', 'Srodmiescie', 'Warsaw', '00-071', 'Poland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('4 Mariahilfer Strasse', 'Neubau', 'Vienna', '1070', 'Austria', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('50 Wenceslas Square', 'Nove Mesto', 'Prague', '110 00', 'Czech Republic', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('7 Gran Via', 'Centro', 'Madrid', '28013', 'Spain', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('66 S Michigan Ave', 'Chicago', 'Illinois', '60603', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('15 Clifton Rd', 'Karachi', 'Sindh', '75600', 'Pakistan', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3 Corniche Road', 'Abu Dhabi', 'Abu Dhabi', '51133', 'UAE', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('101 Chapel St', 'Melbourne', 'Victoria', '3181', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('22 Rue de Paris', 'Monte Carlo', 'Monaco-Ville', '98000', 'Monaco', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('40 Bulevardul Unirii', 'Bucharest', 'Bucharest', '030167', 'Romania', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('5 Kingsway', 'London', 'England', 'WC2B 6', 'United Kingdom', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('17 Rue du Faubourg Saint-Antoine', 'Paris', 'Île-de-France', '75011', 'France', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('9 Lungomare della Libertà', 'Rimini', 'Emilia-Romagna', '47921', 'Italy', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('31 Avenida 9 de Julio', 'Buenos Aires', 'CABA', 'C1009', 'Argentina', 'South America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('99 Kloof Street', 'Cape Town', 'Western Cape', '8001', 'South Africa', 'Africa', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('55 Calle Ocho', 'Miami', 'Florida', '33135', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('7 Nevizade Street', 'Istanbul', 'Istanbul', '34435', 'Turkey', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('12 Avenida Central', 'San Jose', 'San José', '1000', 'Costa Rica', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('88 Langstrasse', 'Zurich', 'Zurich', '8004', 'Switzerland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('44 Weteringschans', 'Amsterdam', 'North Holland', '1017 SH', 'Netherlands', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('60 Baggot Street', 'Dublin', 'Leinster', 'D02', 'Ireland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('10 Rue de Laeken', 'Brussels', 'Brussels', '1000', 'Belgium', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('25 Princes Street', 'Edinburgh', 'Scotland', 'EH2 2', 'United Kingdom', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('100 Calle de Serrano', 'Madrid', 'Madrid', '28006', 'Spain', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('7 Bahnhofstrasse', 'Zurich', 'Zurich', '8001', 'Switzerland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('66 Dizengoff Street', 'Tel Aviv', 'Tel Aviv District', '64332', 'Israel', 'Asia', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('8 Avenida Reforma', 'Guatemala City', 'Guatemala Department', '01010', 'Guatemala', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('45 Nyhavn', 'Copenhagen', 'Capital Region', '1051', 'Denmark', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('16 Norrmalmstorg', 'Stockholm', 'Stockholm County', '111 46', 'Sweden', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3 Karl Marx Allee', 'Berlin', 'Berlin', '10178', 'Germany', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('22 Aker Brygge', 'Oslo', 'Oslo', '0250', 'Norway', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('12 King Street', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('15 Queen Avenue', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('32 High Road', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('29 Low Street', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('90 North Avenue', 'Adelaide', 'SA', '5000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('100 South Lane', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('56 West Way', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('89 East Drive', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('17 Park Lane', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('44 Bay Road', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('11 River Drive', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('28 Mountain View Rd', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('92 Elm Street', 'Adelaide', 'SA', '5000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('31 Ocean Avenue', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('55 Pine Rd', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('67 Maple Drive', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('14 Oak Street', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('99 Birch Lane', 'Adelaide', 'SA', '5000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('66 Cedar Rd', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('23 Spruce Avenue', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('41 Redwood Drive', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('58 Aspen Street', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('39 Fir Lane', 'Adelaide', 'SA', '5000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('76 Pinecone Rd', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('32 Willow Way', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('53 Evergreen Dr', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('72 Sycamore St', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('11 Cedar Close', 'Adelaide', 'SA', '5000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('43 Magnolia Mews', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('17 Larch Lane', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('29 Pecan Place', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('93 Teak Terrace', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('58 Palm Path', 'Adelaide', 'SA', '5000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('67 Beech Blvd', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('82 Cherry Chase', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('91 Alder Alcove', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('12 Dogwood Drive', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('34 Elm End', 'Adelaide', 'SA', '5000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('75 Fir Fringe', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('66 Larch Loop', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('57 Maple Mews', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('88 Oak Oval', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('99 Pine Path', 'Adelaide', 'SA', '5000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('70 Redwood Ridge', 'Sydney', 'NSW', '2000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('59 Spruce Street', 'Brisbane', 'QLD', '4000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('44 Teak Trail', 'Melbourne', 'VIC', '3000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('33 Willow Way', 'Perth', 'WA', '6000', 'Australia', 'Oceania', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1200 Broadway St', 'New York', 'NY', '10001', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('500 Sunset Blvd', 'Los Angeles', 'CA', '90028', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2900 N Lamar Blvd', 'Austin', 'TX', '78705', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('4500 W North Ave', 'Chicago', 'IL', '60639', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1700 Wynkoop St', 'Denver', 'CO', '80202', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('350 Fifth Ave', 'New York', 'NY', '10118', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3800 S Las Vegas Blvd', 'Las Vegas', 'NV', '89109', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1000 Elysian Park Ave', 'Los Angeles', 'CA', '90012', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2200 N. Lamar St', 'Dallas', 'TX', '75202', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2400 18th St NW', 'Washington', 'DC', '20009', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('200 Joe Nuxhall Way', 'Cincinnati', 'OH', '45202', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('500 David J Stern Walk', 'Sacramento', 'CA', '95814', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1900 Benjamin Franklin Pkwy', 'Philadelphia', 'PA', '19103', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1400 P St NW', 'Washington', 'DC', '20005', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1800 Gattis School Rd', 'Round Rock', 'TX', '78664', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1600 Amphitheatre Pkwy', 'Mountain View', 'CA', '94043', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2600 Benjamin Franklin Pkwy', 'Philadelphia', 'PA', '19130', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('4200 N. Lamar Blvd', 'Austin', 'TX', '78756', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3200 Las Vegas Blvd S', 'Las Vegas', 'NV', '89109', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2300 16th St', 'San Francisco', 'CA', '94103', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('700 E Grand Ave', 'Chicago', 'IL', '60611', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2900 W Alameda Ave', 'Burbank', 'CA', '91505', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2800 E Observatory Rd', 'Los Angeles', 'CA', '90027', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3100 N Broadway', 'Chicago', 'IL', '60657', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3300 S Las Vegas Blvd', 'Las Vegas', 'NV', '89109', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1100 4th St SW', 'Washington', 'DC', '20024', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3600 Presidential Blvd', 'Austin', 'TX', '78719', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3400 W Olive Ave', 'Burbank', 'CA', '91505', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3700 W Flamingo Rd', 'Las Vegas', 'NV', '89103', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1400 S Congress Ave', 'Austin', 'TX', '78704', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2100 14th St NW', 'Washington', 'DC', '20009', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('300 Universal City Plaza', 'Los Angeles', 'CA', '91608', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('4400 Sharon Rd', 'Charlotte', 'NC', '28211', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('5500 Grossmont Center Dr', 'La Mesa', 'CA', '91942', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2500 E 2nd Ave', 'Denver', 'CO', '80206', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('6400 S Fiddlers Green Cir', 'Greenwood Village', 'CO', '80111', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('5400 Kirkwood Blvd SW', 'Cedar Rapids', 'IA', '52404', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('6800 Westward Beach Rd', 'Malibu', 'CA', '90265', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('5800 Universal Blvd', 'Orlando', 'FL', '32819', 'USA', 'North America', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('1 Rue du Montparnasse', 'Paris', 'Ile-de-France', '75006', 'France', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('2 Via Dante', 'Milan', 'Lombardy', '20121', 'Italy', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('3 Calle Gran Vía', 'Madrid', 'Community of Madrid', '28013', 'Spain', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('4 King St', 'London', 'Greater London', 'WC2E 8HJ', 'UK', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('5 Bahnhofstrasse', 'Zurich', 'Zurich', '8001', 'Switzerland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('6 Unter den Linden', 'Berlin', 'Berlin', '10117', 'Germany', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('7 Nevsky Prospekt', 'Saint Petersburg', 'Northwestern', '191186', 'Russia', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('8 Andrássy út', 'Budapest', 'Central Hungary', '1062', 'Hungary', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('9 Rua Garrett', 'Lisbon', 'Lisbon', '1200-203', 'Portugal', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('10 Karl Johans gate', 'Oslo', 'Eastern Norway', '0154', 'Norway', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('11 Rue du Montparnasse', 'Paris', 'Ile-de-France', '75006', 'France', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('12 Via Dante', 'Milan', 'Lombardy', '20121', 'Italy', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('13 Calle Gran Vía', 'Madrid', 'Community of Madrid', '28013', 'Spain', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('14 King St', 'London', 'Greater London', 'WC2E 8HJ', 'UK', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('15 Bahnhofstrasse', 'Zurich', 'Zurich', '8001', 'Switzerland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('16 Unter den Linden', 'Berlin', 'Berlin', '10117', 'Germany', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('17 Nevsky Prospekt', 'Saint Petersburg', 'Northwestern', '191186', 'Russia', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('18 Andrássy út', 'Budapest', 'Central Hungary', '1062', 'Hungary', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('19 Rua Garrett', 'Lisbon', 'Lisbon', '1200-203', 'Portugal', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('20 Karl Johans gate', 'Oslo', 'Eastern Norway', '0154', 'Norway', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('21 Rue du Montparnasse', 'Paris', 'Ile-de-France', '75006', 'France', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('22 Via Dante', 'Milan', 'Lombardy', '20121', 'Italy', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('23 Calle Gran Vía', 'Madrid', 'Community of Madrid', '28013', 'Spain', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('24 King St', 'London', 'Greater London', 'WC2E 8HJ', 'UK', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('25 Bahnhofstrasse', 'Zurich', 'Zurich', '8001', 'Switzerland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('26 Unter den Linden', 'Berlin', 'Berlin', '10117', 'Germany', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('27 Nevsky Prospekt', 'Saint Petersburg', 'Northwestern', '191186', 'Russia', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('28 Andrássy út', 'Budapest', 'Central Hungary', '1062', 'Hungary', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('29 Rua Garrett', 'Lisbon', 'Lisbon', '1200-203', 'Portugal', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('30 Karl Johans gate', 'Oslo', 'Eastern Norway', '0154', 'Norway', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('31 Rue du Montparnasse', 'Paris', 'Ile-de-France', '75006', 'France', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('32 Via Dante', 'Milan', 'Lombardy', '20121', 'Italy', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('33 Calle Gran Vía', 'Madrid', 'Community of Madrid', '28013', 'Spain', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('34 King St', 'London', 'Greater London', 'WC2E 8HJ', 'UK', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('35 Bahnhofstrasse', 'Zurich', 'Zurich', '8001', 'Switzerland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('36 Unter den Linden', 'Berlin', 'Berlin', '10117', 'Germany', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('37 Nevsky Prospekt', 'Saint Petersburg', 'Northwestern', '191186', 'Russia', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('38 Andrássy út', 'Budapest', 'Central Hungary', '1062', 'Hungary', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('39 Rua Garrett', 'Lisbon', 'Lisbon', '1200-203', 'Portugal', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('40 Karl Johans gate', 'Oslo', 'Eastern Norway', '0154', 'Norway', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('41 Rue du Montparnasse', 'Paris', 'Ile-de-France', '75006', 'France', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('42 Via Dante', 'Milan', 'Lombardy', '20121', 'Italy', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('43 Calle Gran Vía', 'Madrid', 'Community of Madrid', '28013', 'Spain', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('44 King St', 'London', 'Greater London', 'WC2E 8HJ', 'UK', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('45 Bahnhofstrasse', 'Zurich', 'Zurich', '8001', 'Switzerland', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('46 Unter den Linden', 'Berlin', 'Berlin', '10117', 'Germany', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('47 Nevsky Prospekt', 'Saint Petersburg', 'Northwestern', '191186', 'Russia', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('48 Andrássy út', 'Budapest', 'Central Hungary', '1062', 'Hungary', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('49 Rua Garrett', 'Lisbon', 'Lisbon', '1200-203', 'Portugal', 'Europe', 3);

insert into location (street_address, suburb, state_province, postcode, country, region, entity_meta_id) 
values ('50 Karl Johans gate', 'Oslo', 'Eastern Norway', '0154', 'Norway', 'Europe', 3);



