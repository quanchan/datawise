/* Replace with your SQL commands */
create table if not exists company (
    id serial primary key,
    name varchar(255) not null,
    business_number varchar(50) not null unique,
    industry varchar(100),
    entity_meta_id integer not null,
    constraint fk_entity_meta_id foreign key(entity_meta_id) references entity_meta(id)
);

-- For entity_meta table
insert into entity_meta (id, display_name, description, table_name, standalone, custom)
values 
(6, 
 'Company', 
 '', 
 'company', 
 false, 
 false);

-- For column_meta table for Company
insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values 
('Name', 
 '', 
 'TechWorld Corp.', 
 'name', 
 'VARCHAR', 
 6);

insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values 
('Business Number', 
 '', 
 'BN123456789', 
 'business_number', 
 'VARCHAR', 
 6);

insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values 
('Industry', 
 '', 
 'Software Development', 
 'industry', 
 'VARCHAR', 
 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('TechWorld Corp.', 'BN123456789', 'Software Development', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('GreenFarm Foods', 'BN987654321', 'Agriculture', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('AutoDrive Motors', 'BN123789456', 'Automotive', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Oceanic Cruises', 'BN789123456', 'Tourism', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('FineWear Clothing', 'BN456789123', 'Fashion', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('CineScope Productions', 'BN654321987', 'Entertainment', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('HomeSafe Appliances', 'BN321987654', 'Electronics', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('AeroWings Aviation', 'BN852741963', 'Airlines', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('MediCare Health', 'BN963852741', 'Healthcare', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('UrbanConstruct Developers', 'BN741963852', 'Real Estate', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('EduSolutions Institute', 'BN489526137', 'Education', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('NatureLove Cosmetics', 'BN357268941', 'Beauty', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('RapidDeliver Logistics', 'BN198735264', 'Transportation', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('EcoPower Energies', 'BN526419873', 'Energy', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('PixelCraft Studios', 'BN417892635', 'Gaming', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('NutraLife Foods', 'BN135792468', 'Nutrition', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('AquaClear Waters', 'BN864219573', 'Beverages', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('SkyLine Airlines', 'BN572648193', 'Airlines', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('SoundWave Electronics', 'BN392617485', 'Electronics', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('BioTech Innovations', 'BN728491635', 'Biotechnology', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('TechNex Innovations', 'BNA23145Z9', 'Technology', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('AquaWave Oceans', 'BNB54879Y36', 'Marine Biology', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Radiant Jewelers', 'BNC8R965V24', 'Jewelry', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('SkyHigh Drones', 'BND97534U12', 'Aerospace', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Naturra Botanicals', 'BNX4692I578', 'Botany', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Mystic Brews Cafe', 'BNE7J4892Q3', 'Hospitality', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('SolarNova Energies', 'BNF2456O931', 'Energy Solutions', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Orion Software Solutions', 'BNG9358K716', 'Software Development', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Pantheon Films', 'BNH6712L538', 'Film Production', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('GoldenEra Antiques', 'BNM8134P276', 'Antiques', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Neptune Marine', 'BNO6514W493', 'Marine Tech', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('SilentValley Studios', 'BNQ9548E315', 'Music Production', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Digital Front Web', 'BNS7824A294', 'Web Development', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('UrbanGrow Farms', 'BNT6389H913', 'Agriculture', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Everest Treks and Tours', 'BNU4125G894', 'Tourism', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('NovaStar Cosmetics', 'BNV9128F614', 'Cosmetics', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Starlight Theaters', 'BNW8276C413', 'Entertainment', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Zenith Techware', 'BNX4512D836', 'Electronics', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('OceanBlu Seafoods', 'BNY8196B635', 'Seafood', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Spectrum Paints', 'BNZ2957M937', 'Paint Manufacturing', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Atlas Realty', 'BNAO3452N349', 'Real Estate', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Helix Genetics Labs', 'BNPL9825K751', 'Genetics', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('RedPhoenix Gaming', 'BNQW4162J621', 'Gaming', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Quantum Finance', 'BNRS3927X531', 'Finance', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('GreenLeaf Herbal', 'BNTU1854V641', 'Herbal Products', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Arcane Arts', 'BNUI7829Z752', 'Arts & Crafts', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Skyward Airlines', 'BNOP9125Y861', 'Aviation', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('GreenRoot Organics', 'BNXZCQ3175H8A9', 'Organic Products', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('PixelBlade Designs', 'BNVCBK9142J6L7', 'Graphic Design', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('FrostByte Tech', 'BNOLTP6271R3E4', 'Information Technology', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('VividLens Studios', 'BNMIFG7385W2P6', 'Filmography', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('SolarWind Energy', 'BNHZVK4519S3D2', 'Energy Solutions', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('NatureFirst Herbals', 'BNGYMW5724T4C5', 'Pharmaceutical', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('EchoTech Electronics', 'BNFXPO6839Y5B6', 'Electronics', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('MagmaForge Productions', 'BNEXNI7914A7V8', 'Metal Works', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('OceanFront Resorts', 'BNZJLU8152B6M3', 'Hospitality', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Quasar Finance', 'BNWYHA9314D5L9', 'Banking', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('SilverFern Realty', 'BNVGXZ2481E2N7', 'Real Estate', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('StellarDream Entertainment', 'BNBSKJ6923F8O3', 'Entertainment', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Dynasty Gems', 'BNASQW7526G1R4', 'Jewelry', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('LunarTide Studios', 'BNMDBV8614H7T2', 'Game Development', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('WildRush Adventures', 'BNLCYX9715I3U5', 'Travel & Tourism', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Pinnacle Financial', 'BNKZGH8259J4W2', 'Finance', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Inferno Security', 'BNJFXD9348K5Z1', 'Security Solutions', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Celestial Arts', 'BNIVBE7185L6A3', 'Fine Arts', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('PolarStar Logistics', 'BNHUAF6927M2B4', 'Logistics', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Omega Law Firms', 'BNGWZO7386N3V5', 'Legal', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('UrbanBlitz Fashion', 'BNFYMN8174O9P6', 'Fashion', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Cosmos Films', 'BNEXLK9268P1Q2', 'Film Production', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Phoenix Health', 'BNZWKI8175Q2R9', 'Healthcare', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('RavenLock Security', 'BNVYHJ9153S4T8', 'Security Systems', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('NovaStar Cosmetics', 'BNUWXC7129U5V6', 'Cosmetics', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('Platinum Real Estates', 'BNMXNQ6518W6X7', 'Property', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('MysticSprings Spa', 'BNLBTO7392X8Y5', 'Wellness', 6);

insert into company (name, business_number, industry, entity_meta_id)
values 
('AzureCloud Tech', 'BNKAPS6251Y9Z3', 'Cloud Solutions', 6);

insert into company (name, business_number, industry, entity_meta_id)
values  
('RubyCraft Jewelers', 'BNJQBW7145Z1A8', 'Jewelry', 6);
