create table
	if not exists dependent_relationship (
		id serial primary key,
		dependent_relationship varchar(255) not null,
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
	(
		'Dependent Relationship',
		'',
		'dependent_relationship',
		true,
		false
	);

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
		'Dependent Relationship',
		'',
		'Spouse',
		'dependent_relationship',
		'varchar(255)',
		'entityVarchar',
		'dependent_relationship'
	);

insert into
	dependent_relationship (dependent_relationship, entity_meta_table)
values
	('Spouse', 'dependent_relationship'),
	('Child', 'dependent_relationship'),
	('Parent', 'dependent_relationship'),
	('Sibling', 'dependent_relationship'),
	('Grandparent', 'dependent_relationship'),
	('Grandchild', 'dependent_relationship'),
	('Aunt', 'dependent_relationship'),
	('Uncle', 'dependent_relationship'),
	('Cousin', 'dependent_relationship'),
	('Niece', 'dependent_relationship'),
	('Nephew', 'dependent_relationship'),
	('Stepchild', 'dependent_relationship'),
	('Stepparent', 'dependent_relationship'),
	('Stepsibling', 'dependent_relationship'),
	('In-Law', 'dependent_relationship'),
	('Guardian', 'dependent_relationship'),
	('Ward', 'dependent_relationship'),
	('Other', 'dependent_relationship'),
	('None', 'dependent_relationship'),
	('Self', 'dependent_relationship'),
	('Friend', 'dependent_relationship'),
	('Colleague', 'dependent_relationship'),
	('Boss', 'dependent_relationship'),
	('Employee', 'dependent_relationship'),
	('Co-Worker', 'dependent_relationship'),
	('Roommate', 'dependent_relationship'),
	('Landlord', 'dependent_relationship'),
	('Tenant', 'dependent_relationship'),
	('Neighbor', 'dependent_relationship'),
	('Acquaintance', 'dependent_relationship'),
	('Stranger', 'dependent_relationship'),
	('Pet', 'dependent_relationship'),
	('Supervisor', 'dependent_relationship'),
	('Subordinate', 'dependent_relationship'),
	('Mentor', 'dependent_relationship'),
	('Mentee', 'dependent_relationship'),
	('Coach', 'dependent_relationship'),
	('Player', 'dependent_relationship'),
	('Doctor', 'dependent_relationship'),
	('Patient', 'dependent_relationship'),
	('Teacher', 'dependent_relationship'),
	('Student', 'dependent_relationship'),
	('Advisor', 'dependent_relationship'),
	('Advisee', 'dependent_relationship'),
	('Counselor', 'dependent_relationship'),
	('Client', 'dependent_relationship'),
	('Customer', 'dependent_relationship'),
	('Supplier', 'dependent_relationship'),
	('Vendor', 'dependent_relationship'),
	('Partner', 'dependent_relationship'),
	('Associate', 'dependent_relationship');