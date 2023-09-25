create table
  if not exists class (
    id serial primary key,
    subject_name varchar(255) not null,
    field varchar(255) not null,
    subject_code varchar(10) unique not null,
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
  ('Class', '', 'class', false, false);

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
    'Subject Name',
    'Name of the subject',
    'Mathematics',
    'subject_name',
    'varchar(255)',
    'entityVarchar',
    'class'
  ),
  (
    'Subject Field of Study',
    'Field of Study associated with the subject',
    'Science',
    'field',
    'varchar(255)',
    'entityVarchar',
    'class'
  ),
  (
    'Subject Code',
    'Unique code for the subject',
    'MATH101',
    'subject_code',
    'varchar(10)',
    'entityVarchar',
    'class'
  );

insert into
  class (
    subject_name,
    field,
    subject_code,
    entity_meta_table
  )
values
  ('Mathematics Theory', 'Mathematics', 'MATH123', 'class'),
  ('Organic Chemistry', 'Chemistry', 'CHEM789', 'class'),
  (
    'Introduction to Quantum Physics',
    'Physics',
    'PHYS321',
    'class'
  ),
  (
    'Environmental Conservation',
    'Environmental Science',
    'ENVI020',
    'class'
  ),
  ('Ancient History', 'History', 'HIST654', 'class'),
  ('Urban Geography', 'Geography', 'GEOG987', 'class'),
  ('Classical Music', 'Music', 'MUSI782', 'class'),
  ('Modern Art', 'Art', 'ARTI489', 'class'),
  ('Cosmic Astronomy', 'Astronomy', 'ASTR245', 'class'),
  (
    'Global Political Science',
    'Political Science',
    'POLI678',
    'class'
  ),
  ('Clinical Psychology', 'Psychology', 'PSYC901', 'class'),
  ('Urban Sociology', 'Sociology', 'SOCI345', 'class'),
  ('Christian Theology', 'Religion', 'THEO678', 'class'),
  ('Surgeric Medicine', 'Medicine', 'MEDI234', 'class'),
  (
    'Architecture Design',
    'Architecture',
    'ARCH001',
    'class'
  ),
  ('Contemporary Dance', 'Dance', 'DANC002', 'class'),
  ('Criminal Law', 'Law', 'LAWY003', 'class'),
  ('Finance for Corporate', 'Finance', 'FINA004', 'class'),
  (
    'Journalism & Broadcast',
    'Journalism',
    'JOUR006',
    'class'
  ),
  ('Bread Baking', 'Culinary', 'CULI007', 'class'),
  ('Pharmacy Clinical', 'Medicine', 'PHAR008', 'class'),
  ('Forestry Conservation', 'Forestry', 'FORE009', 'class'),
  ('Veterinary Medicine', 'Medicine', 'VETE010', 'class'),
  (
    'Anthropology Cultural',
    'Anthropology',
    'ANTH011',
    'class'
  ),
  ('Geology Structural', 'Geology', 'GEOL012', 'class'),
  (
    'Linguistics Syntax',
    'Linguistics ',
    'LING013',
    'class'
  ),
  (
    'Telecommunications & Radio',
    'Telecommunications',
    'TELE015',
    'class'
  ),
  ('Agriculture Crop', 'Agriculture', 'AGRI016', 'class'),
  (
    'Criminology Forensic',
    'Criminology',
    'CRIM017',
    'class'
  ),
  ('Mammals', 'Zoology', 'ZOOL036', 'class'),
  ('Botany Plants', 'Botany', 'BOTA037', 'class'),
  ('Mycology Fungi', 'Mycology', 'MYCO038', 'class'),
  ('Entomology Insects', 'Entomology', 'ENTO039', 'class'),
  (
    'Gemology Precious Stones',
    'Gemology',
    'GEMO41',
    'class'
  ),
  ('Virology Epidemics', 'Virology', 'VIRO42', 'class'),
  ('Orchid Biodiversity', 'Biology', 'ORCH54', 'class'),
  (
    'Child Psychopathology',
    'Psychology',
    'CHPS55',
    'class'
  ),
  ('Fusion Energy Systems', 'Physics', 'FUSE56', 'class'),
  ('Modern Jazz Techniques', 'Music', 'MJAZ57', 'class'),
  ('Wildlife Conservation', 'Ecology', 'WILD58', 'class'),
  (
    'Embedded System Design',
    'Electrical Engineering',
    'EE159',
    'class'
  ),
  ('Financial Risk Analysis', 'Finance', 'FRAN60', 'class'),
  ('Ancient Greek Culture', 'History', 'GREE61', 'class'),
  (
    'Medieval European History',
    'History',
    'MED62',
    'class'
  ),
  (
    'Advanced Robotics Design',
    'Engineering',
    'ROBO63',
    'class'
  ),
  ('Modern Dance Techniques', 'Dance', 'MDAN64', 'class'),
  (
    'Digital Marketing Insights',
    'Marketing',
    'DMKT65',
    'class'
  ),
  (
    'Molecular Genetics Study',
    'Biology',
    'MGEN66',
    'class'
  ),
  (
    'Urban Planning Basics',
    'Architecture',
    'URBN67',
    'class'
  ),
  ('Sculpting Techniques', 'Art', 'SCUL68', 'class'),
  (
    'Asian Philosophy Overview',
    'Philosophy',
    'ASPH69',
    'class'
  ),
  (
    'Cosmetic Surgery Trends',
    'Medicine',
    'COSM70',
    'class'
  ),
  ('Comparative Religions', 'Theology', 'RELI71', 'class'),
  (
    'Quantum Computing Intro',
    'Computer Sci.',
    'QUAN72',
    'class'
  ),
  ('Classical Music Analysis', 'Music', 'CLMU73', 'class'),
  (
    'Shakespearean Literature',
    'Literature',
    'SHAK74',
    'class'
  ),
  ('Wildlife Photography Art', 'Media', 'WILD75', 'class'),
  (
    'Sustainable Architecture',
    'Architecture',
    'SARC76',
    'class'
  ),
  ('Vocal Training Methods', 'Music', 'VOCM77', 'class'),
  (
    'Particle Physics Deep Dive',
    'Physics',
    'PART78',
    'class'
  ),
  (
    'Postmodernist Thoughts',
    'Philosophy',
    'POMO79',
    'class'
  ),
  ('3D Animation Techniques', 'Design', '3DAT80', 'class'),
  (
    'World Culinary Traditions',
    'Culinary',
    'CULN81',
    'class'
  ),
  (
    'Advanced Biological Studies in Marine Ecosystems',
    'Biology',
    'BIO-101',
    'class'
  ),
  (
    'Extended Research in Quantum Mechanics Theory',
    'Physics',
    'PHY-102',
    'class'
  ),
  (
    'Detailed Analysis of World History: The Renaissance',
    'History',
    'HIS-103',
    'class'
  ),
  (
    'Exploring Advanced Topics in Organic Chemistry',
    'Chemistry',
    'CHE-104',
    'class'
  ),
  (
    'Advanced Study on Programming Paradigms and Algorithms',
    'Computer Science',
    'CS-105',
    'class'
  ),
  (
    'In-depth Studies in European Literature',
    'Literature',
    'LIT-106',
    'class'
  ),
  (
    'Advanced Analytical Methods in Geometric Algebra',
    'Mathematics',
    'MAT-107',
    'class'
  ),
  (
    'Special Topics in Early American History',
    'History',
    'HIS-108',
    'class'
  ),
  (
    'Modern Techniques in Particle Physics',
    'Physics',
    'PHY-109',
    'class'
  ),
  (
    'Research Topics in Marine Biology',
    'Biology',
    'BIO-110',
    'class'
  ),
  (
    'Contemporary Issues in Computational Logic',
    'Computer Science',
    'CS-111',
    'class'
  ),
  (
    'Seminar on Modern Algebra and Its Applications',
    'Mathematics',
    'MAT-112',
    'class'
  ),
  (
    'Seminar on European Art History',
    'Art',
    'ART-113',
    'class'
  ),
  (
    'Explorations in Molecular Biology and Genetics',
    'Biology',
    'BIO-114',
    'class'
  ),
  (
    'Special Lecture Series on Quantum Mechanics',
    'Physics',
    'PHY-115',
    'class'
  ),
  (
    'Comparative Literature: Renaissance Europe',
    'Literature',
    'LIT-116',
    'class'
  ),
  (
    'Mathematical Structures in Topology',
    'Mathematics',
    'MAT-117',
    'class'
  ),
  (
    'Asian Dynasties: A Historical Overview',
    'History',
    'HIS-118',
    'class'
  ),
  (
    'Quantum Field Theory and Applications',
    'Physics',
    'PHY-119',
    'class'
  ),
  (
    'Principles of Evolutionary Biology',
    'Biology',
    'BIO-120',
    'class'
  ),
  (
    'Machine Learning and Neural Networks',
    'Computer Science',
    'CS-121',
    'class'
  ),
  (
    'Algebraic Structures and Applications',
    'Mathematics',
    'MAT-122',
    'class'
  ),
  ('Baroque Art in Europe', 'Art', 'ART-123', 'class'),
  (
    'Cellular Biology and Functions',
    'Biology',
    'BIO-124',
    'class'
  ),
  (
    'General Relativity and Cosmology',
    'Physics',
    'PHY-125',
    'class'
  ),
  (
    'Medieval Europe: Cultures and Kingdoms',
    'Literature',
    'LIT-126',
    'class'
  ),
  (
    'Differential Equations and Solutions',
    'Mathematics',
    'MAT-127',
    'class'
  ),
  (
    'The Industrial Revolution: Causes and Effects',
    'History',
    'HIS-128',
    'class'
  ),
  (
    'Optics and Light Phenomena',
    'Physics',
    'PHY-129',
    'class'
  ),
  (
    'Genetics and Heredity Principles',
    'Biology',
    'BIO-130',
    'class'
  ),
  (
    'Databases and Information Retrieval',
    'Computer Science',
    'CS-131',
    'class'
  ),
  (
    'Geometry in Modern Mathematics',
    'Mathematics',
    'MAT-132',
    'class'
  ),
  (
    'Renaissance Art and Its Impact',
    'Art',
    'ART-133',
    'class'
  ),
  (
    'Molecular Structures and Bonding',
    'Biology',
    'BIO-134',
    'class'
  ),
  (
    'Thermodynamics and Heat Transfer',
    'Physics',
    'PHY-135',
    'class'
  ),
  (
    'Classic Novels of 19th Century Europe',
    'Literature',
    'LIT-136',
    'class'
  ),
  (
    'Advanced Number Theory',
    'Mathematics',
    'MAT-137',
    'class'
  ),
  (
    'World War I: Causes and Effects',
    'History',
    'HIS-138',
    'class'
  ),
  (
    'Electromagnetism in Modern Physics',
    'Physics',
    'PHY-139',
    'class'
  ),
  (
    'Cell Metabolism and Energy Processes',
    'Biology',
    'BIO-140',
    'class'
  ),
  (
    'Data Structures and Algorithms',
    'Computer Science',
    'CS-141',
    'class'
  ),
  (
    'Advanced Calculus and Analysis',
    'Mathematics',
    'MAT-142',
    'class'
  ),
  (
    'Modern Art Movements: 1900-Present',
    'Art',
    'ART-143',
    'class'
  ),
  (
    'Human Physiology and Organ Systems',
    'Biology',
    'BIO-144',
    'class'
  ),
  (
    'Nuclear Physics and Its Applications',
    'Physics',
    'PHY-145',
    'class'
  ),
  (
    'Ancient Greek Literature and Drama',
    'Literature',
    'LIT-146',
    'class'
  ),
  (
    'Mathematical Logic and Set Theory',
    'Mathematics',
    'MAT-147',
    'class'
  ),
  (
    'The French Revolution: Timeline and Impact',
    'History',
    'HIS-148',
    'class'
  ),
  (
    'Particle Physics and the Standard Model',
    'Physics',
    'PHY-149',
    'class'
  ),
  (
    'Plant Biology and Photosynthesis',
    'Biology',
    'BIO-150',
    'class'
  ),
  (
    'Operating Systems and Kernel Design',
    'Computer Science',
    'CS-151',
    'class'
  ),
  (
    'Linear Algebra and Vector Spaces',
    'Mathematics',
    'MAT-152',
    'class'
  ),
  (
    'Impressionism: Art and Society',
    'Art',
    'ART-153',
    'class'
  ),
  (
    'Ecology, Ecosystems, and Conservation',
    'Biology',
    'BIO-154',
    'class'
  ),
  (
    'Astrophysics and Celestial Bodies',
    'Physics',
    'PHY-155',
    'class'
  ),
  (
    'Medieval European Architecture',
    'Art History',
    'ART-156',
    'class'
  ),
  (
    'Object-Oriented Programming',
    'Computer Science',
    'CS-157',
    'class'
  ),
  (
    'Differential Equations in Physics',
    'Mathematics',
    'MAT-158',
    'class'
  ),
  ('Molecular Genetics', 'Biology', 'BIO-159', 'class'),
  (
    'The Renaissance in Italy',
    'History',
    'HIS-160',
    'class'
  ),
  (
    'Literary Techniques in Modernism',
    'Literature',
    'LIT-161',
    'class'
  ),
  (
    'Artificial Intelligence Foundations',
    'Computer Science',
    'CS-162',
    'class'
  ),
  (
    'Environmental Chemistry',
    'Chemistry',
    'CHE-163',
    'class'
  ),
  (
    'Roman History and Culture',
    'History',
    'HIS-164',
    'class'
  ),
  (
    'Classical Mechanics in Physics',
    'Physics',
    'PHY-165',
    'class'
  ),
  (
    'Database Management Systems',
    'Computer Science',
    'CS-166',
    'class'
  ),
  (
    'Poetry in the Romantic Era',
    'Literature',
    'LIT-167',
    'class'
  ),
  (
    'Thermodynamics and Heat Transfer',
    'Physics',
    'PHY-168',
    'class'
  ),
  (
    'Quantum Mechanics Foundations',
    'Physics',
    'PHY-169',
    'class'
  ),
  (
    'Digital Design and Architecture',
    'Computer Science',
    'CS-170',
    'class'
  ),
  (
    'Medieval Literature Analysis',
    'Literature',
    'LIT-171',
    'class'
  ),
  (
    'Baroque and Rococo Art Styles',
    'Art History',
    'ART-172',
    'class'
  ),
  (
    'Applied Mathematics in Engineering',
    'Mathematics',
    'MAT-173',
    'class'
  ),
  (
    'Neural Networks and Deep Learning',
    'Computer Science',
    'CS-174',
    'class'
  ),
  (
    'European Colonization Histories',
    'History',
    'HIS-175',
    'class'
  ),
  (
    'Immunology and Disease Mechanisms',
    'Biology',
    'BIO-176',
    'class'
  ),
  (
    'Software Engineering Practices',
    'Computer Science',
    'CS-177',
    'class'
  ),
  (
    'Victorian Literature Overview',
    'Literature',
    'LIT-178',
    'class'
  ),
  (
    'Evolutionary Biology Theories',
    'Biology',
    'BIO-179',
    'class'
  ),
  (
    'Abstract Algebra Concepts',
    'Mathematics',
    'MAT-180',
    'class'
  ),
  (
    'Network and Cybersecurity',
    'Computer Science',
    'CS-181',
    'class'
  ),
  (
    'Contemporary Art Movements',
    'Art History',
    'ART-182',
    'class'
  ),
  (
    'Chemical Reaction Mechanisms',
    'Chemistry',
    'CHE-183',
    'class'
  ),
  (
    'The Modern Novel and its Themes',
    'Literature',
    'LIT-184',
    'class'
  ),
  (
    'Relativity in Modern Physics',
    'Physics',
    'PHY-185',
    'class'
  ),
  (
    'Statistical Methods in Research',
    'Mathematics',
    'MAT-186',
    'class'
  ),
  (
    'Renaissance to Baroque Art Transition',
    'Art History',
    'ART-187',
    'class'
  ),
  (
    'Web Development and Design',
    'Computer Science',
    'CS-188',
    'class'
  ),
  ('The Cold War Era', 'History', 'HIS-189', 'class'),
  (
    'Spectroscopy in Analytical Chemistry',
    'Chemistry',
    'CHE-190',
    'class'
  ),
  (
    'Mobile App Development Foundations',
    'Computer Science',
    'CS-191',
    'class'
  ),
  (
    'Gothic Literature of the 18th Century',
    'Literature',
    'LIT-192',
    'class'
  ),
  (
    'Organic Synthesis Techniques',
    'Chemistry',
    'CHE-193',
    'class'
  ),
  (
    'Ancient Civilizations of Asia',
    'History',
    'HIS-194',
    'class'
  ),
  (
    'Data Analysis using Python',
    'Computer Science',
    'CS-195',
    'class'
  ),
  (
    'Plant Morphology and Taxonomy',
    'Biology',
    'BIO-196',
    'class'
  ),
  (
    'Wave Mechanics in Physics',
    'Physics',
    'PHY-197',
    'class'
  ),
  (
    'Post-modernism in Literature',
    'Literature',
    'LIT-198',
    'class'
  ),
  (
    'History of Middle Eastern Civilizations',
    'History',
    'HIS-199',
    'class'
  ),
  (
    'Robotics and Automation Systems',
    'Computer Science',
    'CS-200',
    'class'
  ),
  (
    'Fluid Dynamics and its Principles',
    'Physics',
    'PHY-201',
    'class'
  ),
  (
    'Analytical Geometry and its Uses',
    'Mathematics',
    'MAT-202',
    'class'
  ),
  (
    'Developmental Biology Concepts',
    'Biology',
    'BIO-203',
    'class'
  ),
  (
    'The Enlightenment Era in Europe',
    'History',
    'HIS-204',
    'class'
  ),
  (
    'Applied Cryptography',
    'Computer Science',
    'CS-205',
    'class'
  ),
  (
    'Performance Arts in 20th Century',
    'Art History',
    'ART-206',
    'class'
  ),
  (
    'Molecular Biology and Techniques',
    'Biology',
    'BIO-207',
    'class'
  ),
  (
    'Space-Time Concepts in Physics',
    'Physics',
    'PHY-208',
    'class'
  ),
  (
    'Medieval Histories of Africa',
    'History',
    'HIS-209',
    'class'
  ),
  (
    'Internet of Things (IoT) Foundations',
    'Computer Science',
    'CS-210',
    'class'
  ),
  (
    'Societal Impacts of the Industrial Revolution',
    'History',
    'HIS-211',
    'class'
  ),
  (
    'Bioinformatics and Data Analysis',
    'Biology',
    'BIO-212',
    'class'
  ),
  (
    'Advanced Game Development',
    'Computer Science',
    'CS-213',
    'class'
  ),
  (
    'Human Anatomy and Physiology',
    'Biology',
    'BIO-214',
    'class'
  ),
  (
    'Theatre and Drama in Ancient Greece',
    'Art History',
    'ART-215',
    'class'
  );