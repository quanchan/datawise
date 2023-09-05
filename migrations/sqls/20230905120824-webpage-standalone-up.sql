create table if not exists webpage (
    id serial primary key,
    webpage varchar(255) not null,
    entity_meta_id int not null,
    constraint fk_webpage_entity_meta foreign key (entity_meta_id) references entity_meta(id)
);

-- entity_meta
insert into entity_meta 
    (id, display_name, description, table_name, standalone, custom)
values 
    (7, 'Webpage', '', 'webpage', true, false);

-- column_meta
insert into column_meta 
    (display_name, description, example, column_name, data_type, entity_meta_id)
values 
    ('Webpage', '', 'www.example.com', 'webpage', 'VARCHAR(255)', 7);

insert into webpage (webpage, entity_meta_id) values ('homepage', 7);
insert into webpage (webpage, entity_meta_id) values ('profilepage', 7);
insert into webpage (webpage, entity_meta_id) values ('dashboard', 7);
insert into webpage (webpage, entity_meta_id) values ('settingspage', 7);
insert into webpage (webpage, entity_meta_id) values ('adminpage', 7);
insert into webpage (webpage, entity_meta_id) values ('searchpage', 7);
insert into webpage (webpage, entity_meta_id) values ('productpage', 7);
insert into webpage (webpage, entity_meta_id) values ('cartpage', 7);
insert into webpage (webpage, entity_meta_id) values ('checkoutpage', 7);
insert into webpage (webpage, entity_meta_id) values ('orderhistorypage', 7);
insert into webpage (webpage, entity_meta_id) values ('blogpage', 7);
insert into webpage (webpage, entity_meta_id) values ('contactpage', 7);
insert into webpage (webpage, entity_meta_id) values ('aboutuspage', 7);
insert into webpage (webpage, entity_meta_id) values ('faqpage', 7);
insert into webpage (webpage, entity_meta_id) values ('termsofservicepage', 7);
insert into webpage (webpage, entity_meta_id) values ('privacypolicypage', 7);
insert into webpage (webpage, entity_meta_id) values ('login', 7);
insert into webpage (webpage, entity_meta_id) values ('register', 7);
insert into webpage (webpage, entity_meta_id) values ('forgotpassword', 7);
insert into webpage (webpage, entity_meta_id) values ('resetpassword', 7);
insert into webpage (webpage, entity_meta_id) values ('usersettings', 7);
insert into webpage (webpage, entity_meta_id) values ('notifications', 7);
insert into webpage (webpage, entity_meta_id) values ('messageinbox', 7);
insert into webpage (webpage, entity_meta_id) values ('friendlist', 7);
insert into webpage (webpage, entity_meta_id) values ('eventcalendar', 7);
insert into webpage (webpage, entity_meta_id) values ('projectmanagement', 7);
insert into webpage (webpage, entity_meta_id) values ('employeedirectory', 7);
insert into webpage (webpage, entity_meta_id) values ('performancedashboard', 7);
insert into webpage (webpage, entity_meta_id) values ('salesreports', 7);
insert into webpage (webpage, entity_meta_id) values ('productcatalog', 7);
insert into webpage (webpage, entity_meta_id) values ('customersupport', 7);
insert into webpage (webpage, entity_meta_id) values ('feedbackform', 7);
insert into webpage (webpage, entity_meta_id) values ('knowledgebase', 7);
insert into webpage (webpage, entity_meta_id) values ('resourcelibrary', 7);
insert into webpage (webpage, entity_meta_id) values ('joblistings', 7);
insert into webpage (webpage, entity_meta_id) values ('resumebuilder', 7);
insert into webpage (webpage, entity_meta_id) values ('jobapplications', 7);
insert into webpage (webpage, entity_meta_id) values ('appointmentscheduler', 7);
insert into webpage (webpage, entity_meta_id) values ('bookingsystem', 7);
insert into webpage (webpage, entity_meta_id) values ('surveyform', 7);
insert into webpage (webpage, entity_meta_id) values ('quizpage', 7);
insert into webpage (webpage, entity_meta_id) values ('testimonials', 7);
insert into webpage (webpage, entity_meta_id) values ('gallery', 7);
insert into webpage (webpage, entity_meta_id) values ('weatherforecast', 7);
insert into webpage (webpage, entity_meta_id) values ('travelplanner', 7);
