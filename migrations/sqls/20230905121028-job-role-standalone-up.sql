create table
  if not exists job_role (
    id serial primary key,
    job_role varchar(255) not null,
    job_description varchar(255) not null,
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
  ('Job Role', '', 'job_role', false, false);

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
    'Job Role',
    '',
    'Software Engineer, Nurse, Dentist',
    'job_role',
    'varchar(255)',
    'entityVarchar',
    'job_role'
  ),
  (
    'Job Description',
    '',
    'Software Engineer, Nurse, Dentist',
    'job_description',
    'varchar(255)',
    'entityVarchar',
    'job_role'
  )
  ;

insert into
  job_role (job_role, job_description, entity_meta_table)
values
  ('Financial Analyst', 'Analyzes financial data to provide insights and recommendations for effective decision-making', 'job_role'),
('Customer Service Representative', 'Analyzes customer inquiries and provides effective solutions.', 'job_role'),
('Product Manager', 'Oversees product development and strategy for market success.', 'job_role'),
('Nurse', 'Provides healthcare and support to patients in medical settings.', 'job_role'),
('Teacher', 'Educates and guides students in various subjects and skills.', 'job_role'),
 ('Lawyer', 'Analyzes legal cases and provides counsel to clients.', 'job_role'),
('Mechanical Engineer', 'Designs and tests mechanical systems and products.', 'job_role'),
('IT Support Specialist', 'Offers technical assistance and support for IT issues.', 'job_role'),
('Pharmacist', 'Dispenses medications and provides medication-related guidance.', 'job_role'),
('Architect', 'Designs and plans architectural structures and spaces.', 'job_role'),
('Registered Nurse', 'Delivers healthcare services and patient care in medical facilities.', 'job_role'),
('Marketing Manager', 'Oversees marketing strategies and campaigns for businesses.', 'job_role'),
('Software Engineer', 'Develops software applications and solutions for various purposes.', 'job_role'),
('Financial Planner', 'Provides financial advice and planning services to clients.', 'job_role'),
('Human Resources Specialist', 'Manages HR functions and employee relations within organizations.', 'job_role'),
('Business Analyst', 'Analyzes business data and processes to drive decision-making.', 'job_role'),
('Dentist', 'Provides dental care and treatment to patients.', 'job_role'),
('Electrician', 'Installs, repairs, and maintains electrical systems and components.', 'job_role'),
('Retail Manager', 'Oversees retail operations and manages store teams.', 'job_role'),
('Web Developer', 'Creates and maintains websites and web applications.', 'job_role'),
('Registered Dietitian', 'Offers dietary guidance and plans for individuals and groups.', 'job_role'),
('Interior Designer', 'Designs interior spaces for aesthetic and functional purposes.', 'job_role'),
('Civil Engineer', 'Plans and designs civil infrastructure projects.', 'job_role'),
('Account Manager', 'Manages client accounts and maintains relationships.', 'job_role'),
('Social Worker', 'Provides social services and support to individuals and communities.', 'job_role'),
('Financial Controller', 'Oversees financial reporting and accounting activities.', 'job_role'),
('Laboratory Technician', 'Performs tests and experiments in laboratory settings.', 'job_role'),
('IT Manager', 'Manages IT infrastructure and technology operations.', 'job_role'),
('Pharmacy Technician', 'Assists pharmacists and manages pharmacy tasks.', 'job_role'),
('Software Architect', 'Designs software systems and creates architectural plans.', 'job_role'),
('Registered Nurse Practitioner', 'Offers advanced nursing care and medical services.', 'job_role'),
('Marketing Director', 'Leads marketing strategies and campaigns at a higher level.', 'job_role'),
('Mechanical Designer', 'Designs mechanical components and systems.', 'job_role'),
('Human Resources Assistant', 'Provides support in HR functions and administrative tasks.', 'job_role'),
('Business Development Manager', 'Leads business growth and development initiatives.', 'job_role'),
('Orthodontist', 'Specializes in orthodontic dental treatments and care.', 'job_role'),
('Electrical Engineer', 'Designs and develops electrical systems and equipment.', 'job_role'),
('Retail Sales Associate', 'Assists customers and supports retail sales efforts.', 'job_role'),
('UI/UX Designer', 'Creates user-friendly and visually appealing digital interfaces.', 'job_role'),
('Clinical Psychologist', 'Offers psychological assessments and counseling services.', 'job_role'),
('Financial Manager', 'Manages financial operations and strategic planning.', 'job_role'),
('Medical Assistant', 'Supports healthcare professionals in clinical and administrative tasks.', 'job_role'),
('Web Designer', 'Designs web layouts and visual elements for online platforms.', 'job_role'),
('Licensed Practical Nurse', 'Delivers basic nursing care and support to patients.', 'job_role'),
('Marketing Assistant', 'Provides assistance in marketing campaigns and activities.', 'job_role'),
('Software Tester', 'Evaluates and tests software applications for quality and functionality.', 'job_role'),
('Professor', 'Instructs and conducts research in academic subjects at the university level.', 'job_role'),
('Admissions Officer', 'Manages student admissions and enrollment processes at the university.', 'job_role'),
('Financial Aid Counselor', 'Assists students in securing financial aid and scholarships for their education.', 'job_role'),
('Academic Advisor', 'Provides guidance and support to students in choosing courses and planning their academic journey.', 'job_role'),
('University Librarian', 'Manages and curates the university librarys resources and services.', 'job_role'),
('Tutor', 'Provides individual or group academic support to students in specific subjects or courses at the university.', 'job_role'),
('Lecturer', 'Delivers lectures and instructional content in various academic disciplines at the university.', 'job_role'),
('Subject Coordinator', 'Manages and oversees the curriculum, assessments, and scheduling for specific academic subjects or courses at the university.', 'job_role'),
('Sales Representative', 'Promotes and sells products or services to customers, clients, or businesses.', 'job_role'),
('Sales Manager', 'Leads and oversees a sales team to achieve revenue and sales targets for the company.', 'job_role'),
('Account Executive', 'Builds and maintains client relationships and manages sales accounts for the company.', 'job_role'),
('Business Development Representative', 'Identifies and secures new business opportunities and partnerships for the company.', 'job_role'),
('Sales Associate', 'Assists customers in making purchasing decisions and provides product or service information.', 'job_role'),
('Surgeon', 'Performs surgical procedures to treat medical conditions and injuries.', 'job_role'),
('Radiologic Technologist', 'Operates medical imaging equipment to capture images for diagnosis and treatment.', 'job_role'),
('Phlebotomist', 'Collects blood samples for medical testing and transfusions.', 'job_role'),
('Automotive Mechanic', 'Repairs and maintains vehicles, diagnosing and fixing mechanical issues.', 'job_role');