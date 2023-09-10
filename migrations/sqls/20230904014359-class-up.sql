create table if not exists class (
  id serial primary key,
  subject_name varchar(255) not null,
  field varchar(255) not null,
  subject_code varchar(10) unique not null,
	entity_meta_id int not null,
  constraint fk_class_entity_id foreign key (entity_meta_id) references entity_meta(id) on delete cascade
);

insert into entity_meta (id, display_name, description, table_name, standalone, custom) values (
  2,
  'Class',
  '',
  'class',
  false,
  false
);

insert into column_meta (display_name, description, example, column_name, data_type, gen_opts_name, entity_meta_id) values 
(
    'Subject Name', 
    'Name of the subject', 
    'Mathematics', 
    'subject_name', 
    'varchar.255',
    'entityVarchar', 
    2
),
(
    'Subject Field of Study', 
    'Field of Study associated with the subject', 
    'Science', 
    'field', 
    'varchar.255',
    'entityVarchar', 
    2
), 
(
    'Subject Code', 
    'Unique code for the subject', 
    'MATH101', 
    'subject_code', 
    'varchar.10', 
    'entityVarchar',
    2
);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Mathematics Theory', 'Mathematics', 'MATH123', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Organic Chemistry', 'Chemistry', 'CHEM789', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Introduction to Quantum Physics', 'Physics', 'PHYS321', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Environmental Conservation', 'Environmental Science', 'ENVI020', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Ancient History', 'History', 'HIST654', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Urban Geography', 'Geography', 'GEOG987', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Classical Music', 'Music', 'MUSI782', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Modern Art', 'Art', 'ARTI489', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Cosmic Astronomy', 'Astronomy', 'ASTR245', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Global Political Science', 'Political Science', 'POLI678', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Clinical Psychology', 'Psychology', 'PSYC901', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Urban Sociology', 'Sociology', 'SOCI345', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Christian Theology', 'Religion', 'THEO678', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Surgeric Medicine', 'Medicine', 'MEDI234', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Architecture Design', 'Architecture', 'ARCH001', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Contemporary Dance', 'Dance', 'DANC002', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Criminal Law', 'Law', 'LAWY003', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Finance for Corporate', 'Finance', 'FINA004', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Journalism & Broadcast', 'Journalism', 'JOUR006', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Bread Baking', 'Culinary', 'CULI007', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Pharmacy Clinical', 'Medicine', 'PHAR008', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Forestry Conservation', 'Forestry', 'FORE009', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Veterinary Medicine', 'Medicine', 'VETE010', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Anthropology Cultural', 'Anthropology', 'ANTH011', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Geology Structural', 'Geology', 'GEOL012', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Linguistics Syntax', 'Linguistics ', 'LING013', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Telecommunications & Radio', 'Telecommunications', 'TELE015', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Agriculture Crop', 'Agriculture', 'AGRI016', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Criminology Forensic', 'Criminology', 'CRIM017', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Mammals', 'Zoology', 'ZOOL036', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Botany Plants', 'Botany', 'BOTA037', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Mycology Fungi', 'Mycology', 'MYCO038', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Entomology Insects', 'Entomology', 'ENTO039', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Gemology Precious Stones', 'Gemology', 'GEMO41', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Virology Epidemics', 'Virology', 'VIRO42', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Orchid Biodiversity', 'Biology', 'ORCH54', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Child Psychopathology', 'Psychology', 'CHPS55', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Fusion Energy Systems', 'Physics', 'FUSE56', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Modern Jazz Techniques', 'Music', 'MJAZ57', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Wildlife Conservation', 'Ecology', 'WILD58', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Embedded System Design', 'Electrical Engineering', 'EE159', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Financial Risk Analysis', 'Finance', 'FRAN60', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Ancient Greek Culture', 'History', 'GREE61', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Medieval European History', 'History', 'MED62', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Advanced Robotics Design', 'Engineering', 'ROBO63', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Modern Dance Techniques', 'Dance', 'MDAN64', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Digital Marketing Insights', 'Marketing', 'DMKT65', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Molecular Genetics Study', 'Biology', 'MGEN66', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Urban Planning Basics', 'Architecture', 'URBN67', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Sculpting Techniques', 'Art', 'SCUL68', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Asian Philosophy Overview', 'Philosophy', 'ASPH69', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Cosmetic Surgery Trends', 'Medicine', 'COSM70', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Comparative Religions', 'Theology', 'RELI71', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Quantum Computing Intro', 'Computer Sci.', 'QUAN72', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Classical Music Analysis', 'Music', 'CLMU73', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Shakespearean Literature', 'Literature', 'SHAK74', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Wildlife Photography Art', 'Media', 'WILD75', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Sustainable Architecture', 'Architecture', 'SARC76', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Vocal Training Methods', 'Music', 'VOCM77', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Particle Physics Deep Dive', 'Physics', 'PART78', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Postmodernist Thoughts', 'Philosophy', 'POMO79', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('3D Animation Techniques', 'Design', '3DAT80', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('World Culinary Traditions', 'Culinary', 'CULN81', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Advanced Biological Studies in Marine Ecosystems', 'Biology', 'BIO-101', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Extended Research in Quantum Mechanics Theory', 'Physics', 'PHY-102', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Detailed Analysis of World History: The Renaissance', 'History', 'HIS-103', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Exploring Advanced Topics in Organic Chemistry', 'Chemistry', 'CHE-104', 2);

insert into class (subject_name, field, subject_code, entity_meta_id) 
values ('Advanced Study on Programming Paradigms and Algorithms', 'Computer Science', 'CS-105', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('In-depth Studies in European Literature', 'Literature', 'LIT-106', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Advanced Analytical Methods in Geometric Algebra', 'Mathematics', 'MAT-107', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Special Topics in Early American History', 'History', 'HIS-108', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Modern Techniques in Particle Physics', 'Physics', 'PHY-109', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Research Topics in Marine Biology', 'Biology', 'BIO-110', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Contemporary Issues in Computational Logic', 'Computer Science', 'CS-111', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Seminar on Modern Algebra and Its Applications', 'Mathematics', 'MAT-112', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Seminar on European Art History', 'Art', 'ART-113', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Explorations in Molecular Biology and Genetics', 'Biology', 'BIO-114', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Special Lecture Series on Quantum Mechanics', 'Physics', 'PHY-115', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Comparative Literature: Renaissance Europe', 'Literature', 'LIT-116', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Mathematical Structures in Topology', 'Mathematics', 'MAT-117', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Asian Dynasties: A Historical Overview', 'History', 'HIS-118', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Quantum Field Theory and Applications', 'Physics', 'PHY-119', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Principles of Evolutionary Biology', 'Biology', 'BIO-120', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Machine Learning and Neural Networks', 'Computer Science', 'CS-121', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Algebraic Structures and Applications', 'Mathematics', 'MAT-122', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Baroque Art in Europe', 'Art', 'ART-123', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Cellular Biology and Functions', 'Biology', 'BIO-124', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('General Relativity and Cosmology', 'Physics', 'PHY-125', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Medieval Europe: Cultures and Kingdoms', 'Literature', 'LIT-126', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Differential Equations and Solutions', 'Mathematics', 'MAT-127', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('The Industrial Revolution: Causes and Effects', 'History', 'HIS-128', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Optics and Light Phenomena', 'Physics', 'PHY-129', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Genetics and Heredity Principles', 'Biology', 'BIO-130', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Databases and Information Retrieval', 'Computer Science', 'CS-131', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Geometry in Modern Mathematics', 'Mathematics', 'MAT-132', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Renaissance Art and Its Impact', 'Art', 'ART-133', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Molecular Structures and Bonding', 'Biology', 'BIO-134', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Thermodynamics and Heat Transfer', 'Physics', 'PHY-135', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Classic Novels of 19th Century Europe', 'Literature', 'LIT-136', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Advanced Number Theory', 'Mathematics', 'MAT-137', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('World War I: Causes and Effects', 'History', 'HIS-138', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Electromagnetism in Modern Physics', 'Physics', 'PHY-139', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Cell Metabolism and Energy Processes', 'Biology', 'BIO-140', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Data Structures and Algorithms', 'Computer Science', 'CS-141', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Advanced Calculus and Analysis', 'Mathematics', 'MAT-142', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Modern Art Movements: 1900-Present', 'Art', 'ART-143', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Human Physiology and Organ Systems', 'Biology', 'BIO-144', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Nuclear Physics and Its Applications', 'Physics', 'PHY-145', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Ancient Greek Literature and Drama', 'Literature', 'LIT-146', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Mathematical Logic and Set Theory', 'Mathematics', 'MAT-147', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('The French Revolution: Timeline and Impact', 'History', 'HIS-148', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Particle Physics and the Standard Model', 'Physics', 'PHY-149', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Plant Biology and Photosynthesis', 'Biology', 'BIO-150', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Operating Systems and Kernel Design', 'Computer Science', 'CS-151', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Linear Algebra and Vector Spaces', 'Mathematics', 'MAT-152', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Impressionism: Art and Society', 'Art', 'ART-153', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Ecology, Ecosystems, and Conservation', 'Biology', 'BIO-154', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Astrophysics and Celestial Bodies', 'Physics', 'PHY-155', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Medieval European Architecture', 'Art History', 'ART-156', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Object-Oriented Programming', 'Computer Science', 'CS-157', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Differential Equations in Physics', 'Mathematics', 'MAT-158', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Molecular Genetics', 'Biology', 'BIO-159', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('The Renaissance in Italy', 'History', 'HIS-160', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Literary Techniques in Modernism', 'Literature', 'LIT-161', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Artificial Intelligence Foundations', 'Computer Science', 'CS-162', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Environmental Chemistry', 'Chemistry', 'CHE-163', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Roman History and Culture', 'History', 'HIS-164', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Classical Mechanics in Physics', 'Physics', 'PHY-165', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Database Management Systems', 'Computer Science', 'CS-166', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Poetry in the Romantic Era', 'Literature', 'LIT-167', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Thermodynamics and Heat Transfer', 'Physics', 'PHY-168', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Quantum Mechanics Foundations', 'Physics', 'PHY-169', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Digital Design and Architecture', 'Computer Science', 'CS-170', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Medieval Literature Analysis', 'Literature', 'LIT-171', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Baroque and Rococo Art Styles', 'Art History', 'ART-172', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Applied Mathematics in Engineering', 'Mathematics', 'MAT-173', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Neural Networks and Deep Learning', 'Computer Science', 'CS-174', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('European Colonization Histories', 'History', 'HIS-175', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Immunology and Disease Mechanisms', 'Biology', 'BIO-176', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Software Engineering Practices', 'Computer Science', 'CS-177', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Victorian Literature Overview', 'Literature', 'LIT-178', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Evolutionary Biology Theories', 'Biology', 'BIO-179', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Abstract Algebra Concepts', 'Mathematics', 'MAT-180', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Network and Cybersecurity', 'Computer Science', 'CS-181', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Contemporary Art Movements', 'Art History', 'ART-182', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Chemical Reaction Mechanisms', 'Chemistry', 'CHE-183', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('The Modern Novel and its Themes', 'Literature', 'LIT-184', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Relativity in Modern Physics', 'Physics', 'PHY-185', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Statistical Methods in Research', 'Mathematics', 'MAT-186', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Renaissance to Baroque Art Transition', 'Art History', 'ART-187', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Web Development and Design', 'Computer Science', 'CS-188', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('The Cold War Era', 'History', 'HIS-189', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Spectroscopy in Analytical Chemistry', 'Chemistry', 'CHE-190', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Mobile App Development Foundations', 'Computer Science', 'CS-191', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Gothic Literature of the 18th Century', 'Literature', 'LIT-192', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Organic Synthesis Techniques', 'Chemistry', 'CHE-193', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Ancient Civilizations of Asia', 'History', 'HIS-194', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Data Analysis using Python', 'Computer Science', 'CS-195', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Plant Morphology and Taxonomy', 'Biology', 'BIO-196', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Wave Mechanics in Physics', 'Physics', 'PHY-197', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Post-modernism in Literature', 'Literature', 'LIT-198', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('History of Middle Eastern Civilizations', 'History', 'HIS-199', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Robotics and Automation Systems', 'Computer Science', 'CS-200', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Fluid Dynamics and its Principles', 'Physics', 'PHY-201', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Analytical Geometry and its Uses', 'Mathematics', 'MAT-202', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Developmental Biology Concepts', 'Biology', 'BIO-203', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('The Enlightenment Era in Europe', 'History', 'HIS-204', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Applied Cryptography', 'Computer Science', 'CS-205', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Performance Arts in 20th Century', 'Art History', 'ART-206', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Molecular Biology and Techniques', 'Biology', 'BIO-207', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Space-Time Concepts in Physics', 'Physics', 'PHY-208', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Medieval Histories of Africa', 'History', 'HIS-209', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Internet of Things (IoT) Foundations', 'Computer Science', 'CS-210', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Societal Impacts of the Industrial Revolution', 'History', 'HIS-211', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Bioinformatics and Data Analysis', 'Biology', 'BIO-212', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Advanced Game Development', 'Computer Science', 'CS-213', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Human Anatomy and Physiology', 'Biology', 'BIO-214', 2);

insert into class (subject_name, field, subject_code, entity_meta_id)
values ('Theatre and Drama in Ancient Greece', 'Art History', 'ART-215', 2);









