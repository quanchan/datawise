/* Replace with your SQL commands */
create table if not exists Person 
(
  id serial primary key,
  first_name varchar(255) not null,
  last_name varchar(255) not null,
  middle_name varchar(255) null,
  initials varchar(10) not null,
  email_prefix varchar(255) not null,
  gender varchar(10) not null,
  title varchar(10) not null,
  entity_meta_id int not null,
  constraint fk_entity_meta_id foreign key (entity_meta_id) references entity_meta(id) on delete cascade
);

insert into entity_meta (id, display_name, description, table_name, standalone, custom) values (
  1,
  'Person',
  '',
  'Person',
  false,
  false
);

insert into column_meta (display_name, description, example, column_name, entity_meta_id) values (
  'First Name',
  '',
  'John, Mary',
  'first_name',
  1
);

insert into column_meta (display_name, description, example, column_name, entity_meta_id) values (
  'Last Name',
  '',
  'Smith, Jones',
  'last_name',
  1
);

insert into column_meta (display_name, description, example, column_name, entity_meta_id) values (
  'Middle Name',
  '',
  'Grace, William',
  'middle_name',
  1
);

insert into column_meta (display_name, description, example, column_name, entity_meta_id) values (
  'Initials',
  'First letters of a person fullname, separated by a dot',
  'J.S, M.J.W',
  'initials',
  1
);

insert into column_meta (display_name, description, example, column_name, entity_meta_id) values (
  'Email Prefix',
  'Email username created from person fullname',
  'johnsmith, maryjwatson',
  'email_prefix',
  1
);

insert into column_meta (display_name, description, example, column_name, entity_meta_id) values (
  'Gender',
  'Can be Male, Female or Non-Binary. Can be shorten to M, F and N',
  'Male, Female, Non-Binary',
  'gender',
  1
);

insert into column_meta (display_name, description, example, column_name, entity_meta_id) values (
  'Title',
  'Used to address individuals in various formal and informal contexts.',
  'Mr., Mrs., Ms., Dr., Prof.',
  'title',
  1
);

INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('John', 'Doe', 'Michael', 'JMD', 'jmdoe', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Jane', 'Smith', 'Elizabeth', 'JSE', 'janesmith', 'Female', 'Mrs.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Robert', 'Johnson', 'Lee', 'RJL', 'robertjohnson', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Emily', 'Brown', 'Grace', 'EBG', 'ebrown', 'Non-Binary', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('David', 'Wilson', 'James', 'DWJ', 'djwilson', 'Male', 'Dr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Sarah', 'Taylor', NULL, 'ST', 'staylor123', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Michael', 'Anderson', 'Thomas', 'MAT', 'm.anderson', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Olivia', 'Martinez', 'Marie', 'OMM', 'oliviam', 'Female', 'Dr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('William', 'White', 'Alexander', 'WWA', 'wwhite', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Sophia', 'Garcia', 'Isabella', 'SGI', 'sophiag123', 'Female', 'Mrs.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Daniel', 'Miller', 'Joseph', 'DMJ', 'dm.joseph', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Ava', 'Wilson', 'Grace', 'AWG', 'ava_grace', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('James', 'Anderson', 'Robert', 'JAR', 'jamesanderson123', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Sophie', 'Davis', 'Elizabeth', 'SDE', 'sophie.d', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Ethan', 'Clark', 'Michael', 'ECM', 'ethan.m.clark', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Oliver', 'Harris', 'William', 'OHW', 'oharris123', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Mia', 'Rodriguez', 'Isabella', 'MRI', 'mia_rodr', 'Non-Binary', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Amelia', 'Lee', 'Emily', 'ALE', 'a.lee', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Benjamin', 'Garcia', 'Lucas', 'BGL', 'beng', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Emma', 'Martinez', 'Sophia', 'EMS', 'emma.m', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Liam', 'Brown', 'Alexander', 'LBA', 'liam_brown', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Charlotte', 'Smith', 'Grace', 'CSG', 'charlotte.grace', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Aiden', 'Johnson', 'Carter', 'AJC', 'aiden.c.j', 'Non-Binary', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Ella', 'Williams', 'Madison', 'EWM', 'ellaw123', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Jackson', 'Taylor', 'Mason', 'JTM', 'jacksonm', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Harper', 'Jones', 'Ava', 'HJA', 'harper.j', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Sebastian', 'Moore', 'Henry', 'SMH', 'sebmoore', 'Non-Binary', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Grace', 'Davis', 'Chloe', 'GDC', 'graced', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Noah', 'Walker', 'Ethan', 'NWE', 'noah.w', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Luna', 'Allen', 'Scarlett', 'LAS', 'luna.s', 'Non-Binary', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Lucas', 'Young', 'Liam', 'LYL', 'l.young', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Evelyn', 'Rivera', 'Sofia', 'ERS', 'evelyn_rivera', 'Female', 'Prof.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Logan', 'Cruz', 'Aiden', 'LCA', 'logan.a.cruz', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Aria', 'Flores', 'Mia', 'AFM', 'aria_mia', 'Female', 'Prof.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Carter', 'Perez', 'Elijah', 'CPE', 'carter.p', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Avery', 'Lopez', 'Ella', 'ALE', 'a.lopez', 'Female', 'Prof.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Jayden', 'Gonzalez', 'James', 'JGJ', 'jaydenj', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Layla', 'Sanchez', 'Liam', 'LSSL', 'layla.s', 'Female', 'Dr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Mateo', 'Rivera', 'Elena', 'MRE', 'mateorivera', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Nora', 'Perez', 'Oliver', 'NPO', 'nora.perez', 'Female', 'Dr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Gabriel', 'Ramirez', 'Alexander', 'GRA', 'gabrielr123', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Addison', 'Gomez', 'Lucas', 'AGL', 'addison.l', 'Female', 'Dr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Leo', 'Ortiz', 'Ava', 'LOA', 'leo.ortiz', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Elizabeth', 'Torres', 'Grace', 'ETG', 'eliz_torres', 'Female', 'Dr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Jack', 'Hernandez', 'Liam', 'JHL', 'jack_l.h', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Mila', 'Gutierrez', 'Emma', 'MGE', 'mila_e', 'Female', 'Mrs', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Wyatt', 'Vargas', 'Ethan', 'WVE', 'wyatt.v', 'Male', 'Dr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Chloe', 'Santiago', 'Isabella', 'CSI', 'chloe_s', 'Female', 'Mrs', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Owen', 'Castillo', 'Benjamin', 'OCB', 'owenc', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Lily', 'Gomez', 'Olivia', 'LGO', 'lilyg123', 'Female', 'Mrs', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Samuel', 'Diaz', 'Ava', 'SDA', 'sam.diaz', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Aurora', 'Reyes', 'Sophia', 'ARS', 'aurora.reyes', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Haruki', 'Tanaka', 'Akira', 'HTA', 'harukitan', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Mei', 'Chen', 'Ling', 'MCL', 'meichen', 'Female', 'Mrs.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Rajesh', 'Patel', 'Amit', 'RPA', 'raj_pat', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Sakura', 'Yamamoto', 'Hiroshi', 'SYH', 'sakura.h', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Ji-hoon', 'Kim', 'Min-jun', 'JHK', 'j.hoon', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Hyun-ju', 'Lee', 'Min-ji', 'HJLM', 'hyun_lee', 'Female', 'Mrs.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Rajiv', 'Gupta', 'Vikram', 'RGV', 'rajiv.g', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Aaradhya', 'Rao', 'Amita', 'ARR', 'aaradhya', 'Female', 'Ms.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Wei', 'Li', 'Chen', 'WLC', 'wei_li', 'Male', 'Mr.', 1);
INSERT INTO Person (first_name, last_name, middle_name, initials, email_prefix, gender, title, entity_meta_id) VALUES ('Yuki', 'Nakamura', 'Hana', 'YNH', 'yuki_h', 'Female', 'Mrs.', 1);