create table if not exists car (
    id serial primary key,
    car_rego varchar(10),
    car_model varchar(50),
    car_capacity int,
    car_weight int,
    car_status varchar(100),
    car_make varchar(50),
    entity_meta_id int not null,
    constraint fk_entity_meta_id foreign key (entity_meta_id) references entity_meta(id) on delete cascade
);

insert into entity_meta (id, display_name, description, table_name, standalone, custom)
values (4, 'Car', '', 'car', false, false);

insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values ('Car Rego', 'Registration number of the car', 'XYZ123', 'car_rego', 'varchar', 4);

insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values ('Car Model', 'Model of the car', 'Sedan', 'car_model', 'varchar', 4);

insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values ('Car Capacity', 'Capacity of the car in CC', '1500', 'car_capacity', 'integer', 4);

insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values ('Car Weight', 'Weight of the car in KG', '1000', 'car_weight', 'integer', 4);

insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values ('Car Status', 'Status of the car', 'Active', 'car_status', 'varchar', 4);

insert into column_meta (display_name, description, example, column_name, data_type, entity_meta_id)
values ('Car Make', 'Make of the car', 'Toyota', 'car_make', 'varchar', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('AB1122', 'Sedan', 1500, 1200, 'Active', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('BC2233', 'Sedan', 1520, 1210, 'Inactive', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('CD3344', 'Sedan', 1530, 1220, 'Active', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('UV1113', 'Convertible', 2000, 1500, 'Active', 'Hyundai', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('VW2214', 'MPV', 2250, 1700, 'Inactive', 'Kia', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('WX3315', 'Sedan', 1550, 1275, 'Active', 'Subaru', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('XY4416', 'Sedan', 1560, 1285, 'Active', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('YZ5517', 'Sedan', 1580, 1295, 'Inactive', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('ZA6618', 'Sedan', 1590, 1300, 'Active', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('AB7719', 'Coupe', 2100, 1600, 'Inactive', 'BMW', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('BC8820', 'SUV', 2300, 1750, 'Active', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('CD9921', 'Convertible', 2200, 1650, 'Inactive', 'Ford', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('DE0022', 'Sedan', 1600, 1325, 'Active', 'Subaru', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('EF1123', 'Sedan', 1620, 1345, 'Inactive', 'Chevrolet', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('FG2244', 'Hatchback', 2350, 1800, 'Active', 'Volkswagen', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('GH3355', 'Sedan', 1630, 1360, 'Inactive', 'Nissan', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('JI4466', 'Sedan', 1660, 1395, 'Maintenance', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('KL5577', 'Sedan', 1680, 1410, 'Under Review', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('MN6688', 'Sedan', 1690, 1430, 'Unavailable', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('OP7799', 'Coupe', 2400, 1900, 'Maintenance', 'BMW', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('PQ8800', 'SUV', 2450, 1930, 'Under Review', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('QR9911', 'Convertible', 2500, 1975, 'Unavailable', 'Ford', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('RS0012', 'Sedan', 1700, 1455, 'Maintenance', 'Subaru', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('ST1123', 'Sedan', 1720, 1475, 'Under Review', 'Chevrolet', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('TU2244', 'Hatchback', 2550, 2020, 'Unavailable', 'Volkswagen', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('UV3355', 'Sedan', 1740, 1495, 'Maintenance', 'Nissan', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('VW4466', 'Convertible', 2600, 2050, 'Under Review', 'Mazda', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('WX5577', 'Sedan', 1755, 1510, 'Unavailable', 'Honda', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('XY6688', 'Hatchback', 2620, 2080, 'Maintenance', 'Hyundai', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('YZ7799', 'Sedan', 1770, 1530, 'Under Review', 'Kia', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('ZA8800', 'SUV', 2650, 2100, 'Unavailable', 'Jaguar', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('AB9911', 'Convertible', 2680, 2130, 'Maintenance', 'Tesla', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('BC0012', 'Sedan', 1790, 1550, 'Under Review', 'Dodge', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('CD1123', 'Hatchback', 2700, 2150, 'Unavailable', 'Ferrari', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('DE2244', 'Sedan', 1805, 1570, 'Maintenance', 'Rolls-Royce', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('EF3355', 'SUV', 2725, 2180, 'Under Review', 'Lamborghini', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('FG11AA', 'Hatchback', 1850, 1605, 'Unavailable', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('GH22BB', 'SUV', 2800, 2200, 'Maintenance', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('HI33CC', 'Sedan', 1875, 1635, 'Under Review', 'Aston Martin', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('IJ44DD', 'Convertible', 2855, 2230, 'Unavailable', 'McLaren', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('JK55EE', 'Hatchback', 1900, 1660, 'Maintenance', 'McLaren', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('LM66GG', 'SUV', 2950, 2305, 'Under Review', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('NO77HH', 'Convertible', 2975, 2330, 'Unavailable', 'BMW', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('OP88II', 'Hatchback', 1950, 1705, 'Maintenance', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('QR99JJ', 'SUV', 3050, 2400, 'Under Review', 'Nissan', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('ST00KK', 'Convertible', 3075, 2435, 'Unavailable', 'Subaru', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('TU01LM', 'Sedan', 3000, 1700, 'Unavailable', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('UV02NO', 'SUV', 2900, 2500, 'Maintenance', 'Honda', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('VW03OP', 'Convertible', 2950, 2350, 'Under Review', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('WX04QR', 'Hatchback', 2000, 1650, 'Unavailable', 'Nissan', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('XY05ST', 'SUV', 3100, 2400, 'Maintenance', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('YZ06TU', 'Convertible', 2800, 2300, 'Under Review', 'Subaru', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('ZV07UV', 'Hatchback', 1800, 1600, 'Unavailable', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('AB08VW', 'SUV', 3100, 2450, 'Maintenance', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('BC09WX', 'Convertible', 2750, 2200, 'Under Review', 'Nissan', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('CD10XY', 'Hatchback', 1700, 1550, 'Unavailable', 'Subaru', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('DE11YZ', 'SUV', 2950, 2350, 'Maintenance', 'Honda', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('EF12ZV', 'Convertible', 2700, 2150, 'Under Review', 'Honda', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('FG13AB', 'Hatchback', 1750, 1500, 'Unavailable', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('GH14BC', 'SUV', 2900, 2300, 'Maintenance', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('HI15CD', 'Convertible', 2650, 2100, 'Under Review', 'Nissan', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('IJ16DE', 'Hatchback', 1650, 1450, 'Unavailable', 'Subaru', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('JK17EF', 'SUV', 2800, 2250, 'Maintenance', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('LM18FG', 'Convertible', 2600, 2050, 'Under Review', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('NO19GH', 'Hatchback', 1600, 1400, 'Unavailable', 'Honda', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('OP20IJ', 'Sedan', 3100, 1600, 'Unavailable', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('PQ21JK', 'Convertible', 2700, 2000, 'Under Review', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('QR22LM', 'SUV', 2900, 2350, 'Maintenance', 'Ford', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('RS23NO', 'Hatchback', 1800, 1500, 'Unavailable', 'Volkswagen', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('ST24OP', 'Convertible', 2850, 2200, 'Under Review', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('UV25PQ', 'Sedan', 2900, 1700, 'Unavailable', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('VW26QR', 'Hatchback', 2100, 1550, 'Maintenance', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('WX27RS', 'SUV', 2950, 2300, 'Under Review', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('YZ28ST', 'Convertible', 2650, 2000, 'Unavailable', 'Ford', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('AB29UV', 'Hatchback', 1950, 1550, 'Maintenance', 'Nissan', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('BC30VW', 'SUV', 2800, 2150, 'Under Review', 'Volkswagen', 4);

-- The next set...

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('CD31WX', 'Sedan', 3000, 1600, 'Unavailable', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('DE32XY', 'Hatchback', 2100, 1550, 'Maintenance', 'Ford', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('EF33YZ', 'Convertible', 2700, 2000, 'Under Review', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('FG34AB', 'SUV', 2950, 2300, 'Unavailable', 'Volkswagen', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('GH35BC', 'Sedan', 2900, 1650, 'Maintenance', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('HI36CD', 'Hatchback', 2000, 1600, 'Unavailable', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('IJ37DE', 'SUV', 2900, 2250, 'Maintenance', 'Ford', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('JK38EF', 'Convertible', 2850, 2100, 'Under Review', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('LM39FG', 'Sedan', 2950, 1650, 'Unavailable', 'Volkswagen', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('NO40GH', 'Hatchback', 1900, 1500, 'Maintenance', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('OP41HI', 'Convertible', 2650, 2150, 'Under Review', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('PQ42IJ', 'SUV', 2950, 2200, 'Unavailable', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('QR43JK', 'Sedan', 3100, 1700, 'Maintenance', 'Volkswagen', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('RS44LM', 'Hatchback', 2100, 1500, 'Under Review', 'Ford', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('ST45NO', 'SUV', 2850, 2350, 'Unavailable', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('UV46OP', 'Convertible', 2600, 2000, 'Maintenance', 'Toyota', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('VW47PQ', 'Sedan', 3000, 1650, 'Under Review', 'Ford', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('WX48QR', 'Hatchback', 1900, 1550, 'Unavailable', 'Audi', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('YZ49RS', 'SUV', 2950, 2250, 'Maintenance', 'Volkswagen', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('AB50ST', 'Convertible', 2800, 2100, 'Under Review', 'Mercedes', 4);

insert into car (car_rego, car_model, car_capacity, car_weight, car_status, car_make, entity_meta_id)
values 
('BC51UV', 'Hatchback', 2000, 1500, 'Maintenance', 'Ford', 4);


