create table
	if not exists car (
		id serial primary key,
		rego varchar(10),
		model varchar(50),
		seats int,
		weight int,
		engine_type varchar(10),
		make varchar(50),
		type varchar(20),
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
	('Car', '', 'car', false, false);

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
		'Car Registration Number',
		'Registration number of the car',
		'XYZ123',
		'rego',
		'varchar.10',
		'entityVarchar',
		'car'
	),
	(
		'Car Model',
		'Model of the car',
		'Hyundai i30, BMW X5',
		'model',
		'varchar.50',
		'entityVarchar',
		'car'
	),
	(
		'Car Seats',
		'Total number of seats (including driver) of the car',
		'4, 5, 2, 7',
		'seats',
		'number.3',
		'entityNumber',
		'car'
	),
	(
		'Car Weight',
		'Weight of the car in KG',
		'1000',
		'weight',
		'number.6',
		'entityNumber',
		'car'
	),
	(
		'Car Engine Type',
		'Engine/Fuel Type',
		'petrol, electric, diesel',
		'engine_type',
		'varchar.100',
		'entityVarchar',
		'car'
	),
	(
		'Car Make',
		'Manufacturer of the car',
		'Toyota',
		'make',
		'varchar.50',
		'entityVarchar',
		'car'
	),
	(
		'Car Body Type',
		'Body type of the car',
		'sedan, hatch, SUV',
		'type',
		'varchar.50',
		'entityVarchar',
		'car'
	);

INSERT INTO
	car (
		rego,
		model,
		seats,
		weight,
		engine_type,
		make,
		type,
		entity_meta_table
	)
VALUES
	(
		'ABC123',
		'Toyota Corolla',
		5,
		1300,
		'petrol',
		'Toyota',
		'hatch',
		'car'
	),
	(
		'XYZ789',
		'Honda Civic',
		5,
		1200,
		'petrol',
		'Honda',
		'sedan',
		'car'
	),
	(
		'DEF456',
		'Ford F-150',
		3,
		4000,
		'diesel',
		'Ford',
		'truck',
		'car'
	),
	(
		'GHI789',
		'Mercedes-Benz GLC',
		5,
		1800,
		'petrol',
		'Mercedes-Benz',
		'SUV',
		'car'
	),
	(
		'JKL123',
		'Volkswagen Transporter',
		9,
		2200,
		'diesel',
		'Volkswagen',
		'bus',
		'car'
	),
	(
		'MNO456',
		'Tesla Model 3',
		5,
		1800,
		'electric',
		'Tesla',
		'sedan',
		'car'
	),
	(
		'PQR789',
		'BMW X5',
		5,
		2100,
		'petrol',
		'BMW',
		'SUV',
		'car'
	),
	(
		'STU123',
		'Chevrolet Silverado',
		3,
		4500,
		'diesel',
		'Chevrolet',
		'truck',
		'car'
	),
	(
		'VWX456',
		'Kia Sportage',
		5,
		1600,
		'petrol',
		'Kia',
		'SUV',
		'car'
	),
	(
		'YZA123',
		'Nissan Versa',
		5,
		1200,
		'petrol',
		'Nissan',
		'sedan',
		'car'
	),
	(
		'BCD789',
		'Ford Transit',
		2,
		3500,
		'diesel',
		'Ford',
		'van',
		'car'
	),
	(
		'EFG123',
		'Toyota Prius',
		5,
		1400,
		'hybrid',
		'Toyota',
		'hatch',
		'car'
	),
	(
		'HIJ456',
		'Volvo XC90',
		7,
		2200,
		'electric',
		'Volvo',
		'SUV',
		'car'
	),
	(
		'KLM123',
		'Chevrolet Suburban',
		7,
		5800,
		'petrol',
		'Chevrolet',
		'SUV',
		'car'
	),
	(
		'NOP789',
		'Volkswagen Golf',
		5,
		1300,
		'petrol',
		'Volkswagen',
		'hatch',
		'car'
	),
	(
		'QRS123',
		'Ford Mustang',
		2,
		1600,
		'petrol',
		'Ford',
		'coupe',
		'car'
	),
	(
		'TUV789',
		'Hyundai Santa Fe',
		5,
		1800,
		'petrol',
		'Hyundai',
		'SUV',
		'car'
	),
	(
		'VWX123',
		'Dodge Ram',
		3,
		4800,
		'diesel',
		'Dodge',
		'truck',
		'car'
	),
	(
		'YZA789',
		'Audi Q5',
		5,
		1900,
		'petrol',
		'Audi',
		'SUV',
		'car'
	),
	(
		'BCD123',
		'Mazda MX-5',
		2,
		1100,
		'petrol',
		'Mazda',
		'roadster',
		'car'
	),
	(
		'DEF789',
		'Chevrolet Express',
		12,
		4500,
		'diesel',
		'Chevrolet',
		'van',
		'car'
	),
	(
		'GHI123',
		'Ford Explorer',
		7,
		2000,
		'petrol',
		'Ford',
		'SUV',
		'car'
	),
	(
		'JKL456',
		'Toyota Sienna',
		7,
		1900,
		'hybrid',
		'Toyota',
		'minivan',
		'car'
	),
	(
		'MNO789',
		'Jeep Wrangler',
		4,
		3500,
		'petrol',
		'Jeep',
		'SUV',
		'car'
	),
	(
		'PQR123',
		'Ram ProMaster',
		2,
		4200,
		'diesel',
		'Ram',
		'van',
		'car'
	),
	(
		'STU456',
		'Lexus RX',
		5,
		1800,
		'hybrid',
		'Lexus',
		'SUV',
		'car'
	),
	(
		'VWX789',
		'Nissan Rogue',
		5,
		1600,
		'electric',
		'Nissan',
		'SUV',
		'car'
	),
	(
		'YZA456',
		'GMC Yukon',
		7,
		5700,
		'petrol',
		'GMC',
		'SUV',
		'car'
	),
	(
		'BCD012',
		'Hyundai Elantra',
		5,
		1400,
		'petrol',
		'Hyundai',
		'sedan',
		'car'
	),
	(
		'EFG345',
		'Subaru Outback',
		5,
		1700,
		'petrol',
		'Subaru',
		'SUV',
		'car'
	),
	(
		'HIJ678',
		'Dodge Grand Caravan',
		7,
		2200,
		'petrol',
		'Dodge',
		'minivan',
		'car'
	),
	(
		'KLM012',
		'Audi A4',
		5,
		1600,
		'petrol',
		'Audi',
		'sedan',
		'car'
	),
	(
		'NOP345',
		'Chevrolet Equinox',
		5,
		1600,
		'electric',
		'Chevrolet',
		'SUV',
		'car'
	),
	(
		'QRS678',
		'Mitsubishi Outlander',
		7,
		1800,
		'hybrid',
		'Mitsubishi',
		'SUV',
		'car'
	),
	(
		'TUV012',
		'Ford Escape',
		5,
		1600,
		'petrol',
		'Ford',
		'SUV',
		'car'
	),
	(
		'VWX345',
		'Kia Sorento',
		7,
		1900,
		'petrol',
		'Kia',
		'SUV',
		'car'
	),
	(
		'YZA678',
		'Volvo V60',
		5,
		1600,
		'hybrid',
		'Volvo',
		'station wagon',
		'car'
	),
	(
		'BCD345',
		'Tesla Model X',
		7,
		2200,
		'electric',
		'Tesla',
		'SUV',
		'car'
	),
	(
		'EFG678',
		'Honda Odyssey',
		8,
		2200,
		'hybrid',
		'Honda',
		'minivan',
		'car'
	),
	(
		'HIJ012',
		'Nissan Sentra',
		5,
		1300,
		'petrol',
		'Nissan',
		'sedan',
		'car'
	),
	(
		'KLM345',
		'Toyota RAV4',
		5,
		1700,
		'hybrid',
		'Toyota',
		'SUV',
		'car'
	),
	(
		'NOP678',
		'GMC Acadia',
		7,
		1900,
		'petrol',
		'GMC',
		'SUV',
		'car'
	),
	(
		'QRS012',
		'Subaru Impreza',
		5,
		1400,
		'petrol',
		'Subaru',
		'sedan',
		'car'
	),
	(
		'TUV345',
		'Jeep Cherokee',
		5,
		1600,
		'petrol',
		'Jeep',
		'SUV',
		'car'
	),
	(
		'VWX678',
		'Lexus ES',
		5,
		1600,
		'hybrid',
		'Lexus',
		'sedan',
		'car'
	),
	(
		'YZA012',
		'Ford Bronco',
		4,
		3800,
		'petrol',
		'Ford',
		'SUV',
		'car'
	),
	(
		'BCD678',
		'Chevrolet Tahoe',
		7,
		5700,
		'petrol',
		'Chevrolet',
		'SUV',
		'car'
	),
	(
		'EFG012',
		'Audi Q7',
		7,
		2300,
		'hybrid',
		'Audi',
		'SUV',
		'car'
	),
	(
		'HIJ345',
		'Kia Telluride',
		7,
		2000,
		'electric',
		'Kia',
		'SUV',
		'car'
	),
	(
		'KLM678',
		'Hyundai Tucson',
		5,
		1600,
		'petrol',
		'Hyundai',
		'SUV',
		'car'
	),
	(
		'NOP012',
		'Mazda CX-5',
		5,
		1600,
		'petrol',
		'Mazda',
		'SUV',
		'car'
	),
	(
		'QRS345',
		'Nissan Murano',
		5,
		1700,
		'hybrid',
		'Nissan',
		'SUV',
		'car'
	),
	(
		'TUV678',
		'Toyota Highlander',
		7,
		2000,
		'hybrid',
		'Toyota',
		'SUV',
		'car'
	),
	(
		'VWX012',
		'Tesla Model Y',
		5,
		1900,
		'electric',
		'Tesla',
		'SUV',
		'car'
	),
	(
		'YZA345',
		'Volkswagen Passat',
		5,
		1600,
		'hybrid',
		'Volkswagen',
		'sedan',
		'car'
	),
	(
		'BCD012',
		'Jeep Renegade',
		5,
		1500,
		'petrol',
		'Jeep',
		'SUV',
		'car'
	),
	(
		'EFG345',
		'Lexus GX',
		7,
		5000,
		'petrol',
		'Lexus',
		'SUV',
		'car'
	),
	(
		'HIJ678',
		'Hyundai Santa Cruz',
		5,
		1800,
		'petrol',
		'Hyundai',
		'pickup',
		'car'
	),
	(
		'KLM012',
		'Ram 1500',
		5,
		5100,
		'diesel',
		'Ram',
		'pickup',
		'car'
	),
	(
		'NOP345',
		'Ford Ranger',
		5,
		4200,
		'petrol',
		'Ford',
		'pickup',
		'car'
	),
	(
		'QRS678',
		'Toyota Tacoma',
		4,
		4100,
		'petrol',
		'Toyota',
		'pickup',
		'car'
	),
	(
		'TUV012',
		'Chevrolet Colorado',
		5,
		4300,
		'diesel',
		'Chevrolet',
		'pickup',
		'car'
	),
	(
		'VWX345',
		'GMC Sierra',
		5,
		5200,
		'petrol',
		'GMC',
		'pickup',
		'car'
	),
	(
		'YZA678',
		'Nissan Titan',
		5,
		5400,
		'petrol',
		'Nissan',
		'pickup',
		'car'
	);