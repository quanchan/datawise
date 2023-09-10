/* Replace with your SQL commands */
create table
	if not exists company (
		id serial primary key,
		name varchar(255) not null,
		business_number varchar(50) not null unique,
		industry varchar(100),
		entity_meta_table varchar(255) not null,
		constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta (table_name) on delete cascade
	);

-- For entity_meta table
insert into
	entity_meta (
		display_name,
		description,
		table_name,
		standalone,
		custom
	)
values
	('Company', '', 'company', false, false);

-- For column_meta table for Company
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
		'Company Name',
		'',
		'TechWorld Corp.',
		'name',
		'varchar.255',
		'entityVarchar',
		'company'
	),
	(
		'Business Number',
		'',
		'BN123456789',
		'business_number',
		'varchar.50',
		'entityVarchar',
		'company'
	),
	(
		'Company Industry',
		'',
		'Software Development',
		'industry',
		'varchar.100',
		'entityVarchar',
		'company'
	);

insert into
	company (
		name,
		business_number,
		industry,
		entity_meta_table
	)
values
	(
		'TechWorld Corp.',
		'BN123456789',
		'Software Development',
		'company'
	),
	(
		'GreenFarm Foods',
		'BN987654321',
		'Agriculture',
		'company'
	),
	(
		'AutoDrive Motors',
		'BN123789456',
		'Automotive',
		'company'
	),
	('Oceanic Cruises', 'BN789123456', 'Tourism', 'company'),
	('FineWear Clothing', 'BN456789123', 'Fashion', 'company'),
	(
		'CineScope Productions',
		'BN654321987',
		'Entertainment',
		'company'
	),
	(
		'HomeSafe Appliances',
		'BN321987654',
		'Electronics',
		'company'
	),
	(
		'AeroWings Aviation',
		'BN852741963',
		'Aviation',
		'company'
	),
	('MediCare Health', 'BN963852741', 'Healthcare', 'company'),
	(
		'UrbanConstruct Developers',
		'BN741963852',
		'Real Estate',
		'company'
	),
	(
		'EduSolutions Institute',
		'BN489526137',
		'Education',
		'company'
	),
	(
		'NatureLove Cosmetics',
		'BN357268941',
		'Beauty',
		'company'
	),
	(
		'RapidDeliver Logistics',
		'BN198735264',
		'Transportation',
		'company'
	),
	('EcoPower Energies', 'BN526419873', 'Energy', 'company'),
	('PixelCraft Studios', 'BN417892635', 'Gaming', 'company'),
	('NutraLife Foods', 'BN135792468', 'Nutrition', 'company'),
	('AquaClear Waters', 'BN864219573', 'Beverages', 'company'),
	('SkyLine Airlines', 'BN572648193', 'Airlines', 'company'),
	(
		'SoundWave Electronics',
		'BN392617485',
		'Electronics',
		'company'
	),
	(
		'BioTech Innovations',
		'BN728491635',
		'Biotechnology',
		'company'
	),
	(
		'TechNex Innovations',
		'BNA23145Z9',
		'Technology',
		'company'
	),
	(
		'AquaWave Oceans',
		'BNB54879Y36',
		'Marine Biology',
		'company'
	),
	('Radiant Jewelers', 'BNC8R965V24', 'Jewelry', 'company'),
	('SkyHigh Drones', 'BND97534U12', 'Aerospace', 'company'),
	('Naturra Botanicals', 'BNX4692I578', 'Botany', 'company'),
	(
		'Mystic Brews Cafe',
		'BNE7J4892Q3',
		'Hospitality',
		'company'
	),
	(
		'SolarNova Energies',
		'BNF2456O931',
		'Energy Solutions',
		'company'
	),
	(
		'Orion Software Solutions',
		'BNG9358K716',
		'Software Development',
		'company'
	),
	(
		'Pantheon Films',
		'BNH6712L538',
		'Film Production',
		'company'
	),
	(
		'GoldenEra Antiques',
		'BNM8134P276',
		'Antiques',
		'company'
	),
	('Neptune Marine', 'BNO6514W493', 'Marine Tech', 'company'),
	(
		'SilentValley Studios',
		'BNQ9548E315',
		'Music Production',
		'company'
	),
	(
		'Digital Front Web',
		'BNS7824A294',
		'Web Development',
		'company'
	),
	(
		'UrbanGrow Farms',
		'BNT6389H913',
		'Agriculture',
		'company'
	),
	(
		'Everest Treks and Tours',
		'BNU4125G894',
		'Tourism',
		'company'
	),
	(
		'NovaStar Cosmetics',
		'BNV9128F614',
		'Cosmetics',
		'company'
	),
	(
		'Starlight Theaters',
		'BNW8276C413',
		'Entertainment',
		'company'
	),
	(
		'Zenith Techware',
		'BNX4512D836',
		'Electronics',
		'company'
	),
	('OceanBlu Seafoods', 'BNY8196B635', 'Seafood', 'company'),
	(
		'Spectrum Paints',
		'BNZ2957M937',
		'Paint Manufacturing',
		'company'
	),
	('Atlas Realty', 'BNAO3452N349', 'Real Estate', 'company'),
	(
		'Helix Genetics Labs',
		'BNPL9825K751',
		'Genetics',
		'company'
	),
	('RedPhoenix Gaming', 'BNQW4162J621', 'Gaming', 'company'),
	('Quantum Finance', 'BNRS3927X531', 'Finance', 'company'),
	(
		'GreenLeaf Herbal',
		'BNTU1854V641',
		'Herbal Products',
		'company'
	),
	('Arcane Arts', 'BNUI7829Z752', 'Arts & Crafts', 'company'),
	('Skyward Airlines', 'BNOP9125Y861', 'Aviation', 'company'),
	(
		'GreenRoot Organics',
		'BNXZCQ3175H8A9',
		'Organic Products',
		'company'
	),
	(
		'PixelBlade Designs',
		'BNVCBK9142J6L7',
		'Graphic Design',
		'company'
	),
	(
		'FrostByte Tech',
		'BNOLTP6271R3E4',
		'Information Technology',
		'company'
	),
	(
		'VividLens Studios',
		'BNMIFG7385W2P6',
		'Filmography',
		'company'
	),
	(
		'SolarWind Energy',
		'BNHZVK4519S3D2',
		'Energy Solutions',
		'company'
	),
	(
		'NatureFirst Herbals',
		'BNGYMW5724T4C5',
		'Pharmaceutical',
		'company'
	),
	(
		'EchoTech Electronics',
		'BNFXPO6839Y5B6',
		'Electronics',
		'company'
	),
	(
		'MagmaForge Productions',
		'BNEXNI7914A7V8',
		'Metal Works',
		'company'
	),
	(
		'OceanFront Resorts',
		'BNZJLU8152B6M3',
		'Hospitality',
		'company'
	),
	('Quasar Finance', 'BNWYHA9314D5L9', 'Banking', 'company'),
	(
		'SilverFern Realty',
		'BNVGXZ2481E2N7',
		'Real Estate',
		'company'
	),
	(
		'StellarDream Entertainment',
		'BNBSKJ6923F8O3',
		'Entertainment',
		'company'
	),
	('Dynasty Gems', 'BNASQW7526G1R4', 'Jewelry', 'company'),
	(
		'LunarTide Studios',
		'BNMDBV8614H7T2',
		'Game Development',
		'company'
	),
	(
		'WildRush Adventures',
		'BNLCYX9715I3U5',
		'Travel & Tourism',
		'company'
	),
	(
		'Pinnacle Financial',
		'BNKZGH8259J4W2',
		'Finance',
		'company'
	),
	(
		'Inferno Security',
		'BNJFXD9348K5Z1',
		'Security Solutions',
		'company'
	),
	(
		'Celestial Arts',
		'BNIVBE7185L6A3',
		'Fine Arts',
		'company'
	),
	(
		'PolarStar Logistics',
		'BNHUAF6927M2B4',
		'Logistics',
		'company'
	),
	('Omega Law Firms', 'BNGWZO7386N3V5', 'Legal', 'company'),
	(
		'UrbanBlitz Fashion',
		'BNFYMN8174O9P6',
		'Fashion',
		'company'
	),
	(
		'Cosmos Films',
		'BNEXLK9268P1Q2',
		'Film Production',
		'company'
	),
	(
		'Phoenix Health',
		'BNZWKI8175Q2R9',
		'Healthcare',
		'company'
	),
	(
		'RavenLock Security',
		'BNVYHJ9153S4T8',
		'Security Systems',
		'company'
	),
	(
		'NovaStar Cosmetics',
		'BNUWXC7129U5V6',
		'Cosmetics',
		'company'
	),
	(
		'Platinum Real Estates',
		'BNMXNQ6518W6X7',
		'Property',
		'company'
	),
	(
		'MysticSprings Spa',
		'BNLBTO7392X8Y5',
		'Wellness',
		'company'
	),
	(
		'AzureCloud Tech',
		'BNKAPS6251Y9Z3',
		'Information Technology',
		'company'
	),
	(
		'RubyCraft Jewelers',
		'BNJQBW7145Z1A8',
		'Jewelry',
		'company'
	);