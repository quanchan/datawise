/* Replace with your SQL commands */
create table
	if not exists company (
		id serial primary key,
		name varchar(255) not null,
		business_number varchar(50) not null,
		industry varchar(100),
		contact_email varchar(255),
		company_website varchar(255),
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
		'varchar(255)',
		'entityVarchar',
		'company'
	),
	(
		'Business Number',
		'',
		'BN123456789',
		'business_number',
		'varchar(50)',
		'entityVarchar',
		'company'
	),
	(
		'Company Industry',
		'',
		'Software Development',
		'industry',
		'varchar(100)',
		'entityVarchar',
		'company'
	),
	(
		'Contact Email',
		'',
		'info@techworld.com',
		'contact_email',
		'varchar(255)',
		'entityVarchar',
		'company'
	),
	(
		'Company Website',
		'',
		'https://techworld.com',
		'company_website',
		'varchar(255)',
		'entityVarchar',
		'company'
	);

insert into
	company (
		name,
		business_number,
		industry,
		contact_email,
		company_website,
		entity_meta_table
	)
values
	(
		'TechWorld Corp.',
		'BN123456789',
		'Software Development',
		'info@techworld.com',
		'https://techworld.com',
		'company'
	),
	(
		'GreenFarm Foods',
		'BN987654321',
		'Agriculture',
		'contact@greenfarmfoods.org',
		'https://greenfarmfoods.org',
		'company'
	),
	(
		'AutoDrive Motors',
		'BN123789456',
		'Automotive',
		'info@autodrivemotors.net',
		'https://autodrivemotors.net',
		'company'
	),
	(
		'Oceanic Cruises',
		'BN789123456',
		'Tourism',
		'support@oceaniccruises.io',
		'https://oceaniccruises.io',
		'company'
	),
	(
		'FineWear Clothing',
		'BN456789123',
		'Fashion',
		'contact@finewearclothing.com',
		'https://finewearclothing.com',
		'company'
	),
	(
		'CineScope Productions',
		'BN654321987',
		'Entertainment',
		'contact@cinescopeproductions.org',
		'https://cinescopeproductions.org',
		'company'
	),
	(
		'HomeSafe Appliances',
		'BN321987654',
		'Electronics',
		'info@homesafeappliances.net',
		'https://homesafeappliances.net',
		'company'
	),
	(
		'AeroWings Aviation',
		'BN852741963',
		'Aviation',
		'support@aerowingsaviation.io',
		'https://aerowingsaviation.io',
		'company'
	),
	(
		'MediCare Health',
		'BN963852741',
		'Healthcare',
		'contact@medicarehealth.org',
		'https://medicarehealth.org',
		'company'
	),
	(
		'UrbanConstruct Developers',
		'BN741963852',
		'Real Estate',
		'info@urbanconstructdevelopers.com',
		'https://urbanconstructdevelopers.com',
		'company'
	),
	(
		'EduSolutions Institute',
		'BN489526137',
		'Education',
		'support@edusolutionsinstitute.org',
		'https://edusolutionsinstitute.org',
		'company'
	),
	(
		'NatureLove Cosmetics',
		'BN357268941',
		'Beauty',
		'contact@naturelovecosmetics.org',
		'https://naturelovecosmetics.org',
		'company'
	),
	(
		'RapidDeliver Logistics',
		'BN198735264',
		'Transportation',
		'info@rapiddeliverlogistics.net',
		'https://rapiddeliverlogistics.net',
		'company'
	),
	(
		'EcoPower Energies',
		'BN526419873',
		'Energy',
		'support@ecopowerenergies.io',
		'https://ecopowerenergies.io',
		'company'
	),
	(
		'PixelCraft Studios',
		'BN417892635',
		'Gaming',
		'contact@pixelcraftstudios.org',
		'https://pixelcraftstudios.org',
		'company'
	),
	(
		'NutraLife Foods',
		'BN135792468',
		'Nutrition',
		'info@nutralifefoods.org',
		'https://nutralifefoods.org',
		'company'
	),
	(
		'AquaClear Waters',
		'BN864219573',
		'Beverages',
		'support@aquaclearwaters.org',
		'https://aquaclearwaters.org',
		'company'
	),
	(
		'SkyLine Airlines',
		'BN572648193',
		'Airlines',
		'contact@skylineairlines.org',
		'https://skylineairlines.org',
		'company'
	),
	(
		'SoundWave Electronics',
		'BN392617485',
		'Electronics',
		'info@soundwaveelectronics.net',
		'https://soundwaveelectronics.net',
		'company'
	),
	(
		'BioTech Innovations',
		'BN728491635',
		'Biotechnology',
		'support@biotechinnovations.io',
		'https://biotechinnovations.io',
		'company'
	),
	(
		'TechNex Innovations',
		'BNA23145Z9',
		'Technology',
		'contact@technexinnovations.org',
		'https://technexinnovations.org',
		'company'
	),
	(
		'AquaWave Oceans',
		'BNB54879Y36',
		'Marine Biology',
		'info@aquawaveoceans.org',
		'https://aquawaveoceans.org',
		'company'
	),
	(
		'Radiant Jewelers',
		'BNC8R965V24',
		'Jewelry',
		'support@radiantjewelers.org',
		'https://radiantjewelers.org',
		'company'
	),
	(
		'SkyHigh Drones',
		'BND97534U12',
		'Aerospace',
		'contact@skyhighdrones.org',
		'https://skyhighdrones.org',
		'company'
	),
	(
		'Naturra Botanicals',
		'BNX4692I578',
		'Botany',
		'info@naturrabotanicals.org',
		'https://naturrabotanicals.org',
		'company'
	),
	(
		'Mystic Brews Cafe',
		'BNE7J4892Q3',
		'Hospitality',
		'support@mysticbrewscafe.org',
		'https://mysticbrewscafe.org',
		'company'
	),
	(
		'SolarNova Energies',
		'BNF2456O931',
		'Energy Solutions',
		'contact@solarnovaenergies.org',
		'https://solarnovaenergies.org',
		'company'
	),
	(
		'Orion Software Solutions',
		'BNG9358K716',
		'Software Development',
		'info@orionsoftwaresolutions.org',
		'https://orionsoftwaresolutions.org',
		'company'
	),
	(
		'Pantheon Films',
		'BNH6712L538',
		'Film Production',
		'support@pantheonfilms.org',
		'https://pantheonfilms.org',
		'company'
	),
	(
		'GoldenEra Antiques',
		'BNM8134P276',
		'Antiques',
		'contact@goldeneraantiques.org',
		'https://goldeneraantiques.org',
		'company'
	),
	(
		'Neptune Marine',
		'BNO6514W493',
		'Marine Tech',
		'info@neptunemarine.org',
		'https://neptunemarine.org',
		'company'
	),
	(
		'SilentValley Studios',
		'BNQ9548E315',
		'Music Production',
		'support@silentvalleystudios.org',
		'https://silentvalleystudios.org',
		'company'
	),
	(
		'Digital Front Web',
		'BNS7824A294',
		'Web Development',
		'contact@digitalfrontweb.org',
		'https://digitalfrontweb.org',
		'company'
	),
	(
		'UrbanGrow Farms',
		'BNT6389H913',
		'Agriculture',
		'info@urbangrowfarms.org',
		'https://urbangrowfarms.org',
		'company'
	),
	(
		'Everest Treks and Tours',
		'BNU4125G894',
		'Tourism',
		'support@everesttreksandtours.org',
		'https://everesttreksandtours.org',
		'company'
	),
	(
		'NovaStar Cosmetics',
		'BNV9128F614',
		'Cosmetics',
		'contact@novastarcosmetics.org',
		'https://novastarcosmetics.org',
		'company'
	),
	(
		'Starlight Theaters',
		'BNW8276C413',
		'Entertainment',
		'info@starlighttheaters.org',
		'https://starlighttheaters.org',
		'company'
	),
	(
		'Zenith Techware',
		'BNX4512D836',
		'Electronics',
		'support@zenithtechware.org',
		'https://zenithtechware.org',
		'company'
	),
	(
		'OceanBlu Seafoods',
		'BNY8196B635',
		'Seafood',
		'contact@oceanbluseafoods.org',
		'https://oceanbluseafoods.org',
		'company'
	),
	(
		'Spectrum Paints',
		'BNZ2957M937',
		'Paint Manufacturing',
		'info@spectrumpaints.org',
		'https://spectrumpaints.org',
		'company'
	),
	(
		'Atlas Realty',
		'BNAO3452N349',
		'Real Estate',
		'contact@atlasrealty.org',
		'https://atlasrealty.org',
		'company'
	),
	(
		'Helix Genetics Labs',
		'BNPL9825K751',
		'Genetics',
		'info@helixgeneticslabs.org',
		'https://helixgeneticslabs.org',
		'company'
	),
	(
		'RedPhoenix Gaming',
		'BNQW4162J621',
		'Gaming',
		'support@redphoenixgaming.org',
		'https://redphoenixgaming.org',
		'company'
	),
	(
		'Quantum Finance',
		'BNRS3927X531',
		'Finance',
		'contact@quantumfinance.org',
		'https://quantumfinance.org',
		'company'
	),
	(
		'GreenLeaf Herbal',
		'BNTU1854V641',
		'Herbal Products',
		'info@greenleafherbal.org',
		'https://greenleafherbal.org',
		'company'
	),
	(
		'Arcane Arts',
		'BNUI7829Z752',
		'Arts & Crafts',
		'support@arcanearts.org',
		'https://arcanearts.org',
		'company'
	),
	(
		'Skyward Airlines',
		'BNOP9125Y861',
		'Aviation',
		'contact@skywardairlines.org',
		'https://skywardairlines.org',
		'company'
	),
	(
		'GreenRoot Organics',
		'BNXZCQ3175H8A9',
		'Organic Products',
		'info@greenrootorganics.org',
		'https://greenrootorganics.org',
		'company'
	),
	(
		'PixelBlade Designs',
		'BNVCBK9142J6L7',
		'Graphic Design',
		'support@pixelbladedesigns.org',
		'https://pixelbladedesigns.org',
		'company'
	),
	(
		'FrostByte Tech',
		'BNOLTP6271R3E4',
		'Information Technology',
		'contact@frostbytetech.org',
		'https://frostbytetech.org',
		'company'
	),
	(
		'VividLens Studios',
		'BNMIFG7385W2P6',
		'Filmography',
		'info@vividlensstudios.org',
		'https://vividlensstudios.org',
		'company'
	),
	(
		'SolarWind Energy',
		'BNHZVK4519S3D2',
		'Energy Solutions',
		'support@solarwindenergy.org',
		'https://solarwindenergy.org',
		'company'
	),
	(
		'NatureFirst Herbals',
		'BNGYMW5724T4C5',
		'Pharmaceutical',
		'contact@naturefirstherbals.org',
		'https://naturefirstherbals.org',
		'company'
	),
	(
		'EchoTech Electronics',
		'BNFXPO6839Y5B6',
		'Electronics',
		'info@echotechelectronics.org',
		'https://echotechelectronics.org',
		'company'
	),
	(
		'MagmaForge Productions',
		'BNEXNI7914A7V8',
		'Metal Works',
		'support@magmaforgeproductions.org',
		'https://magmaforgeproductions.org',
		'company'
	),
	(
		'OceanFront Resorts',
		'BNZJLU8152B6M3',
		'Hospitality',
		'contact@oceanfrontresorts.org',
		'https://oceanfrontresorts.org',
		'company'
	),
	(
		'Quasar Finance',
		'BNWYHA9314D5L9',
		'Banking',
		'info@quasarfinance.org',
		'https://quasarfinance.org',
		'company'
	),
	(
		'SilverFern Realty',
		'BNVGXZ2481E2N7',
		'Real Estate',
		'support@silverfernrealty.org',
		'https://silverfernrealty.org',
		'company'
	),
	(
		'StellarDream Entertainment',
		'BNBSJY6923F8O3',
		'Entertainment',
		'contact@stellardreamentertainment.org',
		'https://stellardreamentertainment.org',
		'company'
	),
	(
		'Dynasty Gems',
		'BNASQW7526G1R4',
		'Jewelry',
		'info@dynastygems.org',
		'https://dynastygems.org',
		'company'
	),
	(
		'LunarTide Studios',
		'BNMDBV8614H7T2',
		'Game Development',
		'support@lunartidestudios.org',
		'https://lunartidestudios.org',
		'company'
	),
	(
		'WildRush Adventures',
		'BNLCYX9715I3U5',
		'Travel & Tourism',
		'contact@wildrushadventures.org',
		'https://wildrushadventures.org',
		'company'
	),
	(
		'Pinnacle Financial',
		'BNKZGH8259J4W2',
		'Finance',
		'info@pinnaclefinancial.org',
		'https://pinnaclefinancial.org',
		'company'
	),
	(
		'Inferno Security',
		'BNJFXD9348K5Z1',
		'Security Solutions',
		'support@infernosecurity.org',
		'https://infernosecurity.org',
		'company'
	),
	(
		'Celestial Arts',
		'BNIVBE7185L6A3',
		'Fine Arts',
		'contact@celestialarts.org',
		'https://celestialarts.org',
		'company'
	),
	(
		'PolarStar Logistics',
		'BNHUAF6927M2B4',
		'Logistics',
		'info@polarstarlogistics.org',
		'https://polarstarlogistics.org',
		'company'
	),
	(
		'Omega Law Firms',
		'BNGWZO7386N3V5',
		'Legal',
		'contact@omegalawfirms.org',
		'https://omegalawfirms.org',
		'company'
	),
	(
		'UrbanBlitz Fashion',
		'BNFYMN8174O9P6',
		'Fashion',
		'info@urbanblitzfashion.net',
		'https://urbanblitzfashion.net',
		'company'
	),
	(
		'Cosmos Films',
		'BNEXLK9268P1Q2',
		'Film Production',
		'support@cosmosfilms.io',
		'https://cosmosfilms.io',
		'company'
	),
	(
		'Phoenix Health',
		'BNZWKI8175Q2R9',
		'Healthcare',
		'contact@phoenixhealth.org',
		'https://phoenixhealth.org',
		'company'
	),
	(
		'RavenLock Security',
		'BNVYHJ9153S4T8',
		'Security Systems',
		'info@ravenlocksecurity.net',
		'https://ravenlocksecurity.net',
		'company'
	),
	(
		'NovaStar Cosmetics',
		'BNUWXC7129U5V6',
		'Cosmetics',
		'support@novastarcosmetics.io',
		'https://novastarcosmetics.io',
		'company'
	),
	(
		'Platinum Real Estates',
		'BNMXNQ6518W6X7',
		'Property',
		'contact@platinumrealestates.org',
		'https://platinumrealestates.org',
		'company'
	),
	(
		'MysticSprings Spa',
		'BNLBTO7392X8Y5',
		'Wellness',
		'info@mysticspringsspa.net',
		'https://mysticspringsspa.net',
		'company'
	),
	(
		'AzureCloud Tech',
		'BNKAPS6251Y9Z3',
		'Information Technology',
		'support@azurecloudtech.io',
		'https://azurecloudtech.io',
		'company'
	),
	(
		'RubyCraft Jewelers',
		'BNJQBW7145Z1A8',
		'Jewelry',
		'contact@rubycraftjewelers.org',
		'https://rubycraftjewelers.org',
		'company'
	),
	(
		'University of Wollongong',
		'ABN123456789',
		'Education',
		'contact@uow.edu.au',
		'https://uow.edu.au',
		'company'
	),
	(
		'University of New South Wales',
		'ABN987654321',
		'Education',
		'info@unsw.edu.au',
		'https://unsw.edu.au',
		'company'
	),
	(
		'University of Queensland',
		'ABN456789123',
		'Education',
		'support@uq.edu.au',
		'https://uq.edu.au',
		'company'
	),
	(
		'University of Melbourne',
		'ABN789012345',
		'Education',
		'info@unimelb.edu.au',
		'https://unimelb.edu.au',
		'company'
	),
	(
		'University of Sydney',
		'ABN234567890',
		'Education',
		'contact@sydney.edu.au',
		'https://sydney.edu.au',
		'company'
	),
	(
		'University of Western Australia',
		'ABN567890123',
		'Education',
		'support@uwa.edu.au',
		'https://uwa.edu.au',
		'company'
	),
	(
		'Australian National University',
		'ABN901234567',
		'Education',
		'contact@anu.edu.au',
		'https://anu.edu.au',
		'company'
	),
	(
		'University of Adelaide',
		'ABN345678901',
		'Education',
		'info@adelaide.edu.au',
		'https://adelaide.edu.au',
		'company'
	),
	(
		'Monash University',
		'ABN678901234',
		'Education',
		'support@monash.edu.au',
		'https://monash.edu.au',
		'company'
	),
	(
		'University of Technology Sydney',
		'ABN123456789',
		'Education',
		'contact@uts.edu.au',
		'https://uts.edu.au',
		'company'
	),
	(
		'University of Canberra',
		'ABN987654321',
		'Education',
		'info@canberra.edu.au',
		'https://canberra.edu.au',
		'company'
	),
	(
		'University of Newcastle',
		'ABN456789123',
		'Education',
		'support@newcastle.edu.au',
		'https://newcastle.edu.au',
		'company'
	),
	(
		'University of South Australia',
		'ABN789012345',
		'Education',
		'contact@unisa.edu.au',
		'https://unisa.edu.au',
		'company'
	),
	(
		'Macquarie University',
		'ABN234567890',
		'Education',
		'info@mq.edu.au',
		'https://mq.edu.au',
		'company'
	),
	(
		'University of Tasmania',
		'ABN567890123',
		'Education',
		'support@utas.edu.au',
		'https://utas.edu.au',
		'company'
	),
	(
		'Google Inc.',
		'US123456789',
		'Technology',
		'contact@google.com',
		'https://google.com',
		'company'
	),
	(
		'Microsoft Corporation',
		'US987654321',
		'Technology',
		'info@microsoft.com',
		'https://microsoft.com',
		'company'
	),
	(
		'Amazon Web Services',
		'US456789123',
		'Technology',
		'support@aws.com',
		'https://aws.com',
		'company'
	),
	(
		'Canva Tech, Inc.',
		'US789012345',
		'Technology',
		'info@canva.com',
		'https://canva.com',
		'company'
	),
	(
		'Atlassian Corp',
		'US234567890',
		'Technology',
		'contact@atlassian.com',
		'https://atlassian.com',
		'company'
	),
	(
		'Netflix Tech, Inc.',
		'US567890123',
		'Technology',
		'support@netflix.com',
		'https://netflix.com',
		'company'
	),
	(
		'OpenAI, Inc.',
		'US901234567',
		'Technology',
		'contact@openai.com',
		'https://openai.com',
		'company'
	),
	(
		'Facebook, Inc.',
		'US345678901',
		'Technology',
		'info@facebook.com',
		'https://facebook.com',
		'company'
	),
	(
		'Apple Inc.',
		'US678901234',
		'Technology',
		'support@apple.com',
		'https://apple.com',
		'company'
	),
	(
		'Twitter, Inc.',
		'US123456789',
		'Technology',
		'contact@twitter.com',
		'https://twitter.com',
		'company'
	),
	(
		'Salesforce, Inc.',
		'US987654321',
		'Technology',
		'info@salesforce.com',
		'https://salesforce.com',
		'company'
	),
	(
		'Uber Technologies, Inc.',
		'US456789123',
		'Technology',
		'support@uber.com',
		'https://uber.com',
		'company'
	),
	(
		'Adobe Inc.',
		'US789012345',
		'Technology',
		'contact@adobe.com',
		'https.adobe.com',
		'company'
	),
	(
		'PayPal Holdings, Inc.',
		'US234567890',
		'Technology',
		'info@paypal.com',
		'https://paypal.com',
		'company'
	),
	(
		'Zoom Video Communications, Inc.',
		'US567890123',
		'Technology',
		'support@zoom.com',
		'https://zoom.com',
		'company'
	),
	(
		'Coles Supermarkets',
		'ABN123456789',
		'Retail',
		'contact@coles.com',
		'https://coles.com',
		'company'
	),
	(
		'Woolworths Group',
		'ABN987654321',
		'Retail',
		'info@woolworths.com',
		'https://woolworths.com',
		'company'
	),
	(
		'Walmart Stores, Inc.',
		'US456789123',
		'Retail',
		'support@walmart.com',
		'https://walmart.com',
		'company'
	),
	(
		'Walgreens Boots Alliance',
		'US789012345',
		'Retail',
		'info@walgreens.com',
		'https://walgreens.com',
		'company'
	),
	(
		'Costco Wholesale Corporation',
		'US234567890',
		'Retail',
		'contact@costco.com',
		'https://costco.com',
		'company'
	),
	(
		'Kmart Corporation',
		'US567890123',
		'Retail',
		'support@kmart.com',
		'https://kmart.com',
		'company'
	),
	(
		'Aldi Stores',
		'ABN901234567',
		'Retail',
		'contact@aldi.com',
		'https://aldi.com',
		'company'
	),
	(
		'Target Corporation',
		'US345678901',
		'Retail',
		'info@target.com',
		'https://target.com',
		'company'
	),
	(
		'Best Buy Co., Inc.',
		'US678901234',
		'Retail',
		'contact@bestbuy.com',
		'https://bestbuy.com',
		'company'
	),
	(
		'Macy''s, Inc.',
		'US123456789',
		'Retail',
		'support@macys.com',
		'https://macys.com',
		'company'
	),
	(
		'The Home Depot, Inc.',
		'US987654321',
		'Retail',
		'info@homedepot.com',
		'https://homedepot.com',
		'company'
	),
	(
		'Lowe''s Companies, Inc.',
		'US456789123',
		'Retail',
		'contact@lowes.com',
		'https://lowes.com',
		'company'
	),
	(
		'CVS Health Corporation',
		'US789012345',
		'Retail',
		'support@cvs.com',
		'https://cvs.com',
		'company'
	),
	(
		'Dollar General Corporation',
		'US234567890',
		'Retail',
		'info@dollargeneral.com',
		'https://dollargeneral.com',
		'company'
	),
	(
		'Kroger Co.',
		'US567890123',
		'Retail',
		'contact@kroger.com',
		'https://kroger.com',
		'company'
	),
	(
		'Adidas AG',
		'ABN123456789',
		'Clothing',
		'contact@adidas.com',
		'https://adidas.com',
		'company'
	),
	(
		'Nike, Inc.',
		'US987654321',
		'Clothing',
		'info@nike.com',
		'https://nike.com',
		'company'
	),
	(
		'Puma SE',
		'ABN456789123',
		'Clothing',
		'support@puma.com',
		'https://puma.com',
		'company'
	),
	(
		'H&M Hennes & Mauritz AB',
		'ABN789012345',
		'Clothing',
		'info@hm.com',
		'https://hm.com',
		'company'
	),
	(
		'Zara - Inditex',
		'ABN234567890',
		'Clothing',
		'contact@zara.com',
		'https://zara.com',
		'company'
	),
	(
		'Louis Vuitton Malletier',
		'ABN567890123',
		'Clothing',
		'support@louisvuitton.com',
		'https://louisvuitton.com',
		'company'
	),
	(
		'Gucci',
		'ABN901234567',
		'Clothing',
		'contact@gucci.com',
		'https://gucci.com',
		'company'
	),
	(
		'Calvin Klein, Inc.',
		'US345678901',
		'Clothing',
		'info@calvinklein.com',
		'https://calvinklein.com',
		'company'
	),
	(
		'Levi Strauss & Co.',
		'US678901234',
		'Clothing',
		'contact@levi.com',
		'https://levi.com',
		'company'
	),
	(
		'Versace',
		'ABN123456789',
		'Clothing',
		'support@versace.com',
		'https://versace.com',
		'company'
	),
	(
		'Ralph Lauren Corporation',
		'US987654321',
		'Clothing',
		'info@ralphlauren.com',
		'https://ralphlauren.com',
		'company'
	),
	(
		'Tommy Hilfiger',
		'ABN456789123',
		'Clothing',
		'contact@tommyhilfiger.com',
		'https://tommyhilfiger.com',
		'company'
	),
	(
		'Burberry Group PLC',
		'ABN789012345',
		'Clothing',
		'support@burberry.com',
		'https://burberry.com',
		'company'
	),
	(
		'Chanel',
		'ABN234567890',
		'Clothing',
		'info@chanel.com',
		'https://chanel.com',
		'company'
	),
	(
		'Hugo Boss AG',
		'ABN567890123',
		'Clothing',
		'contact@hugoboss.com',
		'https://hugoboss.com',
		'company'
	),
	(
		'Toyota Motor Corporation',
		'ABN123456789',
		'Automotive',
		'contact@toyota.com',
		'https://toyota.com',
		'company'
	),
	(
		'Ford Motor Company',
		'US987654321',
		'Automotive',
		'info@ford.com',
		'https://ford.com',
		'company'
	),
	(
		'Honda Motor Co., Ltd.',
		'ABN456789123',
		'Automotive',
		'support@honda.com',
		'https://honda.com',
		'company'
	),
	(
		'BMW AG',
		'ABN789012345',
		'Automotive',
		'info@bmw.com',
		'https://bmw.com',
		'company'
	),
	(
		'General Motors Company',
		'US234567890',
		'Automotive',
		'contact@gm.com',
		'https://gm.com',
		'company'
	),
	(
		'Volkswagen Group',
		'ABN567890123',
		'Automotive',
		'support@vw.com',
		'https://vw.com',
		'company'
	),
	(
		'Nissan Motor Corporation',
		'ABN901234567',
		'Automotive',
		'contact@nissan.com',
		'https://nissan.com',
		'company'
	),
	(
		'Mercedes-Benz AG',
		'ABN345678901',
		'Automotive',
		'info@mercedes.com',
		'https://mercedes.com',
		'company'
	),
	(
		'Hyundai Motor Company',
		'ABN678901234',
		'Automotive',
		'contact@hyundai.com',
		'https://hyundai.com',
		'company'
	),
	(
		'Kia Corporation',
		'ABN123456789',
		'Automotive',
		'support@kia.com',
		'https://kia.com',
		'company'
	),
	(
		'Audi AG',
		'ABN987654321',
		'Automotive',
		'info@audi.com',
		'https://audi.com',
		'company'
	),
	(
		'Mazda Motor Corporation',
		'ABN456789123',
		'Automotive',
		'contact@mazda.com',
		'https://mazda.com',
		'company'
	),
	(
		'Subaru Corporation',
		'ABN789012345',
		'Automotive',
		'support@subaru.com',
		'https://subaru.com',
		'company'
	),
	(
		'Volvo Car Corporation',
		'ABN234567890',
		'Automotive',
		'info@volvo.com',
		'https://volvo.com',
		'company'
	),
	(
		'Fiat Chrysler Automobiles',
		'US567890123',
		'Automotive',
		'contact@fca.com',
		'https://fca.com',
		'company'
	),
	(
		'JPMorgan Chase & Co.',
		'ABN123456789',
		'Banking',
		'contact@jpmorganchase.com',
		'https://jpmorganchase.com',
		'company'
	),
	(
		'Wells Fargo & Co.',
		'US987654321',
		'Banking',
		'info@wellsfargo.com',
		'https://wellsfargo.com',
		'company'
	),
	(
		'Bank of America Corporation',
		'ABN456789123',
		'Banking',
		'support@bankofamerica.com',
		'https://bankofamerica.com',
		'company'
	),
	(
		'Citigroup Inc.',
		'ABN789012345',
		'Banking',
		'info@citigroup.com',
		'https://citigroup.com',
		'company'
	),
	(
		'HSBC Holdings plc',
		'ABN234567890',
		'Banking',
		'contact@hsbc.com',
		'https://hsbc.com',
		'company'
	),
	(
		'Wells Fargo & Co.',
		'US567890123',
		'Banking',
		'support@wellsfargo.com',
		'https://wellsfargo.com',
		'company'
	),
	(
		'The Bank of New York Mellon',
		'ABN901234567',
		'Banking',
		'contact@bnymellon.com',
		'https://bnymellon.com',
		'company'
	),
	(
		'Morgan Stanley',
		'ABN345678901',
		'Banking',
		'info@morganstanley.com',
		'https://morganstanley.com',
		'company'
	),
	(
		'TD Bank Group',
		'ABN678901234',
		'Banking',
		'contact@tdbankgroup.com',
		'https://tdbankgroup.com',
		'company'
	),
	(
		'Goldman Sachs Group, Inc.',
		'ABN123456789',
		'Banking',
		'info@goldmansachs.com',
		'https://goldmansachs.com',
		'company'
	),
	(
		'American Express Company',
		'ABN987654321',
		'Banking',
		'support@amex.com',
		'https://amex.com',
		'company'
	),
	(
		'US Bank',
		'ABN456789123',
		'Banking',
		'contact@usbank.com',
		'https://usbank.com',
		'company'
	),
	(
		'Capital One Financial Corporation',
		'ABN789012345',
		'Banking',
		'info@capitalone.com',
		'https://capitalone.com',
		'company'
	),
	(
		'Charles Schwab Corporation',
		'ABN234567890',
		'Banking',
		'contact@schwab.com',
		'https://schwab.com',
		'company'
	),
	(
		'PNC Financial Services Group',
		'US567890123',
		'Banking',
		'info@pnc.com',
		'https://pnc.com',
		'company'
	),
	(
		'State Farm Insurance',
		'ABN123456789',
		'Insurance',
		'contact@statefarm.com',
		'https://statefarm.com',
		'company'
	),
	(
		'Allstate Insurance Company',
		'ABN987654321',
		'Insurance',
		'info@allstate.com',
		'https://allstate.com',
		'company'
	),
	(
		'Progressive Corporation',
		'ABN456789123',
		'Insurance',
		'support@progressive.com',
		'https://progressive.com',
		'company'
	),
	(
		'Geico Corporation',
		'ABN789012345',
		'Insurance',
		'info@geico.com',
		'https://geico.com',
		'company'
	),
	(
		'Aetna, Inc.',
		'ABN234567890',
		'Insurance',
		'contact@aetna.com',
		'https://aetna.com',
		'company'
	),
	(
		'Liberty Mutual Group',
		'ABN567890123',
		'Insurance',
		'support@libertymutual.com',
		'https://libertymutual.com',
		'company'
	),
	(
		'Nationwide Mutual Insurance',
		'ABN901234567',
		'Insurance',
		'contact@nationwide.com',
		'https://nationwide.com',
		'company'
	),
	(
		'Chubb Limited',
		'ABN345678901',
		'Insurance',
		'info@chubb.com',
		'https://chubb.com',
		'company'
	),
	(
		'Travelers Companies, Inc.',
		'ABN678901234',
		'Insurance',
		'contact@travelers.com',
		'https://travelers.com',
		'company'
	),
	(
		'Prudential Financial, Inc.',
		'ABN123456789',
		'Insurance',
		'support@prudential.com',
		'https://prudential.com',
		'company'
	),
	(
		'Samsung Electronics Co., Ltd.',
		'ABN123456789',
		'Electronics',
		'contact@samsung.com',
		'https://samsung.com',
		'company'
	),
	(
		'Nokia Corporation',
		'ABN987654321',
		'Electronics',
		'info@nokia.com',
		'https://nokia.com',
		'company'
	),
	(
		'Apple Inc.',
		'ABN456789123',
		'Electronics',
		'support@apple.com',
		'https://apple.com',
		'company'
	),
	(
		'Sony Corporation',
		'ABN789012345',
		'Electronics',
		'info@sony.com',
		'https://sony.com',
		'company'
	),
	(
		'Xiaomi Corporation',
		'ABN234567890',
		'Electronics',
		'contact@xiaomi.com',
		'https://xiaomi.com',
		'company'
	),
	(
		'Oppo Electronics Corporation',
		'ABN567890123',
		'Electronics',
		'support@oppo.com',
		'https://oppo.com',
		'company'
	),
	(
		'AsusTek Computer Inc.',
		'ABN901234567',
		'Electronics',
		'contact@asus.com',
		'https://asus.com',
		'company'
	),
	(
		'LG Electronics Inc.',
		'ABN345678901',
		'Electronics',
		'info@lg.com',
		'https://lg.com',
		'company'
	),
	(
		'Dell Technologies Inc.',
		'US678901234',
		'Electronics',
		'contact@dell.com',
		'https://dell.com',
		'company'
	),
	(
		'Intel Corporation',
		'US123456789',
		'Electronics',
		'info@intel.com',
		'https://intel.com',
		'company'
	),
	(
		'Nvidia Corporation',
		'US987654321',
		'Electronics',
		'support@nvidia.com',
		'https://nvidia.com',
		'company'
	),
	(
		'Panasonic Corporation',
		'ABN456789123',
		'Electronics',
		'contact@panasonic.com',
		'https://panasonic.com',
		'company'
	),
	(
		'Toshiba Corporation',
		'ABN789012345',
		'Electronics',
		'info@toshiba.com',
		'https://toshiba.com',
		'company'
	),
	(
		'Hitachi, Ltd.',
		'ABN234567890',
		'Electronics',
		'contact@hitachi.com',
		'https://hitachi.com',
		'company'
	),
	(
		'Sharp Corporation',
		'ABN567890123',
		'Electronics',
		'support@sharp.com',
		'https://sharp.com',
		'company'
	),
	(
		'Lenovo Group Limited',
		'ABN901234567',
		'Electronics',
		'info@lenovo.com',
		'https://lenovo.com',
		'company'
	),
	(
		'Western Digital Corporation',
		'ABN345678901',
		'Electronics',
		'contact@wd.com',
		'https://wd.com',
		'company'
	),
	(
		'Seagate Technology Holdings',
		'ABN678901234',
		'Electronics',
		'support@seagate.com',
		'https://seagate.com',
		'company'
	),
	(
		'Epson Corporation',
		'ABN123456789',
		'Electronics',
		'info@epson.com',
		'https://epson.com',
		'company'
	),
	(
		'SanDisk Corporation',
		'ABN987654321',
		'Electronics',
		'contact@sandisk.com',
		'https://sandisk.com',
		'company'
	);