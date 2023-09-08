/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* Applications (App) database						*/
/* Created by Janusz R. Getta,28 December 2017                          */
/* 	      	     	       	 	       	    	     	 	*/
/* dbload.sql script for laboratories and assignments in CSIT115,	*/
/* Autumn 2018	       	   		    		   		*/
/*									*/
/* To create a sample database run a script dbcreate.sql		*/
/* To drop all tables run a script dbdrop.sql				*/
/*									*/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 
/* Lookup table                                                         */
/*									*/
INSERT INTO SKILL VALUES ( 'thinking' );
INSERT INTO SKILL VALUES ( 'reading' );
INSERT INTO SKILL VALUES ( 'writing' );
INSERT INTO SKILL VALUES ( 'CORBA programming' );
INSERT INTO SKILL VALUES ( 'C++ programming' );
INSERT INTO SKILL VALUES ( 'C programming' );
INSERT INTO SKILL VALUES ( 'Java programming' );
INSERT INTO SKILL VALUES ( 'PHP programming' );
INSERT INTO SKILL VALUES ( 'SQL programming' );
INSERT INTO SKILL VALUES ( 'database design' );
INSERT INTO SKILL VALUES ( 'Web design' );
INSERT INTO SKILL VALUES ( 'database administration' );
INSERT INTO SKILL VALUES ( 'network administration' );
INSERT INTO SKILL VALUES ( 'driving' );
INSERT INTO SKILL VALUES ( 'teaching' );
INSERT INTO SKILL VALUES ( 'accounting' );
INSERT INTO SKILL VALUES ( 'bricklaying' );
INSERT INTO SKILL VALUES ( 'concreting' );
INSERT INTO SKILL VALUES ( 'drawing' );
INSERT INTO SKILL VALUES ( 'painting' );
INSERT INTO SKILL VALUES ( 'cooking' );
INSERT INTO SKILL VALUES ( 'swimming' );
INSERT INTO SKILL VALUES ( 'playing piano' );
INSERT INTO SKILL VALUES ( 'playing guitar' );
INSERT INTO SKILL VALUES ( 'singing' );
INSERT INTO SKILL VALUES ( 'dancing' );
INSERT INTO SKILL VALUES ( 'skiing' );
INSERT INTO SKILL VALUES ( 'snowboarding' );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 

INSERT INTO SREQUIRED VALUES ( 'CORBA programming', 'C++ programming', 5);
INSERT INTO SREQUIRED VALUES ( 'C++ programming', 'C programming', 5);
INSERT INTO SREQUIRED VALUES ( 'Java programming', 'C programming', 5);
INSERT INTO SREQUIRED VALUES ( 'PHP programming', 'C programming', 5);
INSERT INTO SREQUIRED VALUES ( 'C programming', 'reading', 10);
INSERT INTO SREQUIRED VALUES ( 'C programming', 'writing', 10);
INSERT INTO SREQUIRED VALUES ( 'C programming', 'thinking', 10);
INSERT INTO SREQUIRED VALUES ( 'database administration', 'SQL programming', 8 );
INSERT INTO SREQUIRED VALUES ( 'network administration', 'reading', 10);
INSERT INTO SREQUIRED VALUES ( 'network administration', 'writing', 10);
INSERT INTO SREQUIRED VALUES ( 'accounting', 'reading', 10);
INSERT INTO SREQUIRED VALUES ( 'accounting', 'writing', 10);
INSERT INTO SREQUIRED VALUES ( 'SQL programming', 'reading', 5 );
INSERT INTO SREQUIRED VALUES ( 'SQL programming', 'writing', 5 );
INSERT INTO SREQUIRED VALUES ( 'SQL programming', 'thinking', 10 );
INSERT INTO SREQUIRED VALUES ( 'database design', 'thinking', 10 );
INSERT INTO SREQUIRED VALUES ( 'database design', 'reading', 6 );
INSERT INTO SREQUIRED VALUES ( 'database design', 'writing', 9 );
INSERT INTO SREQUIRED VALUES ( 'teaching', 'writing', 10 );
INSERT INTO SREQUIRED VALUES ( 'teaching', 'reading', 9 );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 
/* Relational tables implementing classes of objects			*/
/*									*/
INSERT INTO APPLICANT VALUES ( 000001, 'Harry', 'Potter', '1980-12-12',  'Perth', 'Western Australia', 645278453, NULL, 'jones@gmail.com' );
INSERT INTO APPLICANT VALUES ( 000002, 'Johnny', 'Walker', '1990-02-13',  'Geelong', 'Victoria', 63569784, 63569785, 'blunder@hotmail.com' );
INSERT INTO APPLICANT VALUES ( 000003, 'Mary', 'Poppins', '1950-01-01',  'Melbourne', 'Victoria', 62389541, NULL, NULL );
INSERT INTO APPLICANT VALUES ( 000004, 'Michael', 'Collins', '1960-05-25',  'Brisbane', 'Queensland', 63336666, NULL, 'mike@hotmail.com');
INSERT INTO APPLICANT VALUES ( 000005, 'Margaret', 'Finch', '1953-12-07',  'Sydney','New South Wales', 64573489, NULL, 'mf@163.com');
INSERT INTO APPLICANT VALUES ( 000006, 'Claudia', 'Kowalewski', '1959-05-03',  'Hobart', 'Tasmania', 64577744, NULL, 'cch@cs.odmg.org');
INSERT INTO APPLICANT VALUES ( 000007, 'James', 'Bond', '1960-06-01','Perth', 'Western Australia', 645278434, NULL, 'james@bigpond.com');
INSERT INTO APPLICANT VALUES ( 000008, 'Stephen', 'Staunton', '1977-10-23',  'Freemantle', 'Western Australia', 623778453, NULL, 'stephen@gmail.com');
INSERT INTO APPLICANT VALUES ( 000009, 'Joseph', 'Staunton', '1977-10-23',  'Newcastle', 'New South Wales', 623778453, NULL, 'joseph@gmail.com' );
INSERT INTO APPLICANT VALUES ( 0000010, 'John', 'Spiderman', '1990-06-21',  'Sydney', 'New South Wales', 24256789, 12345679, 'spider@yahoo.com');
INSERT INTO APPLICANT VALUES ( 0000011, 'George', 'Thefirst', '1991-10-12',  'Melbourne', 'Victoria', 2345987, NULL, 'g1st@hotmail.com');
INSERT INTO APPLICANT VALUES ( 0000012, 'Homer', 'Simpson', '1957-05-24',  'Adelaide', 'South Australia', 6134569876, NULL, 'homer@gmail.com');
INSERT INTO APPLICANT VALUES ( 0000013, 'Neil', 'Superman', '1960-07-20',  'Perth', 'Western Australia', 4567892345, 61343568, 'superneil@gmail.com');
INSERT INTO APPLICANT VALUES ( 0000014, 'Ivan', 'Theterrible', '1969-05-11',  'Brisbane', 'Queensland', 1234567898, NULL, 'ivan@yahoo.com');
INSERT INTO APPLICANT VALUES ( 0000015, 'Penelope', 'Princess', '1977-10-23',  'Hobart', 'Tasmania', 4007678911, NULL, 'pprincess@163.com');
INSERT INTO APPLICANT VALUES ( 0000016, 'Zhi Chao', 'Zhong', '1971-06-21',  'Horsley', 'New South Wales', 8615016189, NULL, 'suezhong@163.com');
INSERT INTO APPLICANT VALUES ( 0000017, 'Richard', 'Thelionheart', '1981-06-02',  'Waga Waga', 'New South Wales', 6134234567, NULL, 'rlion@hotmail.com');
INSERT INTO APPLICANT VALUES ( 0000018, 'Sherlock', 'Holmes', '1935-06-23',  'Bundaberg', 'Queensland', 4667667701, NULL, 'holmes@162.com');
INSERT INTO APPLICANT VALUES ( 0000019, 'Robin', 'Hood', '1951-08-21',  'Horsley', 'New South Wales', 86150329, NULL, 'robinhood@163.com');
INSERT INTO APPLICANT VALUES ( 0000020, 'Janusz', 'Getta', '1953-10-03',  'Horsley', 'New South Wales', 12345678, 12345679, 'jrg@uow.edu.au');
INSERT INTO APPLICANT VALUES ( 0000021, 'Sara', 'Wu', '1983-06-23',  'Zhongshan', 'Guangdong', 746934788, 12345679, 'sara@163.com');
INSERT INTO APPLICANT VALUES ( 0000022, 'Private', 'Ryan', '1985-06-02',  'Dapto', 'New South Wales', 74735653, 12345679, 'ryan@hotmail.com');
INSERT INTO APPLICANT VALUES ( 0000023, 'Susan', 'Han', '1976-05-01',  'Xiaolan', 'Siquan', 89830356, 12345679, 'susan@126.com');
INSERT INTO APPLICANT VALUES ( 0000032, 'Alexander', 'Thegreat', '1977-10-12',  'Hobart', 'Tasmania', 74693478, 12345679, 'agreat@xyz.com');
INSERT INTO APPLICANT VALUES ( 0000033, 'Julius', 'Caesar', '1971-05-10',  'Perth', 'Western Australia', 22316811, 12345679, 'ceasar@qq.com');
INSERT INTO APPLICANT VALUES ( 0000026, 'Marcus', 'Brutus', '1972-10-10',  'Adelaide', 'South Australia', 22316813, 12345679, 'marcus@qq.com');
INSERT INTO APPLICANT VALUES ( 0000027, 'Louis', 'Fourteenth', '1980-10-15',  'Sydney', 'New South Wales', 22316865, 12345679, 'lois14@126.com');
INSERT INTO APPLICANT VALUES ( 0000028, 'Louis', 'Fifteenth', '1986-05-06',  'Brisbane', 'Queensland', 07556060, 12345679, 'lois15@go-trans.com');
INSERT INTO APPLICANT VALUES ( 0000030, 'Henry', 'Eight', '1989-05-09',  'Gold Coast', 'Queensland', 07558821, 12345679, 'h8@go-trans.com');
INSERT INTO APPLICANT VALUES ( 0000031, 'Luke', 'Skywalker', '1976-11-03',  'Sydney', 'New South Wales', 07367742, 12345679, 'Luke@qq.com');

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 

INSERT INTO EMPLOYER VALUES ( 'University of Sydney', 'Sydney', 'New South Wales', 612345678, NULL, 'admin@uos.edu', 'www.uos.edu.au');
INSERT INTO EMPLOYER VALUES ( 'University of Western Sydney', 'Western Sydney', 'New South Wales', 612345678, NULL, 'muws@uws.edu.au', 'www.uws.edu.au');
INSERT INTO EMPLOYER VALUES ( 'University of Wollongong', 'Wollongong', 'New South Wales', 6124243689, 6124234569, 'admin@uow.edu.au', 'www.uow.edu.au');
INSERT INTO EMPLOYER VALUES ( 'University of New South Wales', 'Sydney', 'New South Wales', 6129874574, 6123454445, 'adm@unsw.edu.au', 'www.unsw.edu.au');
INSERT INTO EMPLOYER VALUES ( 'University of Technology, Sydney', 'Sydney', 'New South Wales', 6125646872, NULL, 'postmaster@uts.edu.au', 'www.uts.edu.au');
INSERT INTO EMPLOYER VALUES ( 'Macquarie University', 'Sydney', 'New South Wales', 6125646346, NULL, 'main@mcq.edu.au', 'www.mcq.edu.au');
INSERT INTO EMPLOYER VALUES ( 'Monash University', 'Melbourne', 'Victoria', 6134567932, NULL, 'admin@monash.edu.au', 'www.monash.edu.au');
INSERT INTO EMPLOYER VALUES ( 'La Trobe University', 'Melbourne', 'Victoria', 6136677899, NULL, NULL, 'www.latrobe.edu.au');
INSERT INTO EMPLOYER VALUES ( 'University of Melbourne', 'Melbourne', 'Victoria', 6131234567, 6132345678, 'admin@uom.edu.au', 'www.uom.edu.au');
INSERT INTO EMPLOYER VALUES ( 'RMIT', 'Melbourne', 'Victoria', 6135050607, NULL, NULL, 'www.rmit.edu.au');
INSERT INTO EMPLOYER VALUES ( 'University of Queensland', 'Brisbane', 'Queeensland', 615333445, 6154465678, 'admin@uq.edu.au', 'www.uq.edu.au');
INSERT INTO EMPLOYER VALUES ( 'University of Adelaide', 'Adelaide', 'South Australia', 6172222567, 6172341278, 'main@uoa.edu.au', 'www.uoa.edu.au');
INSERT INTO EMPLOYER VALUES ( 'Murdoch University', 'Perth', 'Western Australia', 6182234588, NULL, 'admin@murdoch.edu.au', 'www.murdoch.edu.au');
INSERT INTO EMPLOYER VALUES ( 'Curtin University', 'Perth', 'Western Australia', 6182222567, NULL, 'main@curtin.edu.au', 'www.uoa.edu.au');
INSERT INTO EMPLOYER VALUES ( 'University of Western Australia','Perth', 'Western Australia', 6189876543, 6133341278, 'main@uowa.edu.au', 'www.uowa.edu.au');

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 

INSERT INTO EMPLBY VALUES ( 000001, 'University of Sydney', '2000-02-01', '05-JUN-2008' );
INSERT INTO EMPLBY VALUES ( 000001, 'Curtin University', '2000-02-01',  NULL );
INSERT INTO EMPLBY VALUES ( 000002, 'University of Western Sydney', '2009-02-20',  NULL );
INSERT INTO EMPLBY VALUES ( 000003, 'University of Wollongong', '1977-01-01',  '1980-12-31' );
INSERT INTO EMPLBY VALUES ( 000003, 'University of New South Wales', '1981-01-01',  '1990-12-31' );
INSERT INTO EMPLBY VALUES ( 000003, 'Monash University', '1991-01-01',  '1999-08-31' );
INSERT INTO EMPLBY VALUES ( 000003, 'RMIT', '2000-06-31',  NULL ); 
INSERT INTO EMPLBY VALUES ( 000004, 'University of New South Wales', '1985-05-01',  '2005-04-22' );
INSERT INTO EMPLBY VALUES ( 000004, 'La Trobe University', '2005-05-01',  NULL );
INSERT INTO EMPLBY VALUES ( 000005, 'University of Technology, Sydney', '1977-12-01',  '1980-06-01' );
INSERT INTO EMPLBY VALUES ( 000005, 'University of Adelaide', '1980-07-01',  '1990-12-31' );
INSERT INTO EMPLBY VALUES ( 000005, 'University of Queensland', '1991-01-01',  '1996-03-30' );
INSERT INTO EMPLBY VALUES ( 000005, 'RMIT', '1996-12-01',  '2005-06-01' );
INSERT INTO EMPLBY VALUES ( 000005, 'University of Queensland', '2005-12-01',  NULL );
INSERT INTO EMPLBY VALUES ( 000006, 'University of Technology, Sydney', '1979-12-01',  '1985-06-01' );
INSERT INTO EMPLBY VALUES ( 000006, 'University of Adelaide', '1986-04-01',  '1987-06-01' );
INSERT INTO EMPLBY VALUES ( 000006, 'University of Queensland', '1987-12-01',  '2001-06-07' );
INSERT INTO EMPLBY VALUES ( 000006, 'RMIT', '2001-12-31',  '2010-06-01' );
INSERT INTO EMPLBY VALUES ( 000006, 'University of Queensland', '2010-07-01',  NULL );
INSERT INTO EMPLBY VALUES ( 000007, 'Macquarie University', '1980-01-01', '2000-01-31' );
INSERT INTO EMPLBY VALUES ( 000007, 'Monash University', '2001-05-03',  NULL );
INSERT INTO EMPLBY VALUES ( 000008, 'La Trobe University', '1990-10-01',  '1995-05-30' );
INSERT INTO EMPLBY VALUES ( 000008, 'University of Adelaide', '1997-05-01',  '1999-10-31' );
INSERT INTO EMPLBY VALUES ( 000008, 'Murdoch University', '2000-01-01',  '2005-10-31' );
INSERT INTO EMPLBY VALUES ( 000008, 'Curtin University', '2005-05-01',  '2009-12-31' );
INSERT INTO EMPLBY VALUES ( 000009, 'La Trobe University', '1990-10-1',  '1995-05-30' );
INSERT INTO EMPLBY VALUES ( 000009, 'University of Adelaide', '1997-05-01',  '1999-10-31' );
INSERT INTO EMPLBY VALUES ( 000009, 'Murdoch University', '2000-01-01',  '2005-10-31' );
INSERT INTO EMPLBY VALUES ( 000009, 'Curtin University', '2005-05-01',  '2009-12-31' );
INSERT INTO EMPLBY VALUES ( 000009, 'La Trobe University', '2010-10-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000010, 'RMIT', '01-JAN-2011',  '2011-01-31' );
INSERT INTO EMPLBY VALUES ( 0000010, 'Murdoch University', '2011-02-01',  '2011-05-31' );
INSERT INTO EMPLBY VALUES ( 0000010, 'RMIT', '2011-04-01',  '2011-05-31' );
INSERT INTO EMPLBY VALUES ( 0000010, 'Murdoch University', '2011-06-01',  '2011-11-31' );
INSERT INTO EMPLBY VALUES ( 0000010, 'RMIT', '2011-12-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000011, 'University of Queensland', '1010-10-01',  '2010-12-31' );
INSERT INTO EMPLBY VALUES ( 0000012, 'University of Adelaide', '1999-04-01',  '1999-06-01' );
INSERT INTO EMPLBY VALUES ( 0000012, 'University of Queensland', '1999-07-01',  '1999-07-10' );
INSERT INTO EMPLBY VALUES ( 0000012, 'RMIT', '01-AUG-1999',  '1999-08-31' );
INSERT INTO EMPLBY VALUES ( 0000012, 'Macquarie University', '1999-09-01', '1999-12-31' );
INSERT INTO EMPLBY VALUES ( 0000012, 'Monash University', '2001-01-01',  '2001-01-02' );
INSERT INTO EMPLBY VALUES ( 0000012, 'La Trobe University', '2001-01-03',  '2005-05-30' );
INSERT INTO EMPLBY VALUES ( 0000012, 'University of Adelaide', '2006-04-01',  '2006-06-08' );
INSERT INTO EMPLBY VALUES ( 0000012, 'University of Queensland', '31-DEC-2006',  '2007-06-07' );
INSERT INTO EMPLBY VALUES ( 0000012, 'RMIT', '2008-12-31',  '2010-06-01' );
INSERT INTO EMPLBY VALUES ( 0000012, 'University of Queensland', '2011-07-01',  '2011-07-31' );
INSERT INTO EMPLBY VALUES ( 0000012, 'Macquarie University', '2011-08-01', '2011-10-31' );
INSERT INTO EMPLBY VALUES ( 0000012, 'Monash University', '2011-11-01',  '2011-11-03' );
INSERT INTO EMPLBY VALUES ( 0000012, 'University of Adelaide', '2011-12-05',  '2011-12-31' );
INSERT INTO EMPLBY VALUES ( 0000013, 'Murdoch University', '1985-07-20',  '2010-12-31' );
INSERT INTO EMPLBY VALUES ( 0000014, 'Curtin University', '1991-05-01',  '2010-12-31' );
INSERT INTO EMPLBY VALUES ( 0000014, 'Murdoch University', '2010-01-01',  '2010-05-30' );
INSERT INTO EMPLBY VALUES ( 0000014, 'University of Adelaide', '2010-06-01',  '2010-10-31' );
INSERT INTO EMPLBY VALUES ( 0000014, 'Murdoch University', '2011-01-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000015, 'University of Western Australia', '2007-10-01',  '2010-10-01' );
INSERT INTO EMPLBY VALUES ( 0000015, 'University of Technology, Sydney', '2010-12-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000016, 'Curtin University', '2001-06-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000017, 'La Trobe University', '2009-06-01',  '2009-07-01' );
INSERT INTO EMPLBY VALUES ( 0000017, 'University of New South Wales', '2009-12-01',  '2010-12-31' );
INSERT INTO EMPLBY VALUES ( 0000017, 'University of Technology, Sydney', '2011-01-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000018, 'Monash University', '1965-06-01',  '1975-06-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'RMIT', '1975-09-01',  '1980-04-01' ); 
INSERT INTO EMPLBY VALUES ( 0000018, 'University of New South Wales', '1982-05-01',  '1983-09-20' );
INSERT INTO EMPLBY VALUES ( 0000018, 'La Trobe University', '1983-09-21',  '1985-06-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Technology, Sydney', '1985-06-02',  '1990-12-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Adelaide', '1991-07-01',  '1992-12-31' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Queensland', '1993-01-01',  '1996-05-30' );
INSERT INTO EMPLBY VALUES ( 0000018, 'RMIT', '01-DEC-1996',  '1997-06-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Sydney', '1998-02-01', '1999-06-07' );
INSERT INTO EMPLBY VALUES ( 0000018, 'Curtin University', '2000-02-01',  '2001-06-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Western Sydney', '2002-02-20',  '2003-06-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Wollongong', '2004-01-01',  '2004-12-31' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of New South Wales', '2005-01-01',  '2005-12-31' );
INSERT INTO EMPLBY VALUES ( 0000018, 'Monash University', '2006-01-01',  '2007-08-31' );
INSERT INTO EMPLBY VALUES ( 0000018, 'RMIT', '2008-06-21',  '2008-06-30' ); 
INSERT INTO EMPLBY VALUES ( 0000018, 'University of New South Wales', '2009-05-01',  '2010-04-13' );
INSERT INTO EMPLBY VALUES ( 0000018, 'La Trobe University', '2010-04-20',  '2010-06-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Technology, Sydney', '2010-12-01',  '2011-01-02' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Queensland', '2011-01-05',  '2011-06-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Technology, Sydney', '2011-06-15',  '2011-08-01' );
INSERT INTO EMPLBY VALUES ( 0000018, 'University of Wollongong', '2011-11-25',  NULL );
INSERT INTO EMPLBY VALUES ( 0000020, 'University of Wollongong', '1991-01-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000021, 'RMIT', '2012-11-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000021, 'University of Queensland', '1999-10-05',  '2010-10-31' );
INSERT INTO EMPLBY VALUES ( 0000021, 'University of Adelaide', '2010-04-05',  '2010-04-06' );
INSERT INTO EMPLBY VALUES ( 0000021, 'University of Queensland', '2011-07-01',  '2012-01-10' );
INSERT INTO EMPLBY VALUES ( 0000022, 'RMIT', '2008-06-21',  '2008-06-30' ); 
INSERT INTO EMPLBY VALUES ( 0000022, 'University of New South Wales', '2009-05-01',  '2010-04-13' );
INSERT INTO EMPLBY VALUES ( 0000022, 'La Trobe University', '2010-04-20',  '2010-06-01' );
INSERT INTO EMPLBY VALUES ( 0000023, 'University of Sydney', '2001-02-01', '2002-06-07' );
INSERT INTO EMPLBY VALUES ( 0000023, 'Curtin University', '2002-08-01',  '2003-06-01' );
INSERT INTO EMPLBY VALUES ( 0000023, 'University of Western Sydney', '2004-02-20',  '2005-06-01' );
INSERT INTO EMPLBY VALUES ( 0000026, 'RMIT', '2008-06-21',  '2009-06-30' ); 
INSERT INTO EMPLBY VALUES ( 0000026, 'University of New South Wales', '2010-08-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000027, 'University of New South Wales', '2011-05-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000028, 'University of New South Wales', '2012-06-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000030, 'La Trobe University', '2009-06-01',  '2009-07-01' );
INSERT INTO EMPLBY VALUES ( 0000030, 'University of New South Wales', '2009-12-01',  '2010-12-31' );
INSERT INTO EMPLBY VALUES ( 0000030, 'University of Technology, Sydney', '2011-01-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000031, 'Monash University', '1965-06-01',  NULL );
INSERT INTO EMPLBY VALUES ( 0000032, 'RMIT', '1975-09-01',  '1980-04-01' ); 

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 

INSERT INTO POSITIONS VALUES ( 00000001, 'lecturer', 45000.00, 'computer', NULL, 'teaching', 'University of New South Wales');
INSERT INTO POSITIONS VALUES ( 00000002, 'lecturer', 450000.00, 'mouse pad', 500000.0, 'research', 'University of Wollongong');
INSERT INTO POSITIONS VALUES ( 00000003, 'senior lecturer', 50000.00, 'a lot of red markers', NULL, 'a lot of hard work', 'University of Technology, Sydney'  );
INSERT INTO POSITIONS VALUES ( 00000004, 'associate professor', 200000.00, 'silver pen', NULL, 'teaching', 'University of Wollongong');
INSERT INTO POSITIONS VALUES ( 00000005, 'professor', 200000.00, 'chair', NULL, 'research', 'University of Queensland' );
INSERT INTO POSITIONS VALUES ( 00000006, 'professor', 100000.00, 'chair and desk', NULL, 'research', 'University of New South Wales' );
INSERT INTO POSITIONS VALUES ( 00000007, 'professor', 800000.00, 'chair', NULL, 'teaching and research', 'University of Wollongong');
INSERT INTO POSITIONS VALUES ( 00000008, 'senior lecturer', 45000.00, 'computer', 100000.00, 'teaching', 'University of Wollongong');
INSERT INTO POSITIONS VALUES ( 00000009, 'lecturer', 450000.00, 'mouse pad', 500000.00, 'research', 'University of Wollongong');
INSERT INTO POSITIONS VALUES ( 00000010, 'associate professor', 50000.00, 'a lot of red markers', NULL, 'a lot of hard work', 'University of Technology, Sydney' );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 
/* Relational tables implementing associations				*/
/*									*/
INSERT INTO SPOSSESSED VALUES ( 000001, 'Java programming', 9 );
INSERT INTO SPOSSESSED VALUES ( 000001, 'C programming', 4 );
INSERT INTO SPOSSESSED VALUES ( 000001, 'cooking', 9 );
INSERT INTO SPOSSESSED VALUES ( 000002, 'Java programming', 9 );
INSERT INTO SPOSSESSED VALUES ( 000002, 'driving', 9 );
INSERT INTO SPOSSESSED VALUES ( 000003, 'C++ programming', 10 );
INSERT INTO SPOSSESSED VALUES ( 000003, 'Java programming', 9 );
INSERT INTO SPOSSESSED VALUES ( 000003, 'painting', 5 );
INSERT INTO SPOSSESSED VALUES ( 000005, 'SQL programming', 6 );
INSERT INTO SPOSSESSED VALUES ( 000006, 'SQL programming', 8 );
INSERT INTO SPOSSESSED VALUES ( 000007, 'SQL programming', 9 );
INSERT INTO SPOSSESSED VALUES ( 000007, 'cooking', 10 );
INSERT INTO SPOSSESSED VALUES ( 000008, 'SQL programming', 3 );
INSERT INTO SPOSSESSED VALUES ( 000008, 'cooking', 9 );
INSERT INTO SPOSSESSED VALUES ( 0000010, 'database design', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000010, 'cooking', 1 );
INSERT INTO SPOSSESSED VALUES ( 0000010, 'painting', 9 );
INSERT INTO SPOSSESSED VALUES ( 0000010, 'SQL programming', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000011, 'network administration', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000011, 'C programming', 5 );
INSERT INTO SPOSSESSED VALUES ( 0000012, 'cooking', 1 );
INSERT INTO SPOSSESSED VALUES ( 0000012, 'Java programming', 9 );
INSERT INTO SPOSSESSED VALUES ( 0000012, 'driving', 3 );
INSERT INTO SPOSSESSED VALUES ( 0000013, 'network administration', 7 );
INSERT INTO SPOSSESSED VALUES ( 0000013, 'database administration', 6 );
INSERT INTO SPOSSESSED VALUES ( 0000014, 'painting', 5 );
INSERT INTO SPOSSESSED VALUES ( 0000015, 'database administration', 4 );
INSERT INTO SPOSSESSED VALUES ( 0000016, 'SQL programming', 4 );
INSERT INTO SPOSSESSED VALUES ( 0000017, 'database administration', 7 );
INSERT INTO SPOSSESSED VALUES ( 0000017, 'cooking', 9 );
INSERT INTO SPOSSESSED VALUES ( 0000018, 'network administration', 5 );
INSERT INTO SPOSSESSED VALUES ( 0000018, 'bricklaying', 6 );
INSERT INTO SPOSSESSED VALUES ( 0000018, 'database design', 9 );
INSERT INTO SPOSSESSED VALUES ( 0000018, 'database administration', 3 );
INSERT INTO SPOSSESSED VALUES ( 0000019, 'database administration', 8 );
INSERT INTO SPOSSESSED VALUES ( 0000020, 'SQL programming', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000021, 'SQL programming', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000021, 'SQL programming', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000022, 'thinking', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000023, 'reading', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000023, 'writing', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000023, 'skiing', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000026, 'snowboarding', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000026, 'database administration', 8 );
INSERT INTO SPOSSESSED VALUES ( 0000026, 'SQL programming', 10 );
INSERT INTO SPOSSESSED VALUES ( 0000026, 'PHP programming', 6 );
INSERT INTO SPOSSESSED VALUES ( 0000027, 'SQL programming', 3 );
INSERT INTO SPOSSESSED VALUES ( 0000028, 'thinking', 4 );
INSERT INTO SPOSSESSED VALUES ( 0000030, 'reading', 1 );
INSERT INTO SPOSSESSED VALUES ( 0000030, 'writing', 1 );
INSERT INTO SPOSSESSED VALUES ( 0000031, 'skiing', 2 );
INSERT INTO SPOSSESSED VALUES ( 0000031, 'snowboarding', 18 );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

INSERT INTO SNEEDED VALUES ( 00000001, 'Java programming', 8 );
INSERT INTO SNEEDED VALUES ( 00000001, 'cooking', 9 );
INSERT INTO SNEEDED VALUES ( 00000002, 'Java programming', 3 );
INSERT INTO SNEEDED VALUES ( 00000002, 'driving', 9 );
INSERT INTO SNEEDED VALUES ( 00000003, 'C++ programming', 7 );
INSERT INTO SNEEDED VALUES ( 00000003, 'Java programming', 10 );
INSERT INTO SNEEDED VALUES ( 00000003, 'painting', 4 );
INSERT INTO SNEEDED VALUES ( 00000005, 'cooking', 10 );
INSERT INTO SNEEDED VALUES ( 00000001, 'C programming', 4 );
INSERT INTO SNEEDED VALUES ( 00000006, 'cooking', 2 );
INSERT INTO SNEEDED VALUES ( 00000005, 'painting', 6 );
INSERT INTO SNEEDED VALUES ( 00000007, 'SQL programming', 10 );
INSERT INTO SNEEDED VALUES ( 00000004, 'SQL programming', 6 );
INSERT INTO SNEEDED VALUES ( 00000005, 'SQL programming', 3 );
INSERT INTO SNEEDED VALUES ( 00000007, 'painting', 5 );
INSERT INTO SNEEDED VALUES ( 00000001, 'SQL programming', 3 );
INSERT INTO SNEEDED VALUES ( 00000002, 'database design', 10 );
INSERT INTO SNEEDED VALUES ( 00000007, 'cooking', 8 );
INSERT INTO SNEEDED VALUES ( 00000008, 'singing', 3 );
INSERT INTO SNEEDED VALUES ( 00000009, 'painting',10  );
INSERT INTO SNEEDED VALUES ( 00000009, 'bricklaying', 9 );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 

INSERT INTO APPLIES VALUES( 000001, 00000001, '2017-12-13' );
INSERT INTO APPLIES VALUES( 000002, 00000001, '2017-12-13' );
INSERT INTO APPLIES VALUES( 000003, 00000002, '2017-11-14' );
INSERT INTO APPLIES VALUES( 000004, 00000002, '2017-01-20' );
INSERT INTO APPLIES VALUES( 000005, 00000002, '2017-12-22' );
INSERT INTO APPLIES VALUES( 000005, 00000003, '2017-05-09' );
INSERT INTO APPLIES VALUES( 000006, 00000003, '2017-06-17' ); 
INSERT INTO APPLIES VALUES( 000007, 00000003, '2017-06-18' );
INSERT INTO APPLIES VALUES( 000007, 00000004, '2018-01-13' );
INSERT INTO APPLIES VALUES( 000008, 00000004, '2018-02-13' );
INSERT INTO APPLIES VALUES( 000009, 00000004, '2018-02-26' );
INSERT INTO APPLIES VALUES( 000010, 00000005, '2017-09-23' );
INSERT INTO APPLIES VALUES( 000001, 00000006, '2017-10-26' );
INSERT INTO APPLIES VALUES( 000002, 00000006, '2018-01-27' );
INSERT INTO APPLIES VALUES( 000003, 00000006, '2018-01-28' );
INSERT INTO APPLIES VALUES( 000004, 00000007, '2017-01-01' );
INSERT INTO APPLIES VALUES( 000005, 00000007, '2017-01-03' );
INSERT INTO APPLIES VALUES( 000006, 00000007, '2017-01-04' );
INSERT INTO APPLIES VALUES( 000007, 00000007, '2018-01-07' );

COMMIT;

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */ 
/* End of script                                                        */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
INSERT INTO BANK VALUES( 'National Australia Bank', 'Australia', 'Sydney', 'Fitzwater St.', 25, 'www.nab.com.au', 'nab@nab.com.au', 'commercial' );
INSERT INTO BANK VALUES( 'National China Bank', 'China', 'Zhongshan', 'Beiyuanlu', 17, 'www.ncb.boc.cn', '139@back of China.com', 'central' );
INSERT INTO BANK VALUES( 'National China Construction Bank', 'China', 'Guangzhou', 'Baiyulu.', 30, 'www.construction.gz.cn', 'js@construction-bank.com', 'construction' );
INSERT INTO BANK VALUES( 'China Merchants Bank', 'China', 'Dongguan', 'Tangxia Huayuan St.', 10, 'www.merchant.dong.cn', 'zs@ellechina.com', 'investment' );
INSERT INTO BANK VALUES( 'China Industrial Bank', 'China', 'Shanghai', 'Pudong St.', 2, 'www.bank-industrial.shanghai.cn', 'cib@.com.cn', 'commercial' );
INSERT INTO BANK VALUES( 'City Bank of New York', 'USA', 'New York', '125 St.', 3, 'www.citybank.com', 'citybank@newyork.com.usa', 'commercial' );
INSERT INTO BANK VALUES( 'National Fuji Bank', 'Japan', 'Tokyo', 'Harabura St.', 25, 'www.fuji.com.jp', 'hara@fuji.com.jp', 'commercial' );
INSERT INTO BANK VALUES( 'National AK Bars  Bank', 'Russia', 'Moscow', 'Tverskaya St.', 9, 'www.ak.com.russia', 'ak@ak.com.russia', 'investment' );
INSERT INTO BANK VALUES( 'National Royal Bank', 'USA', 'Chicago', '118th St.', 25, 'www.royal.com', 'royal@royal back.com.au', 'industrial' );
INSERT INTO BANK VALUES( 'Agricultural Bank of China', 'China', 'Changsha', 'Changsha Lu.', 10, 'www.ab.com.cn', 'agriculturalback@ab.com', 'commercial' );
INSERT INTO BANK VALUES( 'National American Savings Bank', 'USA', 'Hawaii', 'Kuakini St.', 96, 'www.saving.com.usa', 'savingbank@hw.com', 'commercial' );
INSERT INTO BANK VALUES( 'National Banco BPM Bank', 'Italy', 'Milan', 'Sforza Ave.', 16, 'www.bmp.com.', 'bmp@bmp.com', 'commercial' );
INSERT INTO BANK VALUES( 'National Bank BPS', 'Poland', 'Warsaw', 'Opolskie St.', 19, 'www.bps.com.pl', 'bps@bps.com', 'commercial' );
INSERT INTO BANK VALUES( 'National Bank of Tokyo', 'Japan', 'Osaka', 'Shiba St.', 33, 'www.ufj.com.jp', 'ufj@ufj.com.jp', 'commercial' );
INSERT INTO BANK VALUES( 'National Tokai Bank', 'Japan', 'Hikkaid', 'Kyouto St.', 25, 'www.hikkaid.com.jp', 'hikkaid@ky.com.jp', 'central' );
INSERT INTO BANK VALUES( 'National Daiwa Bank', 'Japan', 'Amri', 'Kanagawa St.', 25, 'www.amri.com.jp', 'hikki@amri.com.jp', 'commercial' );
INSERT INTO BANK VALUES( 'National Swiss  Bank Corp', 'Switzerland','Geneva', 'www.swiss.com.ch.', 161, 'www.swiss.com.ch', 'gz@swiss.com.ch', 'industrial' );
INSERT INTO BANK VALUES( 'National Banco do Brasil', 'Brasil', 'Brasilia', 'Avenida Paulista', 2, 'www.bb.com.br', 'bb@banco.com.br', 'commercial' );
INSERT INTO BANK VALUES( 'National Westminster Bank', 'UK', 'London', 'Regent St.', 25, 'www.natwest.com.uk', 'natwest@natwest.com.uk', 'commercial' );
INSERT INTO BANK VALUES( 'National Royal Bank of Canada', 'Canada', 'Ottawa', 'Albert St.', 9, 'www.rbroyalbank.com.cn', 'royalbank@royalbank.com.cn', 'central' );
INSERT INTO BANK VALUES( 'China Construction Bank', 'China', 'Beijing', 'Weiwei St.', 7, 'www.construction.com.cn', 'mail@construction.com.cn','construction' );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

 INSERT INTO BRANCH VALUES( 'National Australia Bank', 'Central', 'Australia', 'Sydney', 'Station St.', 25, 100 );
 INSERT INTO BRANCH VALUES( 'National Australia Bank', 'University', 'Australia', 'Wollongong', 'Northfields Ave.', 10, 25 );
 INSERT INTO BRANCH VALUES( 'National China Bank', 'Taifeng', 'China', 'Zhongshan', 'Taifeng St.', 3, 25 );
 INSERT INTO BRANCH VALUES( 'National China Bank', 'Sanxiang', 'China', 'Zhongshan', 'Baoyuan St.', 11, 25 );
 INSERT INTO BRANCH VALUES( 'National China Bank', 'Banfu', 'China', 'Zhongshan', 'Yongkang St.', 1, 25 );
 INSERT INTO BRANCH VALUES( 'China Construction Bank', 'Xiaolan', 'China', 'Zhongshan', 'Beiyuanlu St.', 17, 30 );
 INSERT INTO BRANCH VALUES( 'China Construction Bank', 'Guzhen', 'China', 'Zhongshan', 'Beihailu Rd.', 11, 20 );
 INSERT INTO BRANCH VALUES( 'China Construction Bank', 'Shaxi', 'China', 'Zhongshan', 'Shaxilu Rd.', 6, 25 );
 INSERT INTO BRANCH VALUES( 'China Merchants Bank', 'Tangxia', 'China', 'Dongguan', 'Puxing St.', 13, 36 );
 INSERT INTO BRANCH VALUES( 'China Merchants Bank', 'Fenggang', 'China', 'Dongguan', 'Fengsan St.', 29, 29 );
 INSERT INTO BRANCH VALUES( 'China Merchants Bank', 'Lincun', 'China', 'Dongguan', 'Lincun St.', 12, 26 );
 INSERT INTO BRANCH VALUES( 'China Industrial Bank', 'Pudong', 'China', 'Shanghai', 'Pudonglu Rd.', 25, 25 );
 INSERT INTO BRANCH VALUES( 'China Industrial Bank', 'Tianxin', 'China', 'Changsha', 'Tianxinlu Ave.', 22, 26 );
 INSERT INTO BRANCH VALUES( 'China Industrial Bank', 'City', 'China', 'Shanghai', 'Pudonglu Rd.', 800, 50 );
 INSERT INTO BRANCH VALUES( 'City Bank of New York', 'New York', 'USA', 'New York', 'Wall St.', 9, 100 );
 INSERT INTO BRANCH VALUES( 'City Bank of New York', 'Broadway', 'USA', 'New York', 'Broadway St.', 11, 60 );
 INSERT INTO BRANCH VALUES( 'City Bank of New York', 'Casino', 'USA', 'Miami', 'Winston Ave.', 23, 35 );
 INSERT INTO BRANCH VALUES( 'National Fuji Bank', 'University', 'Japan', 'Tokyo', 'Harabura St.', 25, 60 );
 INSERT INTO BRANCH VALUES( 'National Fuji Bank', 'Akihabara', 'Japan', 'Tokyo', 'Akihabara Rd.', 13, 66 );
 INSERT INTO BRANCH VALUES( 'National Fuji Bank', 'Ginnza', 'Japan', 'Tokyo', 'Ginza Pl.', 10, 77 );
 INSERT INTO BRANCH VALUES( 'National AK Bars  Bank', 'Red October', 'Russia', 'Moscow', 'Tverskaya St.', 65, 90 );
 INSERT INTO BRANCH VALUES( 'National AK Bars  Bank', 'Smirnow', 'Russia', 'Sankt Petersburg', 'Liewa St.', 36, 62 ); 
 INSERT INTO BRANCH VALUES( 'National Royal Bank', 'Park', 'USA', 'Chicago', '118th St.', 25, 68 );
 INSERT INTO BRANCH VALUES( 'National Royal Bank', 'University', 'Canada', 'Ottawa', 'Albert St.', 33, 71 );
 INSERT INTO BRANCH VALUES( 'National Royal Bank', 'Station', 'Canada', 'Halifax', 'Yonge St.', 22, 68 );
 INSERT INTO BRANCH VALUES( 'Agricultural Bank of China', 'University', 'China', 'Changsha', 'Changsha St.', 10, 50 );
 INSERT INTO BRANCH VALUES( 'Agricultural Bank of China', 'Dingcheng', 'China', 'Changde', 'Dingchenglu Rd.', 19, 55 );
 INSERT INTO BRANCH VALUES( 'Agricultural Bank of China', 'Yiyang', 'China', 'Changsha', 'Tangyuan St.', 2, 25 );
 INSERT INTO BRANCH VALUES( 'National Banco BPM Bank', 'Milan', 'Italy', 'Milan', 'Via Margherita', 16, 50 );
 INSERT INTO BRANCH VALUES( 'National Bank BPS', 'Piwna', 'Poland', 'Lodz', 'Labuda St.', 8, 80 );
 INSERT INTO BRANCH VALUES( 'National Bank of Tokyo', 'Sake', 'Japan', 'Osaka', 'Station St.', 12, 60 );
 INSERT INTO BRANCH VALUES( 'National Bank of Tokyo', 'Colonial', 'China', 'Hongkong', 'George St.', 32, 60 );
 INSERT INTO BRANCH VALUES( 'National Tokai Bank', 'Hikkaid', 'Japan', 'Hiroshima', 'Hokkien Ave.', 33, 60 );
 INSERT INTO BRANCH VALUES( 'National Daiwa Bank', 'Amri', 'Japan', 'Kyoto', 'Harata St', 36, 50 );
 INSERT INTO BRANCH VALUES( 'National Swiss  Bank Corp', 'Airport', 'Switzerland', 'Basel', 'Victory Ave.', 15, 30 );
 INSERT INTO BRANCH VALUES( 'National Swiss  Bank Corp', 'Lake', 'Switzerland', 'Geneva', 'Wilhelm Tell Ave.', 15, 30 );
 INSERT INTO BRANCH VALUES( 'National Banco do Brasil', 'Garrincha', 'Brasil', 'SaoPaulo', 'Avenida Paulista', 30, 50 );
 INSERT INTO BRANCH VALUES( 'National Westminster Bank', 'Station', 'United Kingdom', 'London', 'Station St.', 12, 30 );
 INSERT INTO BRANCH VALUES( 'National Royal Bank of Canada', 'Red Oak', 'Canada', 'Toronto', 'Northfields Ave.', 10, 25 );
 INSERT INTO BRANCH VALUES( 'National Royal Bank of Canada', 'University', 'Canada', 'Vancouver', 'Kingsway St.', 6, 60 );
 INSERT INTO BRANCH VALUES( 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver', 'Fraser St.', 19, 60 );

 /* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
  INSERT INTO EMPLOYEE VALUES( 1234444, 'Joan', 'D''Arc', '1976-03-14', 'expert', 'National Australia Bank', NULL, NULL, NULL );
 INSERT INTO EMPLOYEE VALUES( 0000067, 'John', 'Paul', '1962-04-13', 'expert', 'National Australia Bank', NULL, NULL, NULL );
 INSERT INTO EMPLOYEE VALUES( 1234567, 'Peter', 'Kroll', '1966-01-12', 'manager', 'National Australia Bank', 'Central', 'Australia', 'Sydney' );
 INSERT INTO EMPLOYEE VALUES( 4598777, 'John', 'Pain', '1968-02-13', 'manager', 'National Australia Bank', 'University', 'Australia', 'Wollongong' );

 INSERT INTO EMPLOYEE VALUES( 0221100, 'James', 'Bond', '1966-02-28', 'manager', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 0221101, 'Katherine', 'Thegreat', '1978-05-01', 'clerk', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 0221102, 'Alexander', 'Macedonian', '1989-03-23', 'clerk', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );

 INSERT INTO EMPLOYEE VALUES( 8221100, 'Harry', 'Potter', '1980-01-13', 'manager', 'National Royal Bank of Canada', 'University', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 8221101, 'Festina', 'Lente', '1990-03-12', 'clerk', 'National Royal Bank of Canada', 'University', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 8221102, 'Giovanni', 'DeMedici', '1992-01-27', 'clerk', 'National Royal Bank of Canada', 'University', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 8221103, 'Luisa', 'DeMedici', '2001-12-31', 'security', 'National Royal Bank of Canada', 'University', 'Canada', 'Vancouver' );
 
 INSERT INTO EMPLOYEE VALUES( 4598777, 'Andrew', 'Smith', '1981-05-31', 'manager', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 4598778, 'Sophia', 'Lee', '1970-05-12', 'clerk', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 4598779, 'Sue', 'Brown', '1971-05-01', 'clerk', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );
 
 INSERT INTO EMPLOYEE VALUES( 0000210, 'Ryan', 'Scott', '1981-05-31', 'manager', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 0000211, 'Yee', 'White', '1973-09-12', 'clerk', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );
 INSERT INTO EMPLOYEE VALUES( 0000212, 'Hing', 'Williams', '1976-01-09', 'Customer servise', 'National Royal Bank of Canada', 'River', 'Canada', 'Vancouver' );
 
 INSERT INTO EMPLOYEE VALUES( 1023422, 'Billy', 'Lam', '1981-09-30', 'manager', 'National Banco do Brasil', 'Garrincha', 'Brasil', 'SaoPaulo' );
 INSERT INTO EMPLOYEE VALUES( 1023423, 'Bob', 'Garcia', '1986-02-22', 'clerk', 'National Banco do Brasil', 'Garrincha', 'Brasil', 'SaoPaulo' );
 INSERT INTO EMPLOYEE VALUES( 1023424, 'Carl', 'Votos', '1983-11-11', 'security', 'National Banco do Brasil', 'Garrincha', 'Brasil', 'SaoPaulo' );
 
 INSERT INTO EMPLOYEE VALUES( 8330012, 'Abel', 'Federer', '1971-02-02', 'manager', 'National Swiss  Bank Corp', 'Airport', 'Switzerland', 'Basel' );
 INSERT INTO EMPLOYEE VALUES( 8330013, 'Sally', 'Von', '1974-02-22', 'clerk', 'National Swiss  Bank Corp', 'Airport', 'Switzerland', 'Basel' );
 INSERT INTO EMPLOYEE VALUES( 8330014, 'Lile', 'Don', '1979-11-16', 'clerk', 'National Swiss  Bank Corp', 'Airport', 'Switzerland', 'Basel' );
 
 INSERT INTO EMPLOYEE VALUES( 7330012, 'Sue', 'Smythe', '1969-06-02', 'manager', 'National Swiss  Bank Corp', 'Lake', 'Switzerland', 'Geneva' );
 INSERT INTO EMPLOYEE VALUES( 7330013, 'Elva', 'Jnes', '1984-06-22', 'clerk', 'National Swiss  Bank Corp', 'Lake', 'Switzerland', 'Geneva' );
 INSERT INTO EMPLOYEE VALUES( 7330014, 'Hank', 'Wood', '1975-11-23', 'sucurity', 'National Swiss  Bank Corp', 'Lake', 'Switzerland', 'Geneva' );
  
 INSERT INTO EMPLOYEE VALUES( 2020213, 'Dick', 'Field', '1985-10-29', 'manager', 'National Daiwa Bank', 'Amri', 'Japan', 'Kyoto' );
 INSERT INTO EMPLOYEE VALUES( 2020214, 'Jane', 'Ford', '1981-12-23', 'clerk', 'National Daiwa Bank', 'Amri', 'Japan', 'Kyoto' ); 
 INSERT INTO EMPLOYEE VALUES( 2020215, 'Tree', 'Tree', '1975-01-26', 'clerk', 'National Daiwa Bank', 'Amri', 'Japan', 'Kyoto' );
 
 INSERT INTO EMPLOYEE VALUES( 0001220, 'Ian', 'Yanamoto', '1980-05-11', 'manager', 'National Tokai Bank', 'Hikkaid', 'Japan', 'Hiroshima' );
 INSERT INTO EMPLOYEE VALUES( 0001221, 'Ivy', 'Takati', '1983-10-04', 'clerk', 'National Tokai Bank', 'Hikkaid', 'Japan', 'Hiroshima' );
 INSERT INTO EMPLOYEE VALUES( 0001222, 'Pearl', 'Zhou', '1981-06-10', 'clerk', 'National Tokai Bank', 'Hikkaid', 'Japan', 'Hiroshima' );
 
 INSERT INTO EMPLOYEE VALUES( 5223300, 'Alan', 'Huang', '1983-04-19', 'manager', 'National Bank of Tokyo', 'Colonial', 'China', 'Hongkong' );
 INSERT INTO EMPLOYEE VALUES( 5223301, 'May', 'Chen', '1973-02-11', 'clerk', 'National Bank of Tokyo', 'Colonial', 'China', 'Hongkong' );
 INSERT INTO EMPLOYEE VALUES( 5223302, 'Susan', 'Huan', '1976-07-16', 'clerk', 'National Bank of Tokyo', 'Colonial', 'China', 'Hongkong' );
 
 INSERT INTO EMPLOYEE VALUES( 4223300, 'Glen', 'Ito', '1973-09-13', 'manager', 'National Bank of Tokyo', 'Sake', 'Japan', 'Osaka' );
 INSERT INTO EMPLOYEE VALUES( 4223301, 'Clin', 'Suzuki', '1993-03-10', 'clerk', 'National Bank of Tokyo', 'Sake', 'Japan', 'Osaka' );
 INSERT INTO EMPLOYEE VALUES( 4223302, 'Bella', 'Watanabe', '1983-03-19', 'clerk', 'National Bank of Tokyo', 'Sake', 'Japan', 'Osaka' );
 
 INSERT INTO EMPLOYEE VALUES( 0223400, 'Elison', 'Wei', '1971-05-23', 'manager', 'National Bank BPS', 'Piwna', 'Poland', 'Lodz' );
 INSERT INTO EMPLOYEE VALUES( 0223402, 'Penny', 'Sun', '1991-02-12', 'clerk', 'National Bank BPS', 'Piwna', 'Poland', 'Lodz' );
 INSERT INTO EMPLOYEE VALUES( 0223403, 'Alan', 'Qian', '1981-01-03', 'security', 'National Bank BPS', 'Piwna', 'Poland', 'Lodz' );
 
 INSERT INTO EMPLOYEE VALUES( 3412567, 'George', 'Russo', '1972-01-03', 'manager', 'National Banco BPM Bank', 'Milan', 'Italy', 'Milan' );
 INSERT INTO EMPLOYEE VALUES( 3412568, 'Jack', 'Ferrari', '1982-01-03', 'clerk', 'National Banco BPM Bank', 'Milan', 'Italy', 'Milan' );
 INSERT INTO EMPLOYEE VALUES( 3412569, 'Colin', 'Esposito', '1992-01-03', 'clerk', 'National Banco BPM Bank', 'Milan', 'Italy', 'Milan' );
 
 INSERT INTO EMPLOYEE VALUES( 2233255, 'Lilly', 'Lin', '1978-09-03', 'manager', 'Agricultural Bank of China', 'Yiyang', 'China', 'Changsha' );
 INSERT INTO EMPLOYEE VALUES( 2233256, 'Sara', 'Xu', '1978-06-09', 'clerk', 'Agricultural Bank of China', 'Yiyang', 'China','Changsha' );
 
 INSERT INTO EMPLOYEE VALUES( 2223325, 'Susan', 'Yang', '1988-09-03', 'manager', 'Agricultural Bank of China', 'Dingcheng', 'China', 'Changde' );
 INSERT INTO EMPLOYEE VALUES( 2223326, 'Flower', 'Zhao', '1978-03-03', 'clerk', 'Agricultural Bank of China', 'Dingcheng', 'China', 'Changde' );
 INSERT INTO EMPLOYEE VALUES( 2223327, 'Flower', 'Zhao', '1979-06-03', 'clerk', 'Agricultural Bank of China', 'Dingcheng', 'China', 'Changde' );
 
 INSERT INTO EMPLOYEE VALUES( 4223325, 'Sally', 'Li', '1988-05-03', 'manager', 'Agricultural Bank of China', 'University', 'China', 'Changsha' );
 INSERT INTO EMPLOYEE VALUES( 4223326, 'Carol', 'Wu', '1988-05-03', 'security', 'Agricultural Bank of China', 'University', 'China', 'Changsha' );
 
 INSERT INTO EMPLOYEE VALUES( 5223325, 'Duke', 'Smith', '1989-05-03', 'manager', 'National Royal Bank', 'Station', 'Canada', 'Halifax' );
 INSERT INTO EMPLOYEE VALUES( 5223326, 'Jack', 'White', '1976-09-01', 'clerk', 'National Royal Bank', 'Station', 'Canada', 'Halifax' );
 INSERT INTO EMPLOYEE VALUES( 5223327, 'Hank', 'Lee', '1976-05-09', 'security', 'National Royal Bank', 'Station', 'Canada', 'Halifax' );
 
 INSERT INTO EMPLOYEE VALUES( 6223325, 'Henry', 'Anderson', '1979-08-09', 'manager', 'National Royal Bank', 'University', 'Canada', 'Ottawa' );
 INSERT INTO EMPLOYEE VALUES( 6223326, 'Colin', 'Thomas', '1981-08-29', 'clerk', 'National Royal Bank', 'University', 'Canada', 'Ottawa' );
 INSERT INTO EMPLOYEE VALUES( 6223327, 'Henry', 'Anderson', '1991-08-09', 'clerk', 'National Royal Bank', 'University', 'Canada', 'Ottawa' );
 
 INSERT INTO EMPLOYEE VALUES( 2255554, 'Cary', 'Johnson', '1989-08-09', 'manager', 'National Royal Bank', 'Park', 'USA', 'Chicago' );
 INSERT INTO EMPLOYEE VALUES( 2255555, 'Alan', 'Smith', '1969-11-09', 'clerk', 'National Royal Bank', 'Park', 'USA', 'Chicago' );
 INSERT INTO EMPLOYEE VALUES( 2255556, 'James', 'Kato', '1980-03-09', 'clerk', 'National Royal Bank', 'Park', 'USA', 'Chicago' );
 
 INSERT INTO EMPLOYEE VALUES( 1255554, 'Adam', 'Johnson', '1979-08-09', 'manager', 'National AK Bars  Bank', 'Smirnow', 'Russia', 'Sankt Petersburg' );
 INSERT INTO EMPLOYEE VALUES( 1255555, 'Gavin', 'Johnson', '1986-08-02', 'clerk', 'National AK Bars  Bank', 'Smirnow', 'Russia', 'Sankt Petersburg' );
 INSERT INTO EMPLOYEE VALUES( 1255556, 'Evan', 'Johnson', '1976-03-02', 'security', 'National AK Bars  Bank', 'Smirnow', 'Russia', 'Sankt Petersburg' );
 
 INSERT INTO EMPLOYEE VALUES( 0152433, 'Elvis', 'Johnson', '1972-08-15', 'manager', 'National AK Bars  Bank', 'Red October', 'Russia', 'Moscow' );
 INSERT INTO EMPLOYEE VALUES( 0152434, 'Blake', 'Johnson', '1976-02-15', 'clerk', 'National AK Bars  Bank', 'Red October', 'Russia', 'Moscow' );
 
 INSERT INTO EMPLOYEE VALUES( 0121611, 'George', 'Kato', '1973-08-15', 'manager', 'National Fuji Bank', 'Ginnza', 'Japan', 'Tokyo' );
 INSERT INTO EMPLOYEE VALUES( 0121612, 'Henry', 'Aoki', '1983-08-15', 'clerk', 'National Fuji Bank', 'Ginnza', 'Japan', 'Tokyo' );
 
 INSERT INTO EMPLOYEE VALUES( 1121611, 'Ivan', 'Wada', '1993-08-05', 'manager', 'National Fuji Bank', 'Akihabara', 'Japan', 'Tokyo' );
 INSERT INTO EMPLOYEE VALUES( 1121612, 'Ivan', 'Wada', '1973-06-05', 'clerk', 'National Fuji Bank', 'Akihabara', 'Japan', 'Tokyo' );
 
 INSERT INTO EMPLOYEE VALUES( 8121611, 'Elison', 'Saito', '1973-08-05', 'manager', 'National Fuji Bank', 'Akihabara', 'Japan', 'Tokyo' );
 INSERT INTO EMPLOYEE VALUES( 8121612, 'David', 'Sasaki', '1979-08-10', 'clerk', 'National Fuji Bank', 'Akihabara', 'Japan', 'Tokyo' );
 
 INSERT INTO EMPLOYEE VALUES( 1620055, 'Harry', 'Brown', '1978-12-05', 'manager', 'City Bank of New York', 'New York', 'USA', 'New York' );
 INSERT INTO EMPLOYEE VALUES( 1620056, 'Nancy', 'Miller', '1984-12-20', 'clerk', 'City Bank of New York', 'New York', 'USA', 'New York' );
 
 INSERT INTO EMPLOYEE VALUES( 2345678, 'Gavin', 'Martinson', '1976-12-05', 'manager', 'City Bank of New York', 'Broadway', 'USA', 'New York' );
 INSERT INTO EMPLOYEE VALUES( 2345679, 'Black', 'Johnson', '1977-01-05', 'clerk', 'City Bank of New York', 'Broadway', 'USA', 'New York' );
 
 INSERT INTO EMPLOYEE VALUES( 1124466, 'George', 'Martinson', '1976-03-05', 'manager', 'City Bank of New York', 'New York', 'USA', 'New York' );
 INSERT INTO EMPLOYEE VALUES( 1124467, 'Adam', 'Williams', '1986-03-15', 'clerk', 'City Bank of New York', 'New York', 'USA', 'New York' );
 
 INSERT INTO EMPLOYEE VALUES( 2341516, 'Ryan', 'Wang', '1979-03-05', 'manager', 'China Industrial Bank', 'Pudong', 'China', 'Shanghai' );
 INSERT INTO EMPLOYEE VALUES( 2341517, 'Jane', 'Feng', '1983-03-10', 'clerk', 'China Industrial Bank', 'Pudong', 'China', 'Shanghai' );
 
 INSERT INTO EMPLOYEE VALUES( 5621516, 'Ryan', 'Wang', '1985-09-05', 'manager', 'China Industrial Bank', 'Tianxin', 'China', 'Changsha' );
 INSERT INTO EMPLOYEE VALUES( 5621517, 'May', 'Chen', '1983-09-10', 'clerk', 'China Industrial Bank', 'Tianxin', 'China', 'Changsha' );
 
 INSERT INTO EMPLOYEE VALUES( 7121516, 'Tracy', 'Wang', '1975-09-15', 'manager', 'China Industrial Bank', 'City', 'China', 'Shanghai' );
 INSERT INTO EMPLOYEE VALUES( 7121517, 'Billy', 'xu', '1989-10-15', 'clerk', 'China Industrial Bank', 'City', 'China', 'Shanghai' );
 
 INSERT INTO EMPLOYEE VALUES( 5323266, 'Maggie', 'Jiang', '1971-06-15', 'manager', 'China Merchants Bank', 'Lincun', 'China', 'Dongguan' );
 INSERT INTO EMPLOYEE VALUES( 5323267, 'Yee', 'Zhang', '1972-11-15', 'clerk', 'China Merchants Bank', 'Lincun', 'China', 'Dongguan' );
 
 INSERT INTO EMPLOYEE VALUES( 3423266, 'Jackson', 'Yuan', '1976-06-20', 'manager', 'China Merchants Bank', 'Fenggang', 'China', 'Dongguan' );
 INSERT INTO EMPLOYEE VALUES( 3423267, 'Wendy', 'Zhou', '1980-09-21', 'clerk', 'China Merchants Bank', 'Fenggang', 'China', 'Dongguan' );
 
 INSERT INTO EMPLOYEE VALUES( 3233266, 'Ross', 'Wei', '1979-03-20', 'manager', 'China Merchants Bank', 'Tangxia', 'China', 'Dongguan' );
 INSERT INTO EMPLOYEE VALUES( 3233267, 'Vivian', 'Zhong', '1983-03-18', 'clerk', 'China Merchants Bank', 'Tangxia', 'China', 'Dongguan' );
 
 INSERT INTO EMPLOYEE VALUES( 1111234, 'Christian', 'Huang', '1986-09-20', 'manager', 'China Construction Bank', 'Shaxi', 'China', 'Zhongshan' );
 INSERT INTO EMPLOYEE VALUES( 1111235, 'Sophia', 'Wei', '1976-05-20', 'clerk', 'China Construction Bank', 'Shaxi', 'China', 'Zhongshan' );
 
 INSERT INTO EMPLOYEE VALUES( 1111651, 'Markus', 'Duan', '1989-02-19', 'manager', 'China Construction Bank', 'Guzhen', 'China', 'Zhongshan' );
 INSERT INTO EMPLOYEE VALUES( 1111652, 'Mieke', 'Jiang', '1975-09-23', 'clerk', 'China Construction Bank', 'Guzhen', 'China', 'Zhongshan' );
 
 INSERT INTO EMPLOYEE VALUES( 1111777, 'Hans', 'Hu', '1982-06-19', 'manager', 'China Construction Bank', 'Xiaolan', 'China', 'Zhongshan' );
 INSERT INTO EMPLOYEE VALUES( 1111778, 'Tim', 'Xia', '1986-09-09', 'clerk', 'China Construction Bank', 'Xiaolan', 'China', 'Zhongshan' );
 
 INSERT INTO EMPLOYEE VALUES( 1234321, 'Luck', 'Lu', '1988-06-13', 'manager', 'National China Bank', 'Banfu', 'China', 'Zhongshan' );
 INSERT INTO EMPLOYEE VALUES( 1234322, 'Jeremy', 'Li', '1981-06-06', 'clerk', 'National China Bank', 'Banfu', 'China', 'Zhongshan' );
 
 INSERT INTO EMPLOYEE VALUES( 2352343, 'David', 'Qian', '1986-02-13', 'manager', 'National China Bank', 'Sanxiang', 'China', 'Zhongshan' );
 INSERT INTO EMPLOYEE VALUES( 2352344, 'Scott', 'Yuan', '1976-02-02', 'clerk', 'National China Bank', 'Sanxiang', 'China', 'Zhongshan' );
 
 INSERT INTO EMPLOYEE VALUES( 2326322, 'Alan', 'Xu', '1979-08-13', 'manager', 'National China Bank', 'Taifeng', 'China', 'Zhongshan' );
 INSERT INTO EMPLOYEE VALUES( 2326323, 'Amy', 'Zheng', '1970-03-03', 'security', 'National China Bank', 'Taifeng', 'China', 'Zhongshan' );
 
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

INSERT INTO ACCOUNT VALUES ( 0123456788, 'China Construction Bank', 12334.00, 'savings' );
INSERT INTO ACCOUNT VALUES ( 0123456789, 'China Construction Bank', 823.67, 'savings' );

INSERT INTO ACCOUNT VALUES ( 4123456788, 'National Australia Bank', 223.60, 'savings' );
INSERT INTO ACCOUNT VALUES ( 0123456779, 'National Australia Bank', 222.20, 'savings' );
INSERT INTO ACCOUNT VALUES ( 9123456689, 'National China Bank', 379.40, 'savings' );
INSERT INTO ACCOUNT VALUES ( 1123455701, 'National China Bank', 633.01, 'savings' );
INSERT INTO ACCOUNT VALUES ( 2123356710, 'National China Bank', 999.67, 'savings' );
INSERT INTO ACCOUNT VALUES ( 5122456739, 'China Construction Bank', 521.20, 'savings' );
INSERT INTO ACCOUNT VALUES ( 0313345681, 'China Construction Bank', 220.37, 'savings' );
INSERT INTO ACCOUNT VALUES ( 0593456725, 'China Construction Bank', 125.69, 'savings' );

INSERT INTO ACCOUNT VALUES ( 0963456721, 'China Merchants Bank', 323.57, 'loan' );
INSERT INTO ACCOUNT VALUES ( 2123453713, 'China Merchants Bank', 163.97, 'loan' );
INSERT INTO ACCOUNT VALUES ( 1153456711, 'China Merchants Bank', 193.11, 'loan' );

INSERT INTO ACCOUNT VALUES ( 9123456786, 'China Industrial Bank', 129.25, 'checking' );
INSERT INTO ACCOUNT VALUES ( 1193456783, 'China Industrial Bank', 923.55, 'checking' );
INSERT INTO ACCOUNT VALUES ( 0623456781, 'China Industrial Bank', 553.37, 'checking' );

INSERT INTO ACCOUNT VALUES ( 5023456739, 'City Bank of New York', 884.64, 'loan' );
INSERT INTO ACCOUNT VALUES ( 1123456789, 'City Bank of New York', 999.52, 'loan' );
INSERT INTO ACCOUNT VALUES ( 0823426784, 'City Bank of New York', 189.33, 'loan' );

INSERT INTO ACCOUNT VALUES ( 0123356784, 'National Fuji Bank', 177.60, 'savings' );
INSERT INTO ACCOUNT VALUES ( 0153456782, 'National Fuji Bank', 223.62, 'savings' );
INSERT INTO ACCOUNT VALUES ( 8123456781, 'National Fuji Bank', 835.25, 'savings' );

INSERT INTO ACCOUNT VALUES ( 5123456725, 'National AK Bars  Bank', 990.30, 'savings' );
INSERT INTO ACCOUNT VALUES ( 3123456712, 'National AK Bars  Bank', 985.28, 'savings' );

INSERT INTO ACCOUNT VALUES ( 0123456710, 'National Royal Bank', 225.14, 'checking' );
INSERT INTO ACCOUNT VALUES ( 4123456720, 'National Royal Bank', 378.17, 'checking' );
INSERT INTO ACCOUNT VALUES ( 9123456717, 'National Royal Bank', 898.26, 'checking' );

INSERT INTO ACCOUNT VALUES ( 1123456768, 'Agricultural Bank of China', 111.67, 'savings' );
INSERT INTO ACCOUNT VALUES ( 2123456703, 'Agricultural Bank of China', 147.69, 'savings' );
INSERT INTO ACCOUNT VALUES ( 6123456705, 'Agricultural Bank of China', 878.36, 'savings' );

INSERT INTO ACCOUNT VALUES ( 7123456719, 'National Banco BPM Bank', 975.35, 'loan' );
INSERT INTO ACCOUNT VALUES ( 0123456730, 'National Bank BPS', 986.98, 'savings' );
INSERT INTO ACCOUNT VALUES ( 3123456720, 'National Bank of Tokyo', 955.61, 'savings' );
INSERT INTO ACCOUNT VALUES ( 2223456770, 'National Bank of Tokyo', 555.87, 'savings' );
INSERT INTO ACCOUNT VALUES ( 2523456757, 'National Tokai Bank', 658.99, 'savings' );
INSERT INTO ACCOUNT VALUES ( 3623456728, 'National Daiwa Bank', 728.65, 'loan' );
INSERT INTO ACCOUNT VALUES ( 7823456713, 'National Swiss  Bank Corp', 566.85, 'loan' );
INSERT INTO ACCOUNT VALUES ( 7223456719, 'National Swiss  Bank Corp', 985.35, 'loan' );

INSERT INTO ACCOUNT VALUES ( 4123456730, 'National Banco do Brasil', 255.98, 'savings' );
INSERT INTO ACCOUNT VALUES ( 1123456712, 'National Westminster Bank', 333.11, 'savings' );
INSERT INTO ACCOUNT VALUES ( 6223456740, 'National Royal Bank of Canada', 174.27, 'savings' );
INSERT INTO ACCOUNT VALUES ( 2523456752, 'National Royal Bank of Canada', 185.19, 'savings' );
INSERT INTO ACCOUNT VALUES ( 3323456721, 'National Royal Bank of Canada', 366.60, 'savings' );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

INSERT INTO TRANSACTION VALUES( 3323456721, 'National Royal Bank of Canada', '2021-01-20 12:44:09', 100.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 3323456721, 'National Royal Bank of Canada', '2021-01-10 11:44:00', 150.00, 'withdrawal' );
INSERT INTO TRANSACTION VALUES( 2523456752, 'National Royal Bank of Canada', '2020-03-23 10:44:07', 1000.90, 'deposit' );

INSERT INTO TRANSACTION VALUES( 3323456721, 'National Royal Bank of Canada', '2021-07-20 10:25:00', 100.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 3323456721, 'National Royal Bank of Canada', '2021-08-10 10:25:00', 150.00, 'withdrawal' );
INSERT INTO TRANSACTION VALUES( 2523456752, 'National Royal Bank of Canada', '2020-09-23 10:25:00', 1000.90, 'deposit' ); 
INSERT INTO TRANSACTION VALUES( 2523456752, 'National Royal Bank of Canada', '2020-07-10 10:25:00', 500.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 6223456740, 'National Royal Bank of Canada', '2021-01-01 10:25:00', 600.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 6223456740, 'National Royal Bank of Canada', '2021-01-10 10:25:00', 700.00, 'deposit' );

INSERT INTO TRANSACTION VALUES( 1123456712, 'National Westminster Bank', '2020-01-01 10:25:00', 12000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 1123456712, 'National Westminster Bank', '2021-01-10 10:25:00', 1000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 4123456730, 'National Banco do Brasil', '2019-03-08 10:25:00', 4000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 4123456730, 'National Banco do Brasil', '2021-01-15 10:25:00', 1000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 7223456719, 'National Swiss  Bank Corp', '2019-06-01 10:25:00', 4000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 7223456719, 'National Swiss  Bank Corp', '2020-06-15 10:25:00', 3000.00, 'withdrawal' );
 
INSERT INTO TRANSACTION VALUES( 7823456713, 'National Swiss  Bank Corp', '2019-02-09 10:25:00', 4000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 7823456713, 'National Swiss  Bank Corp', '2020-02-09 10:25:00', 4000.00, 'withdrawal' );
 
INSERT INTO TRANSACTION VALUES( 3623456728, 'National Daiwa Bank', '2020-02-15 10:25:00', 6000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 3623456728, 'National Daiwa Bank', '2021-01-09 10:25:00', 200.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 2523456757, 'National Tokai Bank', '2018-09-15 10:25:00', 6000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 2523456757, 'National Tokai Bank', '2021-01-15 10:25:00', 3000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 2223456770, 'National Bank of Tokyo', '2019-10-15 10:25:00', 8000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 2223456770, 'National Bank of Tokyo', '2020-01-15 10:25:00', 2000.00, 'deposit' ); 

INSERT INTO TRANSACTION VALUES( 3123456720, 'National Bank of Tokyo', '2017-06-15 10:25:00', 8000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 3123456720, 'National Bank of Tokyo', '2020-06-15 10:25:00', 8000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 0123456730, 'National Bank BPS', '2018-09-15 10:25:00', 4000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 0123456730, 'National Bank BPS', '2020-06-15 10:25:00', 800.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 7123456719, 'National Banco BPM Bank', '2018-09-15 10:25:00', 4000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 7123456719, 'National Banco BPM Bank', '2020-06-15 10:25:00', 800.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 6123456705, 'Agricultural Bank of China', '2016-06-15 10:25:00', 5000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 6123456705, 'Agricultural Bank of China', '2020-02-15 10:25:00', 1000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 2123456703, 'Agricultural Bank of China', '2015-09-20 10:25:00', 5000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 2123456703, 'Agricultural Bank of China', '2020-06-15 10:25:00', 2000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 1123456768, 'Agricultural Bank of China', '2015-09-20 10:25:00', 5000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 1123456768, 'Agricultural Bank of China', '2020-06-15 10:25:00', 2000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 9123456717, 'National Royal Bank', '2016-11-20 10:25:00', 9000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 9123456717, 'National Royal Bank', '2020-11-10 10:25:00', 1000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 4123456720, 'National Royal Bank', '2018-10-20 10:25:00', 6000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 4123456720, 'National Royal Bank', '2020-02-11 10:25:00', 3000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 0123456710, 'National Royal Bank', '2019-03-12 10:25:00', 10000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 0123456710, 'National Royal Bank', '2020-03-19 10:25:00', 2000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 3123456712, 'National AK Bars  Bank', '2015-09-03 10:25:00', 10000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 3123456712, 'National AK Bars  Bank', '2020-03-01 10:25:00', 2000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 5123456725, 'National AK Bars  Bank', '2016-06-13 10:25:00', 20000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 5123456725, 'National AK Bars  Bank', '2020-08-01', 2000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 8123456781, 'National Fuji Bank', '2019-03-23 10:25:00', 20000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 8123456781, 'National Fuji Bank', '2020-05-24 10:25:00', 5000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 0153456782, 'National Fuji Bank', '2018-01-10 10:25:00', 12000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 0153456782, 'National Fuji Bank', '2020-05-30 10:25:00', 5000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 0123356784, 'National Fuji Bank', '2015-01-30 10:25:00', 20000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 0123356784, 'National Fuji Bank', '2020-05-15 10:25:00', 10000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 0823426784, 'City Bank of New York', '2016-08-12 10:25:00', 30000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 0823426784, 'City Bank of New York', '2020-08-15 10:25:00', 8000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 1123456789, 'City Bank of New York', '2017-09-11 10:25:00', 30000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 1123456789, 'City Bank of New York', '2020-05-15 10:25:00', 30000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 5023456739, 'City Bank of New York', '2019-02-16 10:25:00', 15000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 5023456739, 'City Bank of New York', '2020-09-12 10:25:00', 10000.00, 'deposit' );

INSERT INTO TRANSACTION VALUES( 0623456781, 'China Industrial Bank', '2016-02-16 10:25:00', 40000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 0623456781, 'China Industrial Bank', '2021-01-12 10:25:00', 12000.00, 'withdrawal' );
 
INSERT INTO TRANSACTION VALUES( 1193456783, 'China Industrial Bank', '2018-06-19 10:25:00', 10000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 1193456783, 'China Industrial Bank', '2020-10-12 10:25:00', 12000.00, 'deposit' ); 

INSERT INTO TRANSACTION VALUES( 9123456786, 'China Industrial Bank', '2016-03-12 10:25:00', 10000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 9123456786, 'China Industrial Bank', '2020-05-12 10:25:00', 5000.00, 'withdrawal' ); 

INSERT INTO TRANSACTION VALUES( 1153456711, 'China Merchants Bank', '2018-03-15 10:25:00', 10000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 1153456711, 'China Merchants Bank', '2020-05-15 10:25:00', 600.00, 'withdrawal' ); 
 
INSERT INTO TRANSACTION VALUES( 2123453713, 'China Merchants Bank', '2019-04-15 10:25:00', 10000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 2123453713, 'China Merchants Bank', '2019-10-15 10:25:00', 10000.00, 'deposit' );  

INSERT INTO TRANSACTION VALUES( 0963456721, 'China Merchants Bank', '2018-11-30 10:25:00', 10000.00, 'deposit' );
INSERT INTO TRANSACTION VALUES( 0963456721, 'China Merchants Bank', '2019-12-15 10:25:00', 10000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 0963456721, 'China Merchants Bank', '2020-10-10 10:25:00', 10000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 0593456725, 'China Construction Bank', '2020-01-15 10:25:00', 10000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 0593456725, 'China Construction Bank', '2021-01-18 10:25:00', 10000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 0313345681, 'China Construction Bank', '2016-09-15 10:25:00', 50000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 0313345681, 'China Construction Bank', '2021-01-15 10:25:00', 30000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 5122456739, 'China Construction Bank', '2017-11-15 10:25:00', 40000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 5122456739, 'China Construction Bank', '2021-01-18 10:25:00', 20000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 2123356710, 'National China Bank', '2019-11-10 10:25:00', 10000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 2123356710, 'National China Bank', '2021-01-18 10:25:00', 8000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 1123455701, 'National China Bank', '2017-06-05 10:25:00', 10000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 1123455701, 'National China Bank', '2020-11-18 10:25:00', 3000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 9123456689, 'National China Bank', '2016-09-10 10:25:00', 6000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 9123456689, 'National China Bank', '2020-09-15 10:25:00', 5000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 0123456779, 'National Australia Bank', '2019-06-10 10:25:00', 15000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 0123456779, 'National Australia Bank', '2021-01-10 10:25:00', 5000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 4123456788, 'National Australia Bank', '2017-09-15 10:25:00', 25000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 4123456788, 'National Australia Bank', '2020-01-22 10:25:00',10000.00, 'withdrawal' );

INSERT INTO TRANSACTION VALUES( 0123456789, 'China Construction Bank', '2015-03-15 10:25:00', 60000.00, 'deposit' );  
INSERT INTO TRANSACTION VALUES( 0123456789, 'China Construction Bank', '2020-01-22 10:25:00',30000.00, 'withdrawal' );
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

INSERT INTO DEPT VALUES 
	( 10
	, 'ACCOUNTING'
	, 'NEW YORK'
	);
INSERT INTO DEPT VALUES 
	( 20
	, 'RESEARCH'
	, 'DALLAS'
	);
INSERT INTO DEPT VALUES 
	( 30
	, 'SALES'
	, 'CHICAGO'
	);
INSERT INTO DEPT VALUES 
	( 40
	, 'OPERATIONS'
	, 'BOSTON'
	);

  INSERT INTO EMP VALUES
       ( 7369
       , 'SMITH'
       , 'CLERK'
       , 7902
       , STR_TO_DATE( '17-12-1980', '%d-%m-%Y')
       , 800
       , NULL
       , 20
       );
       
INSERT INTO EMP VALUES
       ( 7499, 'ALLEN'
	, 'SALESMAN'
	, 7698
	, STR_TO_DATE('20-02-1981', '%d-%m-%Y')
	, 1600
	, 300
	, 30
	);
INSERT INTO EMP VALUES
	( 7521
	, 'WARD'
	, 'SALESMAN'
	, 7698
	, STR_TO_DATE('22-02-1981', '%d-%m-%Y')
	, 1250
	, 500
	, 30
	);
INSERT INTO EMP VALUES
	( 7566
	, 'JONES'
	, 'MANAGER'
	, 7839
	, STR_TO_DATE('02-04-1981', '%d-%m-%Y')
	, 2975
	, NULL
	, 20
	);
INSERT INTO EMP VALUES
	( 7654
	, 'MARTIN'
	, 'SALESMAN'
	, 7698
	, STR_TO_DATE('28-09-1981', '%d-%m-%Y')
	, 1250
	, 1400
	, 30
	);
INSERT INTO EMP VALUES
	( 7698
	, 'BLAKE'
	, 'MANAGER'
	, 7839
	, STR_TO_DATE('01-05-1981', '%d-%m-%Y')
	, 2850
	, NULL
	, 30
	);
INSERT INTO EMP VALUES
	( 7782
	, 'CLARK'
	, 'MANAGER'
	, 7839
	, STR_TO_DATE('09-06-1981', '%d-%m-%Y')
	, 2450
	, NULL
	, 10
	);
INSERT INTO EMP VALUES
	( 7788
	, 'SCOTT'
	, 'ANAL%YST'
	, 7566
	, STR_TO_DATE('09-12-1982', '%d-%m-%Y')
	, 3000
	, NULL
	, 20
	);
INSERT INTO EMP VALUES
	( 7839
	, 'KING'
	, 'PRESIDENT'
	, NULL
	, STR_TO_DATE('17-11-1981', '%d-%m-%Y')
	, 5000
	, NULL
	, 10
	);
INSERT INTO EMP VALUES
	( 7844
	, 'TURNER'
	, 'SALESMAN'
	, 7698
	, STR_TO_DATE('8-09-1981', '%d-%m-%Y')
	, 1500
	, 0
	, 30
	);
INSERT INTO EMP VALUES
	( 7876
	, 'ADAMS'
	, 'CLERK'
	, 7788
	, STR_TO_DATE('12-01-1983', '%d-%m-%Y')
	, 1100
	, NULL
	, 20
	);
INSERT INTO EMP VALUES
	( 7900
	, 'JAMES'
	, 'CLERK'
	, 7698
	, STR_TO_DATE('3-12-1981', '%d-%m-%Y')
	, 950
	, NULL
	, 30
	);
INSERT INTO EMP VALUES
	( 7902
	, 'FORD'
	, 'ANAL%YST'
	, 7566
	, STR_TO_DATE('3-12-1981', '%d-%m-%Y')
	, 3000
	, NULL
	, 20
	);
INSERT INTO EMP VALUES
	( 7934
	, 'MILLER'
	, 'CLERK'
	, 7782
	, STR_TO_DATE('23-01-1982', '%d-%m-%Y')
	, 1300
	, NULL
	, 10
	);

INSERT INTO REGION VALUES
        ( 'Europe' );
INSERT INTO REGION VALUES
        ( 'Americas' );
INSERT INTO REGION VALUES
       ( 'Asia' );
INSERT INTO REGION VALUES
       ( 'Middle East and Africa' );
INSERT INTO REGION VALUES
       ( 'Australia and Oceania' );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
INSERT INTO COUNTRY VALUES
        ( 'Italy'
       	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Japan'
	, 'Asia' );
INSERT INTO COUNTRY VALUES
        ( 'United States of America'
	, 'Americas' );
INSERT INTO COUNTRY VALUES
        ( 'Canada'
        , 'Americas' );
INSERT INTO COUNTRY VALUES
        ( 'China'
	, 'Asia' );
INSERT INTO COUNTRY VALUES
        ( 'India'
        , 'Asia' );
INSERT INTO COUNTRY VALUES
        ( 'Australia'
	, 'Australia and Oceania' );
INSERT INTO COUNTRY VALUES
        ( 'New Zealand'
	, 'Australia and Oceania' );
INSERT INTO COUNTRY VALUES
        ( 'Fiji'
	, 'Australia and Oceania' );
INSERT INTO COUNTRY VALUES
        ( 'Vanuatu'
        , 'Australia and Oceania' ); 
INSERT INTO COUNTRY VALUES
        ( 'Zimbabwe'
	, 'Middle East and Africa' );
INSERT INTO COUNTRY VALUES
        ( 'Singapore'
	, 'Asia' );
INSERT INTO COUNTRY VALUES
        ( 'United Kingdom'
	, 'Europe');
INSERT INTO COUNTRY VALUES
        ( 'France'
	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Germany'
	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Zambia'
	, 'Middle East and Africa' );
INSERT INTO COUNTRY VALUES
        ( 'Egypt'
	, 'Middle East and Africa' );
INSERT INTO COUNTRY VALUES
       	( 'Brazil'
	, 'Americas');
INSERT INTO COUNTRY VALUES
        ( 'Switzerland'
	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Netherlands'
	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Mexico'
        , 'Americas' );
INSERT INTO COUNTRY VALUES
        ( 'Kuwait'
        , 'Middle East and Africa' );
INSERT INTO COUNTRY VALUES
        ( 'Israel'
        , 'Middle East and Africa' );
INSERT INTO COUNTRY VALUES
        ( 'Denmark'
        , 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Nigeria'
	, 'Middle East and Africa' );
INSERT INTO COUNTRY VALUES
        ( 'Argentina'
	, 'Americas' );
INSERT INTO COUNTRY VALUES
        ( 'Belgium'
	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Lithuania'
	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Latvia'
	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Slovenia'
	, 'Europe' );
INSERT INTO COUNTRY VALUES
        ( 'Slovakia'
	, 'Europe' );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
INSERT INTO LOCATION VALUES
        ( '1297 Via Cola di Rie'
	, '00989'
	, 'Roma'
	, NULL
	, 'Italy' );
INSERT INTO LOCATION VALUES
        ( '93091 Calle della Testa'
	, '10934'
	, 'Venice'
	, NULL
	, 'Italy' );
INSERT INTO LOCATION VALUES
        ( '2017 Shinjuku-ku'
	, '1689'
	, 'Tokyo'
	, 'Tokyo Prefecture'
	, 'Japan' );
INSERT INTO LOCATION VALUES
        ( '9450 Kamiya-cho'
	, '6823'
	, 'Hiroshima'
	, NULL
	, 'Japan' );
INSERT INTO LOCATION VALUES
        ( '2014 Jabberwocky Rd'
	, '26192'
	, 'Southlake'
	, 'Texas'
	, 'United States of America' );
INSERT INTO LOCATION VALUES
         ( '2011 Interiors Blvd'
	, '99236'
	, 'South San Francisco'
	, 'California'
	, 'United States of America' );
INSERT INTO LOCATION VALUES
        ( '2007 Zagora St'
	, '50090'
	, 'South Brunswick'
	, 'New Jersey'
	, 'United States of America' );
INSERT INTO LOCATION VALUES
        ( '2004 Charade Rd'
	, '98199'
	, 'Seattle'
	, 'Washington'
	, 'United States of America' );
INSERT INTO LOCATION VALUES
        ( '147 Spadina Ave'
	, 'M5V 2L7'
        , 'Toronto'
        , 'Ontario'
	, 'Canada' );
INSERT INTO LOCATION VALUES
        ( '6092 Boxwood St'
	, 'YSW 9T2'
	, 'Whitehorse'
	, 'Yukon'
	, 'Canada' );
INSERT INTO LOCATION VALUES
        ( '40-5-12 Laogianggen'
	, '190518'
	, 'Beijing'
	, NULL
	, 'China' );
INSERT INTO LOCATION VALUES
        ( '1298 Vileparle (E)'
	, '490231'
	, 'Bombay'
	, 'Maharashtra'
	, 'India' );
INSERT INTO LOCATION VALUES
        ( '12-98 Victoria Street'
	, '2901'
	, 'Sydney'
	, 'New South Wales'
	, 'Australia' );
INSERT INTO LOCATION VALUES
        ( '198 Clementi North'
	, '540198'
	, 'Singapore'
	, 'Clementi'
	, 'Singapore' );
INSERT INTO LOCATION VALUES
        ( '8204 Arthur St'
	, 'AB2 7RT'
	, 'London'
	, NULL
	, 'United Kingdom' );
INSERT INTO LOCATION VALUES
        ( 'Magdalen Centre The Oxford Science Park'
	, 'OX9 9ZB'
	, 'Oxford'
	, 'Oxford'
	, 'United Kingdom' );
INSERT INTO LOCATION VALUES
        ( '9702 Chester Road'
	, '09629850293'
	, 'Stretford'
	, 'Manchester'
	, 'United Kingdom' );
INSERT INTO LOCATION VALUES
        ( 'Schwanthalerstr. 7031'
	, '80925'
	, 'Munich'
	, 'Bavaria'
	, 'Germany' );
INSERT INTO LOCATION VALUES
        ( 'Rua Frei Caneca 1360 '
	, '01307-002'
	, 'Sao Paulo'
	, NULL
	, 'Brazil' );
INSERT INTO LOCATION VALUES
        ( '20 Rue des Corps-Saints'
	, '1730'
	, 'Geneva'
	, NULL
	, 'Switzerland' );
INSERT INTO LOCATION VALUES
        ( 'Murtenstrasse 921'
	, '3095'
	, 'Bern'
	, 'BE'
	, 'Switzerland' );
INSERT INTO LOCATION VALUES
        ( 'Pieter Breughelstraat 837'
	, '3029SK'
	, 'Utrecht'
	, NULL
	, 'Netherlands' );
INSERT INTO LOCATION VALUES
        ( 'Mariano Escobedo 9991'
	, '11932'
	, 'Mexico City'
	, 'Distrito Federal'
	, 'Mexico');
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
ALTER TABLE DEPARTMENT DROP FOREIGN KEY DEPARTMENT_FK2;

INSERT INTO DEPARTMENT VALUES
        ( 'Administration'
	, '12-98 Victoria Street'
	, '2901'
	, 'Sydney'
	, 'Australia'
	, 200);
INSERT INTO DEPARTMENT VALUES 
	( 'Marketing'
	, '1298 Vileparle (E)'
	, '490231'
	, 'Bombay'
	, 'India'
	, 201 );
INSERT INTO DEPARTMENT VALUES 
	( 'Purchasing'
	, '40-5-12 Laogianggen'
	, '190518'
	, 'Beijing'
	, 'China'
	, 114 );
INSERT INTO DEPARTMENT VALUES 
	( 'Human Resources'
	, '9450 Kamiya-cho'
	, '6823'
	, 'Hiroshima'
	, 'Japan'
	, 203 );
INSERT INTO DEPARTMENT VALUES 
	( 'Shipping'
	, '2011 Interiors Blvd'
	, '99236'
	, 'South San Francisco'
	, 'United States of America'
	, 120 );
INSERT INTO DEPARTMENT VALUES 
	( 'Information Technology'
	, '93091 Calle della Testa'
	, '10934'
	, 'Venice'
	, 'Italy'
	, 104 );
INSERT INTO DEPARTMENT VALUES 
	( 'Public Relations'
	, '93091 Calle della Testa'
	, '10934'
	, 'Venice'
	, 'Italy'
	, 204 );
INSERT INTO DEPARTMENT VALUES 
	( 'Sales'
	, '20 Rue des Corps-Saints'
	, '1730'
	, 'Geneva'
	, 'Switzerland'
	, 145 );
INSERT INTO DEPARTMENT VALUES 
	( 'Executive'
	, 'Mariano Escobedo 9991'
	, '11932'
	, 'Mexico City'
	, 'Mexico'
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Finance'
	, '6092 Boxwood St'
	, 'YSW 9T2'
	, 'Whitehorse'
	, 'Canada'
	, 108 );
INSERT INTO DEPARTMENT VALUES 
	( 'Accounting'
	, '20 Rue des Corps-Saints'
	, '1730'
	, 'Geneva'
	, 'Switzerland'
	, 109 );
INSERT INTO DEPARTMENT VALUES 
	( 'Treasury'
	, '198 Clementi North'
	, '540198'
	, 'Singapore'
	, 'Singapore'
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Corporate Tax'
	, '2011 Interiors Blvd'
	, '99236'
	, 'South San Francisco'
	, 'United States of America'
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Control And Credit'
	, '2014 Jabberwocky Rd'
	, '26192'
	, 'Southlake'
	, 'United States of America'
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Shareholder Services'
	, 'Mariano Escobedo 9991'
	, '11932'
	, 'Mexico City'
	, 'Mexico'
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Benefits'
	, '1298 Vileparle (E)'
	, '490231'
	, 'Bombay'
	, 'India'
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Manufacturing'
	, '40-5-12 Laogianggen'
	, '190518'
	, 'Beijing'
	, 'China'
	, 104 );
INSERT INTO DEPARTMENT VALUES 
	( 'Construction'
	, '40-5-12 Laogianggen'
	, '190518'
	, 'Beijing'
	, 'China'
	, 104 );
INSERT INTO DEPARTMENT VALUES 
	( 'Contracting'
	, '2017 Shinjuku-ku'
	, '1689'
	, 'Tokyo'
	, 'Japan' 
	, 105 );
INSERT INTO DEPARTMENT VALUES 
	( 'Operations'
	, '8204 Arthur St'
	, 'AB2 7RT'
	, 'London'
	, 'United Kingdom' 
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Government Sales'
	, '93091 Calle della Testa'
	, '10934'
	, 'Venice'
	, 'Italy'
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Retail Sales'
	, '93091 Calle della Testa'
	, '10934'
	, 'Venice'
	, 'Italy'
	, 145 );
INSERT INTO DEPARTMENT VALUES 
	( 'Recruiting'
	,'198 Clementi North'
	, '540198'
	, 'Singapore'
	, 'Singapore'
	, 100 );
INSERT INTO DEPARTMENT VALUES 
	( 'Payroll'
	, '12-98 Victoria Street'
	, '2901'
	, 'Sydney'
	, 'Australia'
        , 112 );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
INSERT INTO JOB VALUES
        ( 'President'
	, 20000
	, 40000 );
INSERT INTO JOB VALUES
        ( 'Administration Vice President'
	, 15000
	, 30000 );
INSERT INTO JOB VALUES
        ( 'Administration Assistant'
	, 3000
	, 6000 );
INSERT INTO JOB VALUES
        ( 'Finance Manager'
	, 8200
	, 16000 );
INSERT INTO JOB VALUES
        ( 'Accountant'
	, 4200
	, 9000 );
INSERT INTO JOB VALUES
        ( 'Accounting Manager'
	, 8200
	, 16000 );
INSERT INTO JOB VALUES
        ( 'Public Accountant'
	, 4200
	, 9000 );
INSERT INTO JOB VALUES 
	( 'Sales Manager'
	, 10000
	, 20000 );
INSERT INTO JOB VALUES 
	( 'Sales Representative'
	, 6000
	, 12000 );
INSERT INTO JOB VALUES 
	( 'Purchasing Manager'
	, 8000
	, 15000 );
INSERT INTO JOB VALUES 
	( 'Purchasing Clerk'
	, 2500
	, 5500 );
INSERT INTO JOB VALUES 
	( 'Stock Manager'
	, 5500
	, 8500 );
INSERT INTO JOB VALUES 
	( 'Stock Clerk'
	, 2000
	, 5000 );
INSERT INTO JOB VALUES 
	( 'Shipping Clerk'
	, 2500
	, 5500 );
INSERT INTO JOB VALUES 
	( 'Programmer'
	, 4000
	, 10000 );
INSERT INTO JOB VALUES 
	( 'Marketing Manager'
	, 9000
	, 15000 );
INSERT INTO JOB VALUES
        ( 'Marketing Representative'
	, 4000
	, 9000 );
INSERT INTO JOB VALUES
       	( 'Human Resources Representative'
	, 4000
	, 9000 );
INSERT INTO JOB VALUES
        ( 'Public Relations Representative'
	, 4500
	, 10500 );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
INSERT INTO EMPLOYEE VALUES 
        ( 100
        , 'Steven'
        , 'King'
        , 'SKING'
        , '515.123.4567'
        , STR_TO_DATE('17-06-1987', '%d-%m-%Y')
        , 'President'
        , 24000
        , NULL
        , NULL
        , 'Executive'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 101
        , 'Neena'
        , 'Kochhar'
        , 'NKOCHHAR'
        , '515.123.4568'
        , STR_TO_DATE('21-09-1998', '%d-%m-%Y')
        , 'Administration Vice President'
        , 17000
        , NULL
        , 100
        , 'Executive'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 102
        , 'Lex'
        , 'De Haan'
        , 'LDEHAAN'
        , '515.123.4569'
        , STR_TO_DATE('13-01-1999', '%d-%m-%Y')
        , 'Administration Vice President'
        , 17000
        , NULL
        , 100
        , 'Executive'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 103
        , 'Alexander'
        , 'Hunold'
        , 'AHUNOLD'
        , '590.423.4567'
        , STR_TO_DATE('03-01-1990', '%d-%m-%Y')
        , 'Programmer'
        , 9000
        , NULL
        , 102
        , 'Information Technology'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 104
        , 'Bruce'
        , 'Ernst'
        , 'BERNST'
        , '590.423.4568'
        , STR_TO_DATE('21-05-1991', '%d-%m-%Y')
        , 'Programmer'
        , 6000
        , NULL
        , 103
        , 'Information Technology'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 105
        , 'David'
        , 'Austin'
        , 'DAUSTIN'
        , '590.423.4569'
        , STR_TO_DATE('25-06-1997', '%d-%m-%Y')
        , 'Programmer'
        , 4800
        , NULL
        , 103
        , 'Information Technology'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 106
        , 'Valli'
        , 'Pataballa'
        , 'VPATABAL'
        , '590.423.4560'
        , STR_TO_DATE('05-02-1998', '%d-%m-%Y')
        , 'Programmer'
        , 4800
        , NULL
        , 103
        , 'Information Technology'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 107
        , 'Diana'
        , 'Lorentz'
        , 'DLORENTZ'
        , '590.423.5567'
        , STR_TO_DATE('07-02-1999', '%d-%m-%Y')
        , 'Programmer'
        , 4200
        , NULL
        , 103
        , 'Information Technology'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 108
        , 'Nancy'
        , 'Greenberg'
        , 'NGREENBE'
        , '515.124.4569'
        , STR_TO_DATE('17-09-1994', '%d-%m-%Y')
        , 'Finance Manager'
        , 12000
        , NULL
        , 101
        , 'Finance'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 109
        , 'Daniel'
        , 'Faviet'
        , 'DFAVIET'
        , '515.124.4169'
        , STR_TO_DATE('16-10-1999', '%d-%m-%Y')
        , 'Accounting Manager'
        , 9000
        , NULL
        , 108
        , 'Accounting'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 110
        , 'John'
        , 'Chen'
        , 'JCHEN'
        , '515.124.4269'
        , STR_TO_DATE('05-01-2000', '%d-%m-%Y')
        , 'Accounting Manager'
        , 8200
        , NULL
        , 108
        , 'Accounting'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 111
        , 'Ismael'
        , 'Sciarra'
        , 'ISCIARRA'
        , '515.124.4369'
        , STR_TO_DATE('31-12-1999', '%d-%m-%Y')
        , 'Accounting Manager'
        , 7700
        , NULL
        , 108
        , 'Accounting'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 112
        , 'Jose Manuel'
        , 'Urman'
        , 'JMURMAN'
        , '515.124.4469'
        , STR_TO_DATE('07-03-1998', '%d-%m-%Y')
        , 'Accounting Manager'
        , 7800
        , NULL
        , 108
        , 'Accounting'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 113
        , 'Luis'
        , 'Popp'
        , 'LPOPP'
        , '515.124.4567'
        , STR_TO_DATE('07-12-1999', '%d-%m-%Y')
        , 'Accounting Manager'
        , 6900
        , NULL
        , 108
        , 'Accounting'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 114
        , 'Den'
        , 'Raphaely'
        , 'DRAPHEAL'
        , '515.127.4561'
        , STR_TO_DATE('01-01-2000', '%d-%m-%Y')
        , 'Purchasing Manager'
        , 11000
        , NULL
        , 100
        , 'Purchasing'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 115
        , 'Alexander'
        , 'Khoo'
        , 'AKHOO'
        , '515.127.4562'
        , STR_TO_DATE('18-05-1995', '%d-%m-%Y')
        , 'Purchasing Clerk'
        , 3100
        , NULL
        , 114
        , 'Purchasing'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 116
        , 'Shelli'
        , 'Baida'
        , 'SBAIDA'
        , '515.127.4563'
        , STR_TO_DATE('24-12-1997', '%d-%m-%Y')
        , 'Purchasing Clerk'
        , 2900
        , NULL
        , 114
        , 'Purchasing'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 117
        , 'Sigal'
        , 'Tobias'
        , 'STOBIAS'
        , '515.127.4564'
        , STR_TO_DATE('24-07-1997', '%d-%m-%Y')
        , 'Purchasing Clerk'
        , 2800
        , NULL
        , 114
        , 'Purchasing'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 118
        , 'Guy'
        , 'Himuro'
        , 'GHIMURO'
        , '515.127.4565'
        , STR_TO_DATE('15-11-1998', '%d-%m-%Y')
        , 'Purchasing Clerk'
        , 2600
        , NULL
        , 114
        , 'Purchasing'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 119
        , 'Karen'
        , 'Colmenares'
        , 'KCOLMENA'
        , '515.127.4566'
        , STR_TO_DATE('10-08-1999', '%d-%m-%Y')
        , 'Purchasing Clerk'
        , 2500
        , NULL
        , 114
        , 'Purchasing'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 120
        , 'Matthew'
        , 'Weiss'
        , 'MWEISS'
        , '650.123.1234'
        , STR_TO_DATE('18-07-1996', '%d-%m-%Y')
        , 'Stock Manager'
        , 8000
        , NULL
        , 100
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 121
        , 'Adam'
        , 'Fripp'
        , 'AFRIPP'
        , '650.123.2234'
        , STR_TO_DATE('10-04-1997', '%d-%m-%Y')
        , 'Stock Manager'
        , 8200
        , NULL
        , 100
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 122
        , 'Payam'
        , 'Kaufling'
        , 'PKAUFLIN'
        , '650.123.3234'
        , STR_TO_DATE('01-05-1995', '%d-%m-%Y')
        , 'Stock Manager'
        , 7900
        , NULL
        , 100
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 123
        , 'Shanta'
        , 'Vollman'
        , 'SVOLLMAN'
        , '650.123.4234'
        , STR_TO_DATE('10-10-1997', '%d-%m-%Y')
        , 'Stock Manager'
        , 6500
        , NULL
        , 100
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 124
        , 'Kevin'
        , 'Mourgos'
        , 'KMOURGOS'
        , '650.123.5234'
        , STR_TO_DATE('16-11-1999', '%d-%m-%Y')
        , 'Stock Manager'
        , 5800
        , NULL
        , 100
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 125
        , 'Julia'
        , 'Nayer'
        , 'JNAYER'
        , '650.124.1214'
        , STR_TO_DATE('16-07-1997', '%d-%m-%Y')
        , 'Stock Clerk'
        , 3200
        , NULL
        , 120
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 126
        , 'Irene'
        , 'Mikkilineni'
        , 'IMIKKILI'
        , '650.124.1224'
        , STR_TO_DATE('28-09-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2700
        , NULL
        , 120
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 127
        , 'James'
        , 'Landry'
        , 'JLANDRY'
        , '650.124.1334'
        , STR_TO_DATE('14-01-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2400
        , NULL
        , 120
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 128
        , 'Steven'
        , 'Markle'
        , 'SMARKLE'
        , '650.124.1434'
        , STR_TO_DATE('08-03-2000', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2200
        , NULL
        , 120
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 129
        , 'Laura'
        , 'Bissot'
        , 'LBISSOT'
        , '650.124.5234'
        , STR_TO_DATE('20-08-1997', '%d-%m-%Y')
        , 'Stock Clerk'
        , 3300
        , NULL
        , 121
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 130
        , 'Mozhe'
        , 'Atkinson'
        , 'MATKINSO'
        , '650.124.6234'
        , STR_TO_DATE('30-10-1997', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2800
        , NULL
        , 121
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 131
        , 'James'
        , 'Marlow'
        , 'JAMRLOW'
        , '650.124.7234'
        , STR_TO_DATE('16-02-1997', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2500
        , NULL
        , 121
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 132
        , 'TJ'
        , 'Olson'
        , 'TJOLSON'
        , '650.124.8234'
        , STR_TO_DATE('10-04-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2100
        , NULL
        , 121
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 133
        , 'Jason'
        , 'Mallin'
        , 'JMALLIN'
        , '650.127.1934'
        , STR_TO_DATE('14-06-1996', '%d-%m-%Y')
        , 'Stock Clerk'
        , 3300
        , NULL
        , 122
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 134
        , 'Michael'
        , 'Rogers'
        , 'MROGERS'
        , '650.127.1834'
        , STR_TO_DATE('26-08-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2900
        , NULL
        , 122
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 135
        , 'Ki'
        , 'Gee'
        , 'KGEE'
        , '650.127.1734'
        , STR_TO_DATE('12-12-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2400
        , NULL
        , 122
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 136
        , 'Hazel'
        , 'Philtanker'
        , 'HPHILTAN'
        , '650.127.1634'
        , STR_TO_DATE('06-02-2000', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2200
        , NULL
        , 122
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 137
        , 'Renske'
        , 'Ladwig'
        , 'RLADWIG'
        , '650.121.1234'
        , STR_TO_DATE('14-07-1995', '%d-%m-%Y')
        , 'Stock Clerk'
        , 3600
        , NULL
        , 123
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 138
        , 'Stephen'
        , 'Stiles'
        , 'SSTILES'
        , '650.121.2034'
        , STR_TO_DATE('26-10-1997', '%d-%m-%Y')
        , 'Stock Clerk'
        , 3200
        , NULL
        , 123
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 139
        , 'John'
        , 'Seo'
        , 'JSEO'
        , '650.121.2019'
        , STR_TO_DATE('12-02-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2700
        , NULL
        , 123
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 140
        , 'Joshua'
        , 'Patel'
        , 'JPATEL'
        , '650.121.1834'
        , STR_TO_DATE('06-04-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2500
        , NULL
        , 123
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 141
        , 'Trenna'
        , 'Rajs'
        , 'TRAJS'
        , '650.121.8009'
        , STR_TO_DATE('17-10-1995', '%d-%m-%Y')
        , 'Stock Clerk'
        , 3500
        , NULL
        , 124
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 142
        , 'Curtis'
        , 'Davies'
        , 'CDAVIES'
        , '650.121.2994'
        , STR_TO_DATE('29-01-1997', '%d-%m-%Y')
        , 'Stock Clerk'
        , 3100
        , NULL
        , 124
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 143
        , 'Randall'
        , 'Matos'
        , 'RMATOS'
        , '650.121.2874'
        , STR_TO_DATE('15-03-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2600
        , NULL
        , 124
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 144
        , 'Peter'
        , 'Vargas'
        , 'PVARGAS'
        , '650.121.2004'
        , STR_TO_DATE('09-07-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 2500
        , NULL
        , 124
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 145
        , 'John'
        , 'Russell'
        , 'JRUSSEL'
        , '011.44.1344.429268'
        , STR_TO_DATE('01-10-1996', '%d-%m-%Y')
        , 'Sales Manager'
        , 14000
        , .4
        , 100
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 146
        , 'Karen'
        , 'Partners'
        , 'KPARTNER'
        , '011.44.1344.467268'
        , STR_TO_DATE('05-01-1997', '%d-%m-%Y')
        , 'Sales Manager'
        , 13500
        , .3
        , 100
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 147
        , 'Alberto'
        , 'Errazuriz'
        , 'AERRAZUR'
        , '011.44.1344.429278'
        , STR_TO_DATE('10-03-1997', '%d-%m-%Y')
        , 'Sales Manager'
        , 12000
        , .3
        , 100
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 148
        , 'Gerald'
        , 'Cambrault'
        , 'GCAMBRAU'
        , '011.44.1344.619268'
        , STR_TO_DATE('15-10-1999', '%d-%m-%Y')
        ,'Sales Manager'
        , 11000
        , .3
        , 100
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 149
        , 'Eleni'
        , 'Zlotkey'
        , 'EZLOTKEY'
        , '011.44.1344.429018'
        , STR_TO_DATE('29-01-2000', '%d-%m-%Y')
        , 'Sales Manager'
        , 10500
        , .2
        , 100
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 150
        , 'Peter'
        , 'Tucker'
        , 'PTUCKER'
        , '011.44.1344.129268'
        , STR_TO_DATE('30-01-1997', '%d-%m-%Y')
        , 'Sales Representative'
        , 10000
        , .3
        , 145
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 151
        , 'David'
        , 'Bernstein'
        , 'DBERNSTE'
        , '011.44.1344.345268'
        , STR_TO_DATE('24-03-1997', '%d-%m-%Y')
        , 'Sales Representative'
        , 9500
        , .25
        , 145
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 152
        , 'Peter'
        , 'Hall'
        , 'PHALL'
        , '011.44.1344.478968'
        , STR_TO_DATE('20-08-1997', '%d-%m-%Y')
        , 'Sales Representative'
        , 9000
        , .25
        , 145
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 153
        , 'Christopher'
        , 'Olsen'
        , 'COLSEN'
        , '011.44.1344.498718'
        , STR_TO_DATE('30-03-1998', '%d-%m-%Y')
        , 'Sales Representative'
        , 8000
        , .2
        , 145
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 154
        , 'Nanette'
        , 'Cambrault'
        , 'NCAMBRAU'
        , '011.44.1344.987668'
        , STR_TO_DATE('09-12-1998', '%d-%m-%Y')
        , 'Sales Representative'
        , 7500
        , .2
        , 145
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 155
        , 'Oliver'
        , 'Tuvault'
        , 'OTUVAULT'
        , '011.44.1344.486508'
        , STR_TO_DATE('23-11-1999', '%d-%m-%Y')
        , 'Sales Representative'
        , 7000
        , .15
        , 145
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 156
        , 'Janette'
        , 'King'
        , 'JKING'
        , '011.44.1345.429268'
        , STR_TO_DATE('30-01-1996', '%d-%m-%Y')
        , 'Sales Representative'
        , 10000
        , .35
        , 146
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 157
        , 'Patrick'
        , 'Sully'
        , 'PSULLY'
        , '011.44.1345.929268'
        , STR_TO_DATE('04-03-1996', '%d-%m-%Y')
        , 'Sales Representative'
        , 9500
        , .35
        , 146
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 158
        , 'Allan'
        , 'McEwen'
        , 'AMCEWEN'
        , '011.44.1345.829268'
        , STR_TO_DATE('01-08-1996', '%d-%m-%Y')
        , 'Sales Representative'
        , 9000
        , .35
        , 146
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 159
        , 'Lindsey'
        , 'Smith'
        , 'LSMITH'
        , '011.44.1345.729268'
        , STR_TO_DATE('10-03-1997', '%d-%m-%Y')
        , 'Sales Representative'
        , 8000
        , .3
        , 146
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 160
        , 'Louise'
        , 'Doran'
        , 'LDORAN'
        , '011.44.1345.629268'
        , STR_TO_DATE('01-01-1998', '%d-%m-%Y')
        , 'Sales Representative'
        , 7500
        , .3
        , 146
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 161
        , 'Sarath'
        , 'Sewall'
        , 'SSEWALL'
        , '011.44.1345.529268'
        , STR_TO_DATE('01-12-1998', '%d-%m-%Y')
        , 'Sales Representative'
        , 7000
        , .25
        , 146
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 162
        , 'Clara'
        , 'Vishney'
        , 'CVISHNEY'
        , '011.44.1346.129268'
        , STR_TO_DATE('11-11-1997', '%d-%m-%Y')
        , 'Sales Representative'
        , 10500
        , .25
        , 147
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 163
        , 'Danielle'
        , 'Greene'
        , 'DGREENE'
        , '011.44.1346.229268'
        , STR_TO_DATE('19-03-1999', '%d-%m-%Y')
        , 'Sales Representative'
        , 9500
        , .15
        , 147
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 164
        , 'Mattea'
        , 'Marvins'
        , 'MMARVINS'
        , '011.44.1346.329268'
        , STR_TO_DATE('24-01-2000', '%d-%m-%Y')
        , 'Sales Representative'
        , 7200
        , .10
        , 147
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 165
        , 'David'
        , 'Lee'
        , 'DLEE'
        , '011.44.1346.529268'
        , STR_TO_DATE('23-02-2000', '%d-%m-%Y')
        , 'Sales Representative'
        , 6800
        , .1
        , 147
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 166
        , 'Sundar'
        , 'Ande'
        , 'SANDE'
        , '011.44.1346.629268'
        , STR_TO_DATE('24-03-2000', '%d-%m-%Y')
        , 'Sales Representative'
        , 6400
        , .10
        , 147
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 167
        , 'Amit'
        , 'Banda'
        , 'ABANDA'
        , '011.44.1346.729268'
        , STR_TO_DATE('21-04-2000', '%d-%m-%Y')
        , 'Sales Representative'
        , 6200
        , .10
        , 147
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 168
        , 'Lisa'
        , 'Ozer'
        , 'LOZER'
        , '011.44.1343.929268'
        , STR_TO_DATE('11-03-1997', '%d-%m-%Y')
        , 'Sales Representative'
        , 11500
        , .25
        , 148
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 169  
        , 'Harrison'
        , 'Bloom'
        , 'HBLOOM'
        , '011.44.1343.829268'
        , STR_TO_DATE('23-03-1998', '%d-%m-%Y')
        , 'Sales Representative'
        , 10000
        , .20
        , 148
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 170
        , 'Tayler'
        , 'Fox'
        , 'TFOX'
        , '011.44.1343.729268'
        , STR_TO_DATE('24-01-1998', '%d-%m-%Y')
        , 'Sales Representative'
        , 9600
        , .20
        , 148
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 171
        , 'William'
        , 'Smith'
        , 'WSMITH'
        , '011.44.1343.629268'
        , STR_TO_DATE('23-02-1999', '%d-%m-%Y')
        , 'Sales Representative'
        , 7400
        , .15
        , 148
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 172
        , 'Elizabeth'
        , 'Bates'
        , 'EBATES'
        , '011.44.1343.529268'
        , STR_TO_DATE('24-03-1999', '%d-%m-%Y')
        , 'Sales Representative'
        , 7300
        , .15
        , 148
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 173
        , 'Sundita'
        , 'Kumar'
        , 'SKUMAR'
        , '011.44.1343.329268'
        , STR_TO_DATE('21-04-2000', '%d-%m-%Y')
        , 'Sales Representative'
        , 6100
        , .10
        , 148
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 174
        , 'Ellen'
        , 'Abel'
        , 'EABEL'
        , '011.44.1644.429267'
        , STR_TO_DATE('11-05-1996', '%d-%m-%Y')
        , 'Sales Representative'
        , 11000
        , .30
        , 149
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 175
        , 'Alyssa'
        , 'Hutton'
        , 'AHUTTON'
        , '011.44.1644.429266'
        , STR_TO_DATE('19-03-1997', '%d-%m-%Y')
        , 'Sales Representative'
        , 8800
        , .25
        , 149
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 176
        , 'Jonathon'
        , 'Taylor'
        , 'JTAYLOR'
        , '011.44.1644.429265'
        , STR_TO_DATE('24-03-2000', '%d-%m-%Y')
        , 'Sales Manager'
        , 8600
        , .20
        , 149
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 177
        , 'Jack'
        , 'Livingston'
        , 'JLIVINGS'
        , '011.44.1644.429264'
        , STR_TO_DATE('23-04-1998', '%d-%m-%Y')
        , 'Sales Representative'
        , 8400
        , .20
        , 149
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 178
        , 'Kimberely'
        , 'Grant'
        , 'KGRANT'
        , '011.44.1644.429263'
        , STR_TO_DATE('24-05-1999', '%d-%m-%Y')
        , 'Sales Representative'
        , 7000
        , .15
        , 149
        , NULL
        );

INSERT INTO EMPLOYEE VALUES 
        ( 179
        , 'Charles'
        , 'Johnson'
        , 'CJOHNSON'
        , '011.44.1644.429262'
        , STR_TO_DATE('04-01-2000', '%d-%m-%Y')
        , 'Sales Representative'
        , 6200
        , .10
        , 149
        , 'Sales'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 180
        , 'Winston'
        , 'Taylor'
        , 'WTAYLOR'
        , '650.507.9876'
        , STR_TO_DATE('24-01-1998', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3200
        , NULL
        , 120
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 181
        , 'Jean'
        , 'Fleaur'
        , 'JFLEAUR'
        , '650.507.9877'
        , STR_TO_DATE('23-02-1998', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3100
        , NULL
        , 120
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 182
        , 'Martha'
        , 'Sullivan'
        , 'MSULLIVA'
        , '650.507.9878'
        , STR_TO_DATE('21-06-1999', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 2500
        , NULL
        , 120
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 183
        , 'Girard'
        , 'Geoni'
        , 'GGEONI'
        , '650.507.9879'
        , STR_TO_DATE('03-02-2000', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 2800
        , NULL
        , 120
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 184
        , 'Nandita'
        , 'Sarchand'
        , 'NSARCHAN'
        , '650.509.1876'
        , STR_TO_DATE('27-01-1996', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 4200
        , NULL
        , 121
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 185
        , 'Alexis'
        , 'Bull'
        , 'ABULL'
        , '650.509.2876'
        , STR_TO_DATE('20-02-1997', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 4100
        , NULL
        , 121
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 186
        , 'Julia'
        , 'Dellinger'
        , 'JDELLING'
        , '650.509.3876'
        , STR_TO_DATE('24-06-1998', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3400
        , NULL
        , 121
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 187
        , 'Anthony'
        , 'Cabrio'
        , 'ACABRIO'
        , '650.509.4876'
        , STR_TO_DATE('07-02-1999', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3000
        , NULL
        , 121
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 188
        , 'Kelly'
        , 'Chung'
        , 'KCHUNG'
        , '650.505.1876'
        , STR_TO_DATE('14-06-1997', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3800
        , NULL
        , 122
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 189
        , 'Jennifer'
        , 'Dilly'
        , 'JDILLY'
        , '650.505.2876'
        , STR_TO_DATE('13-08-1997', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3600
        , NULL
        , 122
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 190
        , 'Timothy'
        , 'Gates'
        , 'TGATES'
        , '650.505.3876'
        , STR_TO_DATE('11-07-1998', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 2900
        , NULL
        , 122
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 191
        , 'Randall'
        , 'Perkins'
        , 'RPERKINS'
        , '650.505.4876'
        , STR_TO_DATE('19-12-1999', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 2500
        , NULL
        , 122
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 192
        , 'Sarah'
        , 'Bell'
        , 'SBELL'
        , '650.501.1876'
        , STR_TO_DATE('04-02-1996', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 4000
        , NULL
        , 123
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 193
        , 'Britney'
        , 'Everett'
        , 'BEVERETT'
        , '650.501.2876'
        , STR_TO_DATE('03-03-1997', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3900
        , NULL
        , 123
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 194
        , 'Samuel'
        , 'McCain'
        , 'SMCCAIN'
        , '650.501.3876'
        , STR_TO_DATE('01-07-1998', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3200
        , NULL
        , 123
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 195
        , 'Vance'
        , 'Jones'
        , 'VJONES'
        , '650.501.4876'
        , STR_TO_DATE('17-03-1999', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 2800
        , NULL
        , 123
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 196
        , 'Alana'
        , 'Walsh'
        , 'AWALSH'
        , '650.507.9811'
        , STR_TO_DATE('24-04-1998', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3100
        , NULL
        , 124
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 197
        , 'Kevin'
        , 'Feeney'
        , 'KFEENEY'
        , '650.507.9822'
        , STR_TO_DATE('23-05-1998', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 3000
        , NULL
        , 124
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 198
        , 'Donald'
        , 'OConnell'
        , 'DOCONNEL'
        , '650.507.9833'
        , STR_TO_DATE('21-06-1999', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 2600
        , NULL
        , 124
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 199
        , 'Douglas'
        , 'Grant'
        , 'DGRANT'
        , '650.507.9844'
        , STR_TO_DATE('13-01-2000', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 2600
        , NULL
        , 124
        , 'Shipping'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 200
        , 'Jennifer'
        , 'Whalen'
        , 'JWHALEN'
        , '515.123.4444'
        , STR_TO_DATE('01-01-1999', '%d-%m-%Y')
        , 'Administration Assistant'
        , 4400
        , NULL
        , 101
        , 'Administration'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 201
        , 'Michael'
        , 'Hartstein'
        , 'MHARTSTE'
        , '515.123.5555'
        , STR_TO_DATE('20-12-1999', '%d-%m-%Y')
        , 'Marketing Manager'
        , 13000
        , NULL
        , 100
        , 'Marketing'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 202
        , 'Pat'
        , 'Fay'
        , 'PFAY'
        , '603.123.6666'
        , STR_TO_DATE('17-08-1997', '%d-%m-%Y')
        , 'Marketing Representative'
        , 6000
        , NULL
        , 201
        , 'Marketing'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 203
        , 'Susan'
        , 'Mavris'
        , 'SMAVRIS'
        , '515.123.7777'
        , STR_TO_DATE('07-06-1994', '%d-%m-%Y')
        , 'Human Resources Representative'
        , 6500
        , NULL
        , 101
        , 'Human Resources'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 204
        , 'Hermann'
        , 'Baer'
        , 'HBAER'
        , '515.123.8888'
        , STR_TO_DATE('07-06-1994', '%d-%m-%Y')
        , 'Public Relations Representative'
        , 10000
        , NULL
        , 101
        , 'Public Relations'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 205
        , 'Shelley'
        , 'Higgins'
        , 'SHIGGINS'
        , '515.123.8080'
        , STR_TO_DATE('01-01-1999', '%d-%m-%Y')
        , 'Accounting Manager'
        , 12000
        , NULL
        , 101
        , 'Accounting'
        );

INSERT INTO EMPLOYEE VALUES 
        ( 206
        , 'William'
        , 'Gietz'
        , 'WGIETZ'
        , '515.123.8181'
        , STR_TO_DATE('07-06-1994', '%d-%m-%Y')
        , 'Accountant'
        , 8300
        , NULL
        , 105
        , 'Accounting'
        );

ALTER TABLE DEPARTMENT
ADD ( CONSTRAINT DEPARTMENT_FK2 FOREIGN KEY(manager_id)
      		  REFERENCES EMPLOYEE(employee_id) );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
INSERT INTO JOBHISTORY
VALUES ( 101
       , STR_TO_DATE('21-09-1989', '%d-%m-%Y')
       , STR_TO_DATE('27-10-1993', '%d-%m-%Y')
       , 'Accountant'
       , 'Accounting');

INSERT INTO JOBHISTORY
VALUES ( 101
       , STR_TO_DATE('28-10-1993', '%d-%m-%Y')
       , STR_TO_DATE('15-03-1997', '%d-%m-%Y')
       , 'Accounting Manager'
       , 'Accounting');

INSERT INTO JOBHISTORY
VALUES ( 102
       , STR_TO_DATE('13-01-1993', '%d-%m-%Y')
       , STR_TO_DATE('24-07-1998', '%d-%m-%Y')
       , 'Programmer'
       , 'Information Technology');

INSERT INTO JOBHISTORY
VALUES  ( 114
        , STR_TO_DATE('24-03-1998', '%d-%m-%Y')
        , STR_TO_DATE('31-12-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Purchasing'
        );

INSERT INTO JOBHISTORY
VALUES  ( 176
        , STR_TO_DATE('24-03-1998', '%d-%m-%Y')
        , STR_TO_DATE('31-12-1998', '%d-%m-%Y')
        , 'Programmer'
        , 'Information Technology'
        );

INSERT INTO JOBHISTORY
VALUES  ( 176
        , STR_TO_DATE('01-01-1999', '%d-%m-%Y')
        , STR_TO_DATE('31-12-1999', '%d-%m-%Y')
        , 'Sales Representative'
        , 'Sales'
        );

INSERT INTO JOBHISTORY
VALUES  ( 200
        , STR_TO_DATE('18-06-1993', '%d-%m-%Y')
        , STR_TO_DATE('31-12-1998', '%d-%m-%Y')
        , 'Accounting Manager'
        , 'Accounting'
        );

INSERT INTO JOBHISTORY
VALUES  ( 200
        , STR_TO_DATE('17-09-1987', '%d-%m-%Y')
        , STR_TO_DATE('17-06-1993', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY
VALUES ( 201
       , STR_TO_DATE('17-02-1996', '%d-%m-%Y')
       , STR_TO_DATE('19-12-1999', '%d-%m-%Y')
       , 'Programmer'
       , 'Information Technology');


INSERT INTO JOBHISTORY
VALUES  ( 205
	, STR_TO_DATE('01-07-1994', '%d-%m-%Y')
	, STR_TO_DATE('31-12-1998', '%d-%m-%Y')
	, 'Programmer'
	, 'Information Technology' );

INSERT INTO JOBHISTORY VALUES 
        ( 108
        , STR_TO_DATE('10-07-1991', '%d-%m-%Y')
        , STR_TO_DATE('16-08-1994', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 109
        , STR_TO_DATE('01-01-1992', '%d-%m-%Y')
	, STR_TO_DATE('15-08-1994', '%d-%m-%Y')
        , 'Accountant'
        , 'Accounting'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 110
        , STR_TO_DATE('01-01-1996', '%d-%m-%Y')
        , STR_TO_DATE('27-09-1997', '%d-%m-%Y')
        , 'Accountant'
        , 'Accounting'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 160
        , STR_TO_DATE('01-12-1994', '%d-%m-%Y')
	, STR_TO_DATE('10-11-1997', '%d-%m-%Y')
        , 'Shipping Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 161
        , STR_TO_DATE('03-11-1997', '%d-%m-%Y')
	, STR_TO_DATE('02-11-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 162
        , STR_TO_DATE('11-11-1990', '%d-%m-%Y')
	, STR_TO_DATE('11-11-1996', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 163
        , STR_TO_DATE('19-03-1997', '%d-%m-%Y')
	, STR_TO_DATE('11-11-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 164
        , STR_TO_DATE('24-01-1999', '%d-%m-%Y')
	, STR_TO_DATE('11-11-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 165
        , STR_TO_DATE('23-02-1998', '%d-%m-%Y')
	, STR_TO_DATE('23-02-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 166
        , STR_TO_DATE('24-03-1996', '%d-%m-%Y')
	, STR_TO_DATE('23-02-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 167
        , STR_TO_DATE('21-04-1999', '%d-%m-%Y')
	, STR_TO_DATE('23-12-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 168
        , STR_TO_DATE('11-03-1995', '%d-%m-%Y')
	, STR_TO_DATE('23-02-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 169  
        , STR_TO_DATE('23-03-1997', '%d-%m-%Y')
	, STR_TO_DATE('01-01-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 170
        , STR_TO_DATE('24-01-1997', '%d-%m-%Y')
	, STR_TO_DATE('01-01-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 171
        , STR_TO_DATE('23-02-1998', '%d-%m-%Y')
	, STR_TO_DATE('22-02-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 172
        , STR_TO_DATE('24-03-1997', '%d-%m-%Y')
	, STR_TO_DATE('23-03-1999', '%d-%m-%Y')
        , 'Sales Representative'
        , 'Sales'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 173
        , STR_TO_DATE('01-01-1999', '%d-%m-%Y')
	, STR_TO_DATE('20-04-2000', '%d-%m-%Y')
        , 'Sales Representative'
        , 'Sales'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 174
        , STR_TO_DATE('11-05-1995', '%d-%m-%Y')
	, STR_TO_DATE('10-05-1996', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 175
        , STR_TO_DATE('19-03-1995', '%d-%m-%Y')
	, STR_TO_DATE('19-03-1996', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 177
        , STR_TO_DATE('23-04-1996', '%d-%m-%Y')
	, STR_TO_DATE('22-04-1998', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 178
        , STR_TO_DATE('24-05-1998', '%d-%m-%Y')
	, STR_TO_DATE('01-01-1999', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 179
        , STR_TO_DATE('01-01-1997', '%d-%m-%Y')
	, STR_TO_DATE('02-01-2000', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO JOBHISTORY VALUES 
        ( 180
        , STR_TO_DATE('24-01-1994', '%d-%m-%Y')
	, STR_TO_DATE('12-12-1997', '%d-%m-%Y')
        , 'Stock Clerk'
        , 'Shipping'
        );

INSERT INTO DEPARTMENT VALUES (1, 'SALES', '00110', 1234.00, STR_TO_DATE('02/01/2012', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (2, 'ACCOUNTING', '00120', 5566789.50, STR_TO_DATE('30/10/2010', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (3, 'GAMES', '00150', 100000.00, STR_TO_DATE('01/03/2008', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (4, 'HUMAN RESOURCES', '00200', 500000.0, STR_TO_DATE('02/01/2013', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (5, 'SPORTS', '00250', 8500000.00, STR_TO_DATE('10/05/2010', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (6, 'RESEARCH', '00300', 45500.00, STR_TO_DATE('10/06/2020', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (7, 'EDUCATION', '00350', 100000.00, STR_TO_DATE('10/07/2019', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (8, 'FINANCE', '00500', 8400000.00, STR_TO_DATE('10/08/2022', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (9, 'COMPUTING', '00600', 90000.00, STR_TO_DATE('10/09/2018', '%d/%m/%Y'));
INSERT INTO DEPARTMENT VALUES (10, 'DUST', NULL, 10.00, NULL);


INSERT INTO EMPLOYEE VALUES ('00600', 'Willy', STR_TO_DATE('01/01/1988', '%d/%m/%Y'), '41 Station Street, Wollongong, NSW 2500', 'M', 250.5, NULL, 9);
INSERT INTO EMPLOYEE VALUES ('00700', 'Zhi', STR_TO_DATE('12/09/1999', '%d/%m/%Y'), '112 Smith Street, Windang, NSW 2525', 'M', 80.2, '00600', 9);
INSERT INTO EMPLOYEE VALUES ('00800', 'Mary', STR_TO_DATE('03/10/2000', '%d/%m/%Y'), '26 Gibsons Road, Figtree, NSW 2525', 'F', 50.0, '00700', 9);
INSERT INTO EMPLOYEE VALUES ('00500', 'Angelina', STR_TO_DATE('20/11/1990', '%d/%m/%Y'), '25 Bong Bong Road, Horsley, NSW 2530', 'F', 250.0, NULL, 8);
INSERT INTO EMPLOYEE VALUES ('00510', 'Anna', STR_TO_DATE('20/11/1990', '%d/%m/%Y'), '200 Cemetary Road, Hawea, NSW 2800', 'F', 100.0, '00500', 8);
INSERT INTO EMPLOYEE VALUES ('00520', 'Madelaine', STR_TO_DATE('20/11/1990', '%d/%m/%Y'), '23 Lake View Street, Figtree, NSW 2525', 'F', 50.0, '00510', 8);
INSERT INTO EMPLOYEE VALUES ('00530', 'Robert', STR_TO_DATE('20/11/1990', '%d/%m/%Y'), '80 Penny Road, Windang, NSW 2520', 'M', 50.0, '00510', 8);
INSERT INTO EMPLOYEE VALUES ('00540', 'Claudio', STR_TO_DATE('20/11/1990', '%d/%m/%Y'), '23 Horsley Street, Unanderra, NSW 2528', 'M', 50.0, '00510', 8);
INSERT INTO EMPLOYEE VALUES ('00350', 'Brian', STR_TO_DATE('13/05/1965', '%d/%m/%Y'), '23 Station Street, Wollongong, NSW 2500', 'M', 200.4, NULL, 7);
INSERT INTO EMPLOYEE VALUES ('00300', 'James', STR_TO_DATE('12/11/1972', '%d/%m/%Y'), '7 Station Street, Dapto, NSW 2530', 'M', 186.5, NULL, 6);
INSERT INTO EMPLOYEE VALUES ('00301', 'Ivan', STR_TO_DATE('11/12/1976', '%d/%m/%Y'), '8 Short Street, Dapto, NSW 2530', 'M', 150.0, '00300', 6);
INSERT INTO EMPLOYEE VALUES ('00303', 'Kate', STR_TO_DATE('05/06/1980', '%d/%m/%Y'), '25 Horsley Road, Dapto, NSW 2530', 'F', 150.5, '00300', 6);
INSERT INTO EMPLOYEE VALUES ('00100', 'Albert', STR_TO_DATE('13/10/1965', '%d/%m/%Y'), '12 Robert Street, Woonona, NSW 2517', 'M', 186.5, NULL, 5);
INSERT INTO EMPLOYEE VALUES ('00110', 'Alvin', STR_TO_DATE('13/10/1977', '%d/%m/%Y'), '56 Marlo Road, Wollongong, NSW 2500', 'M', 156.4, '00100', 1);
INSERT INTO EMPLOYEE VALUES ('00120', 'Alice', STR_TO_DATE('17/06/1973', '%d/%m/%Y'), '43 Collaery Road, Russell Vale, NSW 2517', 'F', 156.5, '00100', 2);
INSERT INTO EMPLOYEE VALUES ('00150', 'Bob', STR_TO_DATE('02/07/1960', '%d/%m/%Y'), '23 Kendall Street, Wollongong, NSW 2500', 'M', 166.4, '00100', 3);
INSERT INTO EMPLOYEE VALUES ('00200', 'Carl', STR_TO_DATE('02/02/1967', '%d/%m/%Y'), '44 Mount Keira Road, West Wollongong, NSW 2500', 'M', 156.3, '00100', 4);
INSERT INTO EMPLOYEE VALUES ('00250', 'Douglass', STR_TO_DATE('14/04/1983', '%d/%m/%Y'), '78 Uralba Street, West Wollongong, NSW 2500', 'M', 156.4, '00100', 5);
INSERT INTO EMPLOYEE VALUES ('00101', 'Peter', STR_TO_DATE('13/11/1976', '%d/%m/%Y'), '77 Gipps Road, Wollongong, NSW 2500', 'M', 85.2, '00110', 1);
INSERT INTO EMPLOYEE VALUES ('00103', 'Ami', STR_TO_DATE('12/09/1985', '%d/%m/%Y'), '51 Mackie Street, Coniston, NSW 2500', 'F', 78.2, '00110', 1);
INSERT INTO EMPLOYEE VALUES ('00107', 'Wendy', STR_TO_DATE('12/09/1988', '%d/%m/%Y'), '41 Wall Street, Wollongong, NSW 2500', 'F', 68.2, '00110', 1);
INSERT INTO EMPLOYEE VALUES ('00109', 'Michael', STR_TO_DATE('12/09/1990', '%d/%m/%Y'), '112 Smith Road, Wollongong, NSW 2500', 'M', 58.2, '00110', 1);
INSERT INTO EMPLOYEE VALUES ('00125', 'Angela', STR_TO_DATE('20/11/1990', '%d/%m/%Y'), '23 Gibsons Road, Figtree, NSW 2525', 'F', 56.4, '00120', 2);
INSERT INTO EMPLOYEE VALUES ('00105', 'Robert', STR_TO_DATE('15/01/1986', '%d/%m/%Y'), '66 Risely Road, Figtree, NSW 2525', 'M', 66.2, '00150', 3);
INSERT INTO EMPLOYEE VALUES ('00136', 'Aban', STR_TO_DATE('15/01/1990', '%d/%m/%Y'), '187 Princes Highway, Wollongong, NSW 2500', 'M', 55.3, '00200', 4);
INSERT INTO EMPLOYEE VALUES ('00187', 'Eadger', STR_TO_DATE('07/04/1986', '%d/%m/%Y'), '73 Ocean Street, Wollongong, NSW 2500', 'M', 76.5, '00250', 5);

ALTER TABLE DEPARTMENT ADD CONSTRAINT DEPARTMENT_FK FOREIGN KEY (manager)
	                                            REFERENCES EMPLOYEE(enumber);
	                                            
INSERT INTO DEPTLOCATION VALUES (1, '1 Gipps Road, Wollongong, NSW 2500');
INSERT INTO DEPTLOCATION VALUES (1, '10 Jones Street, Sydney, NSW 2000');
INSERT INTO DEPTLOCATION VALUES (1, '25 Gore Street, Melbourne, VIC 3065');
INSERT INTO DEPTLOCATION VALUES (2, '108 George Street, Sydney, NSW 2000');
INSERT INTO DEPTLOCATION VALUES (3, '183 Pier Street, Sydney, NSW 2000');
INSERT INTO DEPTLOCATION VALUES (3, '64 Smith Street, Wollongong, NSW 2500');
INSERT INTO DEPTLOCATION VALUES (4, '4 Elizabeth Street, Sydney, NSW 2000');
INSERT INTO DEPTLOCATION VALUES (5, '77 Kenny Street, Wollongong, NSW 2500');
INSERT INTO DEPTLOCATION VALUES (5, '263 Box Road, Sydney, NSW 2170');
INSERT INTO DEPTLOCATION VALUES (6, '100 Smith Street, Sydney, NSW 2170');
INSERT INTO DEPTLOCATION VALUES (7, '150 Barnaby Road, Sydney, NSW 2180');
INSERT INTO DEPTLOCATION VALUES (8, '25 Station Road, Sydney, NSW 2070');
INSERT INTO DEPTLOCATION VALUES (9, '26 Box Road, Sydney, NSW 2170');
INSERT INTO DEPTLOCATION VALUES (10, '25 Box Road, Sydney, NSW 2170');

INSERT INTO PROJECT VALUES (1001, 'Computation', 'Microsoft', 8, 25000);
INSERT INTO PROJECT VALUES (1002, 'Study methods', 'Education committee', 3, 15000);
INSERT INTO PROJECT VALUES (1003, 'Racing car', 'Cloud Pty Ltd', 3, 225000);
INSERT INTO PROJECT VALUES (1004, 'Football', 'Football Club', 5, 35000);
INSERT INTO PROJECT VALUES (1005, 'Swimming', 'Education Committee', 5, 125000);
INSERT INTO PROJECT VALUES (1006, 'Database', 'Database Committee', 5, 125000);

INSERT INTO WORKSON VALUES ('00110', 1001, 10);
INSERT INTO WORKSON VALUES ('00101', 1001, 20);
INSERT INTO WORKSON VALUES ('00150', 1002, 10);
INSERT INTO WORKSON VALUES ('00105', 1002, 10);
INSERT INTO WORKSON VALUES ('00105', 1003, 20);
INSERT INTO WORKSON VALUES ('00105', 1004, 20);
INSERT INTO WORKSON VALUES ('00250', 1004, 15);
INSERT INTO WORKSON VALUES ('00187', 1004, 25);
INSERT INTO WORKSON VALUES ('00105', 1005, 15);
INSERT INTO WORKSON VALUES ('00600', 1001, 50);
INSERT INTO WORKSON VALUES ('00700', 1001, 25);
INSERT INTO WORKSON VALUES ('00800', 1001, 25);
INSERT INTO WORKSON VALUES ('00500', 1002, 20);
INSERT INTO WORKSON VALUES ('00510', 1002, 20);
INSERT INTO WORKSON VALUES ('00520', 1002, 20);
INSERT INTO WORKSON VALUES ('00530', 1002, 20);
INSERT INTO WORKSON VALUES ('00540', 1002, 20);
INSERT INTO WORKSON VALUES ('00350', 1005, 30);
INSERT INTO WORKSON VALUES ('00300', 1005, 20);
INSERT INTO WORKSON VALUES ('00301', 1005, 20);
INSERT INTO WORKSON VALUES ('00303', 1005, 30);

INSERT INTO DEPENDENT VALUES ('00100', 'Judy',   'F', STR_TO_DATE('11/03/1966', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00100', 'Bolt',   'M', STR_TO_DATE('05/03/1986', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00100', 'Kim',    'F', STR_TO_DATE('11/03/1989', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00120', 'James',  'M', STR_TO_DATE('11/03/1975', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00120', 'Kadi',   'F', STR_TO_DATE('05/03/2001', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00120', 'Jane',   'F', STR_TO_DATE('15/05/2003', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00187', 'Angela', 'F', STR_TO_DATE('15/05/2003', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00600', 'Anna', 'F', STR_TO_DATE('20/05/1995', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00600', 'Richard', 'M', STR_TO_DATE('12/06/2000', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00600', 'James', 'M', STR_TO_DATE('15/05/2002', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00700', 'Peter', 'M', STR_TO_DATE('15/05/2005', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00800', 'Tim', 'M', STR_TO_DATE('15/05/2003', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00500', 'Frederick', 'F', STR_TO_DATE('17/06/2002', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00510', 'Anna', 'F', STR_TO_DATE('10/06/2003', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00520', 'John', 'M', STR_TO_DATE('10/12/2000', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00530', 'James', 'M', STR_TO_DATE('13/08/2001', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00540', 'Phillip', 'M', STR_TO_DATE('10/05/2000', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00350', 'Edward', 'M', STR_TO_DATE('10/05/2000', '%d/%m/%Y'), 'son');
INSERT INTO DEPENDENT VALUES ('00300', 'Elisabeth', 'F', STR_TO_DATE('11/06/2004', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00301', 'Marianne', 'F', STR_TO_DATE('10/08/2005', '%d/%m/%Y'), 'daughter');
INSERT INTO DEPENDENT VALUES ('00303', 'Monalisa', 'F', STR_TO_DATE('12/09/2006', '%d/%m/%Y'), 'daughter');

INSERT INTO CATEGORY(CATEGORY_NAME, DESCRIPTION, PICTURE)
VALUES('Beverages', 'Soft drinks, coffees, teas, beers, and ales', 'beverages.gif');

INSERT INTO CATEGORY(CATEGORY_NAME, DESCRIPTION, PICTURE)
VALUES('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', 'condiments.gif');

INSERT INTO CATEGORY(CATEGORY_NAME, DESCRIPTION, PICTURE)
VALUES('Confections', 'Desserts, candies, and sweet breads', 'confections.gif');

INSERT INTO CATEGORY(CATEGORY_NAME, DESCRIPTION, PICTURE)
VALUES('Dairy Products', 'Cheeses', 'diary.gif');

INSERT INTO CATEGORY(CATEGORY_NAME, DESCRIPTION, PICTURE)
VALUES('Grains/Cereals', 'Breads, crackers, pasta, and cereal', 'cereals.gif');

INSERT INTO CATEGORY(CATEGORY_NAME, DESCRIPTION, PICTURE)
VALUES('Meat/Poultry', 'Prepared meats', 'meat.gif');

INSERT INTO CATEGORY(CATEGORY_NAME, DESCRIPTION, PICTURE)
VALUES('Produce', 'Dried fruit and bean curd', 'produce.gif');

INSERT INTO CATEGORY(CATEGORY_NAME, DESCRIPTION, PICTURE)
VALUES('Seafood', 'Seaweed and fish', 'seafood.gif');


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 
    'Obere Str. 57', 'Berlin', '12209', 'Germany', 
    '030-0074321', '030-0076545');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 
    'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico', 
    '(5) 555-4729', '(5) 555-3745');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Owner', 
    'Mataderos  2312', 'México D.F.', '05023', 'Mexico', '(5) 555-3932');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', 
    '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK', 
    '(171) 555-7788', '(171) 555-6750');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('BERGS', 'Berglunds snabbkop', 'Christina Berglund', 'Order Administrator', 
    'Berguvsvägen  8', 'Luleå', 'S-958 22', 'Sweden', 
    '0921-12 34 65', '0921-12 34 67');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Sales Representative', 
    'Forsterstr. 57', 'Mannheim', '68306', 'Germany', 
    '0621-08460', '0621-08924');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('BLONP', 'Blondel pere et fils', 'Frederique Citeaux', 'Marketing Manager', 
    '24, Place Kleber', 'Strasbourg', '67000', 'France', 
    '88.60.15.31', '88.60.15.32');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('BOLID', 'Bolido Comidas preparadas', 'Martin Sommer', 'Owner', 
    'C/ Araquil, 67', 'Madrid', '28023', 'Spain', 
    '(91) 555 22 82', '(91) 555 91 99');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('BONAP', 'Bon app''', 'Laurence Lebihan', 'Owner', 
    '12, rue des Bouchers', 'Marseille', '13008', 'France', 
    '91.24.45.40', '91.24.45.41');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Accounting Manager', 
    '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 
    '(604) 555-4729', '(604) 555-3745');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('BSBEV', 'B''s Beverages', 'Victoria Ashworth', 'Sales Representative', 
    'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK', '(171) 555-1212');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Sales Agent', 
    'Cerrito 333', 'Buenos Aires', '1010', 'Argentina', 
    '(1) 135-5555', '(1) 135-4892');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Marketing Manager', 
    'Sierras de Granada 9993', 'Mexico D.F.', '05022', 'Mexico', 
    '(5) 555-3392', '(5) 555-7293');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 
    'Hauptstr. 29', 'Bern', '3012', 'Switzerland', '0452-076545');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('COMMI', 'Comercio Mineiro', 'Pedro Afonso', 'Sales Associate', 
    'Av. dos Lusiadas, 23', 'São Paulo', 'SP', '05432-043', 'Brazil', 
    '(11) 555-7647');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Sales Representative', 
    'Berkeley Gardens
12  Brewery ', 'London', 'WX1 6LT', 'UK', 
    '(171) 555-2282', '(171) 555-9199');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Order Administrator', 
    'Walserweg 21', 'Aachen', '52066', 'Germany', 
    '0241-039123', '0241-059428');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('DUMON', 'Du monde entier', 'Janine Labrune', 'Owner', 
    '67, rue des Cinquante Otages', 'Nantes', '44000', 'France', 
    '40.67.88.88', '40.67.89.89');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('EASTC', 'Eastern Connection', 'Ann Devon', 'Sales Agent', 
    '35 King George', 'London', 'WX3 6FW', 'UK', 
    '(171) 555-0297', '(171) 555-3373');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 
    'Kirchgasse 6', 'Graz', '8010', 'Austria', 
    '7675-3425', '7675-3426');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 
    'Rua Oros, 92', 'São Paulo', 'SP', '05442-030', 'Brazil', 
    '(11) 555-9857');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Accounting Manager', 
    'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain', 
    '(91) 555 94 44', '(91) 555 55 93');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('FOLIG', 'Folies gourmandes', 'Martine Rance', 'Assistant Sales Agent', 
    '184, chaussée de Tournai', 'Lille', '59000', 'France', 
    '20.16.10.16', '20.16.10.17');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('FOLKO', 'Folk och fa HB', 'Maria Larsson', 'Owner', 
    'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden', '0695-34 67 21');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 
    'Berliner Platz 43', 'München', '80805', 'Germany', 
    '089-0877310', '089-0877451');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('FRANR', 'France restauration', 'Carine Schmitt', 'Marketing Manager', 
    '54, rue Royale', 'Nantes', '44000', 'France', 
    '40.32.21.21', '40.32.21.20');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 
    'Via Monte Bianco 34', 'Torino', '10100', 'Italy', 
    '011-4988260', '011-4988261');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Sales Manager', 
    'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal', 
    '(1) 354-2534', '(1) 354-2535');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('GALED', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Marketing Manager', 
    'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain', 
    '(93) 203 4560', '(93) 203 4561');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('GODOS', 'Godos Cocina Típica', 'Jose Pedro Freyre', 'Sales Manager', 
    'C/ Romero, 33', 'Sevilla', '41101', 'Spain', '(95) 555 82 82');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('GOURL', 'Gourmet Lanchonetes', 'André Fonseca', 'Sales Associate', 
    'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 
    '(11) 555-9482');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Marketing Manager', 
    '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 
    '(503) 555-7555');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', 
    '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', 
    '(2) 283-2951', '(2) 283-3397');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 
    'Rua do Paco, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 
    '(21) 555-0091', '(21) 555-8765');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('HILAA', 'HILARION-Abastos', 'Carlos Hernandez', 'Sales Representative', 
    'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristobal', 'Tachira', '5022', 'Venezuela', 
    '(5) 555-1340', '(5) 555-1948');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Sales Representative', 
    'City Center Plaza
516 Main St.', 'Elgin', 'OR', '97827', 'USA', 
    '(503) 555-6874', '(503) 555-2376');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, COUNTRY, PHONE, FAX)
 VALUES
   ('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', 
    '8 Johnstown Road', 'Cork', 'Co. Cork', 'Ireland', 
    '2967 542', '2967 3333');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 
    'Garden House
Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 
    '(198) 555-8888');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('KOENE', 'Koniglich Essen', 'Philip Cramer', 'Sales Associate', 
    'Maubelstr. 90', 'Brandenburg', '14776', 'Germany', '0555-09876');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('LACOR', 'La corne d''abondance', 'Daniel Tonini', 'Sales Representative', 
    '67, avenue de l''Europe', 'Versailles', '78000', 'France', 
    '30.59.84.10', '30.59.85.11');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('LAMAI', 'La maison d''Asie', 'Annette Roulet', 'Sales Manager', 
    '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France', 
    '61.77.61.10', '61.77.61.11');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', 
    '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', 
    '(604) 555-3392', '(604) 555-7293');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', 
    '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA', 
    '(509) 555-7969', '(509) 555-6221');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 
    'Magazinweg 7', 'Frankfurt a.M. ', '60528', 'Germany', 
    '069-0245984', '069-0245874');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('LETSS', 'Let''s Stop N Shop', 'Jaime Yorres', 'Owner', 
    '87 Polk St.
Suite 5', 'San Francisco', 'CA', '94117', 'USA', 
    '(415) 555-5938');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('LILAS', 'LILA-Supermercado', 'Carlos Gonzalez', 'Accounting Manager', 
    'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 
    '(9) 331-6954', '(9) 331-7256');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Owner', 
    'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 
    '(8) 34-56-12', '(8) 34-93-93');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Sales Manager', 
    '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 
    '(503) 555-9573', '(503) 555-9646');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Marketing Manager', 
    'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy', 
    '035-640230', '035-640231');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Sales Agent', 
    'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium', 
    '(02) 201 24 67', '(02) 201 24 68');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('MEREP', 'Mere Paillarde', 'Jean Fresniere', 'Marketing Assistant', 
    '43 rue St. Laurent', 'Montreal', 'Quebec', 'H1J 1C3', 'Canada', 
    '(514) 555-8054', '(514) 555-8055');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Marketing Assistant', 
    'Heerstr. 22', 'Leipzig', '04179', 'Germany', '0342-023176');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('NORTS', 'North/South', 'Simon Crowther', 'Sales Associate', 
    'South House
300 Queensbridge', 'London', 'SW7 1RZ', 'UK', 
    '(171) 555-7733', '(171) 555-2530');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('OCEAN', 'Océano Atlantico Ltda.', 'Yvonne Moncada', 'Sales Agent', 
    'Ing. Gustavo Moncada 8585
Piso 20-A', 'Buenos Aires', '1010', 'Argentina', 
    '(1) 135-5333', '(1) 135-5535');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Sales Representative', 
    '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 
    '(907) 555-7584', '(907) 555-2880');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('OTTIK', 'Ottilies Kaseladen', 'Henriette Pfalzheim', 'Owner', 
    'Mehrheimerstr. 369', 'Koln', '50739', 'Germany', 
    '0221-0644327', '0221-0765721');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('PARIS', 'Paris specialites', 'Marie Bertrand', 'Owner', 
    '265, Boulevard Charonne', 'Paris', '75012', 'France', 
    '(1) 42.34.22.66', '(1) 42.34.22.77');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('PERIC', 'Pericles Comidas clasicas', 'Guillermo Fernandez', 'Sales Representative', 
    'Calle Dr. Jorge Cash 321', 'Mexico D.F.', '05033', 'Mexico', 
    '(5) 552-3745', '(5) 545-3745');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Sales Manager', 
    'Geislweg 14', 'Salzburg', '5020', 'Austria', 
    '6562-9722', '6562-9723');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Sales Representative', 
    'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal', '(1) 356-5634');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('QUEDE', 'Que Delícia', 'Bernardo Batista', 'Accounting Manager', 
    'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 
    '(21) 555-4252', '(21) 555-4545');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('QUEEN', 'Queen Cozinha', 'Lúcia Carvalho', 'Marketing Assistant', 
    'Alameda dos Canàrios, 891', 'São Paulo', 'SP', '05487-020', 'Brazil', 
    '(11) 555-1189');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Accounting Manager', 
    'Taucherstraße 10', 'Cunewalde', '01307', 'Germany', '0372-035188');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('RANCH', 'Rancho grande', 'Sergio Gutierrez', 'Sales Representative', 
    'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina', 
    '(1) 123-5555', '(1) 123-5556');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Assistant Sales Representative', 
    '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 
    '(505) 555-5939', '(505) 555-3620');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Sales Associate', 
    'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy', 
    '0522-556721', '0522-556722');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Assistant Sales Agent', 
    'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 
    '(21) 555-3412');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Sales Manager', 
    'Grenzacherweg 237', 'Geneve', '1203', 'Switzerland', '0897-034214');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Accounting Manager', 
    'Gran Via, 1', 'Madrid', '28001', 'Spain', 
    '(91) 745 6200', '(91) 745 6210');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('SANTG', 'Santé Gourmet', 'Jonas Bergulfsen', 'Owner', 
    'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway', 
    '07-98 92 35', '07-98 92 47');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Sales Representative', 
    '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 
    '(208) 555-8097');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Sales Manager', 
    '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK', 
    '(171) 555-1717', '(171) 555-5646');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Owner', 
    'Vinbæltet 34', 'Kobenhavn', '1734', 'Denmark', 
    '31 12 34 56', '31 13 35 57');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('SPECD', 'Specialites du monde', 'Dominique Perrier', 'Marketing Manager', 
    '25, rue Lauriston', 'Paris', '75016', 'France', 
    '(1) 47.55.60.10', '(1) 47.55.60.20');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Sales Manager', 
    'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 
    '(307) 555-4680', '(307) 555-6525');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('SUPRD', 'Supremes delices', 'Pascale Cartrain', 'Accounting Manager', 
    'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium', 
    '(071) 23 67 22 20', '(071) 23 67 22 21');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('THEBI', 'The Big Cheese', 'Liz Nixon', 'Marketing Manager', 
    '89 Jefferson Way
Suite 2', 'Portland', 'OR', '97201', 'USA', 
    '(503) 555-3612');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('THECR', 'The Cracker Box', 'Liu Wong', 'Marketing Assistant', 
    '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA', 
    '(406) 555-5834', '(406) 555-8083');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('TOMSP', 'Toms Spezialitaten', 'Karin Josephs', 'Marketing Manager', 
    'Luisenstr. 48', 'Munster', '44087', 'Germany', 
    '0251-031259', '0251-035695');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Owner', 
    'Avda. Azteca 123', 'México D.F.', '05033', 'Mexico', '(5) 555-2933');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('TRADH', 'Tradicao Hipermercados', 'Anabela Domingues', 'Sales Representative', 
    'Av. Ines de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', 
    '(11) 555-2167', '(11) 555-2168');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('TRAIH', 'Trail''s Head Gourmet Provisioners', 'Helvetius Nagy', 'Sales Associate', 
    '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA', 
    '(206) 555-8257', '(206) 555-2174');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Sales Manager', 
    'Smagsløget 45', 'Århus', '8200', 'Denmark', 
    '86 21 32 43', '86 22 33 44');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Sales Agent', 
    '2, rue du Commerce', 'Lyon', '69004', 'France', 
    '78.32.54.86', '78.32.54.87');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Accounting Manager', 
    '59 rue de l''Abbaye', 'Reims', '51100', 'France', 
    '26.47.15.10', '26.47.15.11');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('WANDK', 'Die Wandernde Kuh', 'Rita Müller', 'Sales Representative', 
    'Adenauerallee 900', 'Stuttgart', '70563', 'Germany', 
    '0711-020361', '0711-035428');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Accounting Manager', 
    'Torikatu 38', 'Oulu', '90110', 'Finland', 
    '981-443655', '981-443655');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
 VALUES
   ('WELLI', 'Wellington Importadora', 'Paula Parente', 'Sales Manager', 
    'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 
    '(14) 555-8122');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Owner', 
    '305 - 14th Ave. S.
Suite 3B', 'Seattle', 'WA', '98128', 'USA', 
    '(206) 555-4112', '(206) 555-4115');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Owner/Marketing Assistant', 
    'Keskuskatu 45', 'Helsinki', '21240', 'Finland', 
    '90-224 8858', '90-224 8858');

INSERT INTO CUSTOMER
   (CUSTOMER_CODE, COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
 VALUES
   ('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Owner', 
    'ul. Filtrowa 68', 'Warszawa', '01-012', 'Poland', 
    '(26) 642-7012', '(26) 642-7012');

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO)
VALUES(1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', STR_TO_DATE('12-08-1968', '%m-%d-%Y'), STR_TO_DATE('05-01-1992', '%m-%d-%Y'), '507 - 20th Ave. E.Apt. 2A', 'Seattle', 'WA',     '98122', 'USA', '(206) 555-9857', '5467', 'nancy.jpg',     'Education includes a BA in psychology from Colorado State University.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.', 2);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES)
VALUES(2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', STR_TO_DATE('02-19-1952', '%m-%d-%Y'), STR_TO_DATE('08-14-1992', '%m-%d-%Y'), '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '(206) 555-9482', '3457', 'andrew  .jpg', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.');

INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO)
VALUES(3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', STR_TO_DATE('08-30-1963', '%m-%d-%Y'), STR_TO_DATE('04-01-1992', '%m-%d-%Y'), '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-3412', '3355', 'janet.jpg', 'Janet has a BS degree in chemistry from Boston College).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate and was promoted to sales representative.', 2);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO)
VALUES(4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', STR_TO_DATE('09-19-1958', '%m-%d-%Y'), STR_TO_DATE('05-03-1993', '%m-%d-%Y'), '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-8122', '5176', 'margaret.jpg', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.', 2);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO)
VALUES(5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', STR_TO_DATE('03-04-1955', '%m-%d-%Y'), STR_TO_DATE('10-17-1993', '%m-%d-%Y'), '14 Garrett Hill', 'London', 'SW1 8JR', 'UK', '(71) 555-4848', '3453', 'steven.jpg', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree.  Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.', 2);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO)
VALUES(6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', STR_TO_DATE('07-02-1963', '%m-%d-%Y'), STR_TO_DATE('10-17-1993', '%m-%d-%Y'), 'Coventry House Miner Rd.', 'London', 'EC2 7JR', 'UK', '(71) 555-7773', '428', 'michael.jpg', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO)
VALUES(7, 'King', 'Robert', 'Sales Representative', 'Mr.', STR_TO_DATE('05-29-1960', '%m-%d-%Y'), STR_TO_DATE('01-02-1994', '%m-%d-%Y'), 'Edgeham Hollow Winchester Way', 'London', 'RG1 9SP', 'UK', '(71) 555-5598', '465', 'robert.jpg', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office.', 5);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO)
VALUES(8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', STR_TO_DATE('01-09-1958', '%m-%d-%Y'), STR_TO_DATE('03-05-1994', '%m-%d-%Y'), '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'USA', '(206) 555-1189', '2344', 'laura.jpg', 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, LASTNAME, FIRSTNAME, TITLE, TITLE_OF_COURTESY, BIRTHDATE, HIREDATE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO)
VALUES(9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', STR_TO_DATE('07-02-1969', '%m-%d-%Y'), STR_TO_DATE('11-15-1994', '%m-%d-%Y'), '7 Houndstooth Rd.', 'London', 'WG2 7LT', 'UK', '(71) 555-4444', '452', 'anne.jpg', 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5);

ALTER TABLE EMPLOYEE
ADD CONSTRAINT FK_REPORTS_TO FOREIGN KEY (REPORTS_TO) REFERENCES EMPLOYEE(EMPLOYEE_ID);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', 'EC1 4SD', 'UK', '(171) 555-2222');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
VALUES('New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 SekimaiMusashino-shi', 'Tokyo', '100', 'Japan', '(03) 3555-5011');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra ', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Mayumi''s', 'Mayumi Ohno', 'Marketing Representative', '92 SetsukoChuo-ku', 'Osaka', '545', 'Japan', '(06) 431-7877');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St.Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', 'M14 GSD', 'UK', '(161) 555-4448');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('PB Knackebrod AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', 'S-345 67', 'Sweden ', '031-987 65 43', '031-987 65 91');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'São Paulo', '5442', 'Brazil', '(11) 555 4640');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Heli Susswaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', '10785', 'Germany', '(010) 9984510');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Plutzer Lebensmittelgrossmarkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', '60439', 'Germany', '(069) 992755');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', '27478', 'Germany', '(04721) 8713', '(04721) 8714');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', '48100', 'Italy', '(0544) 60323', '(0544) 60603');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', '1320', 'Norway', '(0)2-953010');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th AvenueSuite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Svensk Sjofoda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', 'S-123 45', 'Sweden', '08-123 45 67');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Aux joyeux ecclesiastiques', 'Guylene Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', '0512', 'Singapore', '555-8787');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Lyngbysild', 'Niels Petersen', 'Sales Manager', 'LyngbysildFiskebakken 10', 'Lyngby', '2800', 'Denmark', '43844108', '43844115');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'VerkoopRijnweg 22', 'Zaandam', '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', '53120', 'Finland', '(953) 10956');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('G''day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward ParadeHunter''s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', '84100', 'Italy', '(089) 6547665', '(089) 6547667');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE)
VALUES('Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', '71300', 'France', '85.57.00.07');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Gai paturage', 'Eliane Noz', 'Sales Representative', 'Bat. B3, rue des Alpes', 'Annecy', '74000', 'France', '38.76.98.06', '38.76.98.58');

INSERT INTO SUPPLIER(COMPANY_NAME, CONTACT_NAME, CONTACT_TITLE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, PHONE, FAX)
VALUES('Forets d''erables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Quebec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921');

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

INSERT INTO SHIPPER(COMPANY_NAME, PHONE)
VALUES('Speedy Express', '(503) 555-9831');

INSERT INTO SHIPPER(COMPANY_NAME, PHONE)
VALUES('United Package', '(503) 555-3199');

INSERT INTO SHIPPER(COMPANY_NAME, PHONE)
VALUES('Federal Shipping', '(503) 555-9931');

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Chai', 'Exotic Liquids', 'Beverages', '10 boxes x 20 bags', 
    18, 39, 0, 10, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Chang', 'Exotic Liquids', 'Beverages', '24 - 12 oz bottles', 
    19, 17, 40, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Aniseed Syrup', 'Exotic Liquids', 'Condiments', '12 - 550 ml bottles', 
    10, 13, 70, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Chef Anton''s Cajun Seasoning', 'New Orleans Cajun Delights', 'Condiments', '48 - 6 oz jars', 
    25, 53, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Chef Anton''s Gumbo Mix', 'New Orleans Cajun Delights', 'Condiments', '36 boxes', 
    21.35, 0, 0, 0, 'Y');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Grandma''s Boysenberry Spread', 'Grandma Kelly''s Homestead', 'Condiments', '12 - 8 oz jars', 
    25, 120, 0, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Uncle Bob''s Organic Dried Pears', 'Grandma Kelly''s Homestead','Produce', '12 - 1 lb pkgs.', 
    30, 15, 0, 10, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Northwoods Cranberry Sauce', 'Grandma Kelly''s Homestead', 'Condiments', '12 - 12 oz jars', 
    40, 6, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Mishi Kobe Niku', 'Tokyo Traders', 'Meat/Poultry', '18 - 500 g pkgs.', 
    97, 29, 0, 0, 'Y');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Ikura', 'Tokyo Traders', 'Seafood', '12 - 200 ml jars', 
    31, 31, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Queso Cabrales','Cooperativa de Quesos ''Las Cabras''', 'Dairy Products', '1 kg pkg.', 
    21, 22, 30, 30, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Queso Manchego La Pastora','Cooperativa de Quesos ''Las Cabras''', 'Dairy Products', '10 - 500 g pkgs.', 
    38, 86, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Konbu', 'Mayumi''s', 'Seafood', '2 kg box', 
    6, 24, 0, 5, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Tofu','Mayumi''s','Produce', '40 - 100 g pkgs.', 
    23.25, 35, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Genen Shouyu','Mayumi''s', 'Condiments', '24 - 250 ml bottles', 
    15.5, 39, 0, 5, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Pavlova','Pavlova, Ltd.', 'Confections', '32 - 500 g boxes', 
    17.45, 29, 0, 10, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Alice Mutton','Pavlova, Ltd.', 'Meat/Poultry', '20 - 1 kg tins', 
    39, 0, 0, 0, 'Y');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Carnarvon Tigers','Pavlova, Ltd.', 'Seafood', '16 kg pkg.', 
    62.5, 42, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Teatime Chocolate Biscuits','Specialty Biscuits, Ltd.', 'Confections', '10 boxes x 12 pieces', 
    9.2, 25, 0, 5, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Sir Rodney''s Marmalade','Specialty Biscuits, Ltd.', 'Confections', '30 gift boxes', 
    81, 40, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Sir Rodney''s Scones','Specialty Biscuits, Ltd.', 'Confections', '24 pkgs. x 4 pieces', 
    10, 3, 40, 5, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Gustaf''s Knackebrod','PB Knackebrod AB',  'Confections', '24 - 500 g pkgs.', 
    21, 104, 0, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Tunnbrod','PB Knackebrod AB', 'Grains/Cereals', '12 - 250 g pkgs.', 
    9, 61, 0, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Guarana Fantastica', 'Refrescos Americanas LTDA', 'Beverages', '12 - 355 ml cans', 
    4.5, 20, 0, 0, 'Y');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('NuNuCa Nuss-Nougat-Creme', 'Heli Susswaren GmbH & Co. KG', 'Confections', '20 - 450 g glasses', 
    14, 76, 0, 30, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Gumbar Gummibarchen', 'Heli Susswaren GmbH & Co. KG', 'Confections', '100 - 250 g bags', 
    31.23, 15, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Schoggi Schokolade', 'Heli Susswaren GmbH & Co. KG', 'Confections', '100 - 100 g pieces', 
    43.9, 49, 0, 30, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Rossle Sauerkraut', 'Plutzer Lebensmittelgrossmarkte AG', 'Produce', '25 - 825 g cans', 
    45.6, 26, 0, 0, 'Y');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Thuringer Rostbratwurst', 'Plutzer Lebensmittelgrossmarkte AG', 'Meat/Poultry', '50 bags x 30 sausgs.', 
    123.79, 0, 0, 0, 'Y');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Nord-Ost Matjeshering', 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Seafood', '10 - 200 g glasses', 
    25.89, 10, 0, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Gorgonzola Telino','Formaggi Fortini s.r.l.', 'Dairy Products', '12 - 100 g pkgs', 
    12.5, 0, 70, 20, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Mascarpone Fabioli','Formaggi Fortini s.r.l.', 'Dairy Products', '24 - 200 g pkgs.', 
    32, 9, 40, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Geitost', 'Norske Meierier', 'Dairy Products', '500 g', 
    2.5, 112, 0, 20, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Sasquatch Ale', 'Bigfoot Breweries', 'Beverages', '24 - 12 oz bottles', 
    14, 111, 0, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Steeleye Stout', 'Bigfoot Breweries', 'Beverages', '24 - 12 oz bottles', 
    18, 20, 0, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Inlagd Sill', 'Svensk Sjofoda AB', 'Seafood', '24 - 250 g  jars', 
    19, 112, 0, 20, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Gravad lax', 'Svensk Sjofoda AB', 'Seafood', '12 - 500 g pkgs.', 
    26, 11, 50, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Côte de Blaye', 'Aux joyeux ecclesiastiques', 'Beverages', '12 - 75 cl bottles', 
    263.5, 17, 0, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Chartreuse verte', 'Pavlova, Ltd.', 'Beverages', '750 cc per bottle', 
    102.1, 69, 0, 5, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Boston Crab Meat', 'New England Seafood Cannery', 'Seafood', '24 - 4 oz tins', 
    18.4, 123, 0, 30, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Jack''s New England Clam Chowder', 'New England Seafood Cannery', 'Seafood', '12 - 12 oz cans', 
    9.65, 85, 0, 10, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Singaporean Hokkien Fried Mee', 'Leka Trading', 'Grains/Cereals', '32 - 1 kg pkgs.', 
    14, 26, 0, 0, 'Y');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Ipoh Coffee', 'Leka Trading', 'Beverages', '16 - 500 g tins', 
    46, 17, 10, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Gula Malacca', 'Leka Trading', 'Condiments', '20 - 2 kg bags', 
    19.45, 27, 0, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Rogede sild', 'Lyngbysild', 'Seafood', '1k pkg.', 
    9.5, 5, 70, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Spegesild', 'Lyngbysild', 'Seafood', '4 - 450 g glasses', 
    12, 95, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Zaanse koeken', 'Zaanse Snoepfabriek', 'Confections', '10 - 4 oz boxes', 
    9.5, 36, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Chocolade', 'Zaanse Snoepfabriek', 'Confections', '10 pkgs.', 
    12.75, 15, 70, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Maxilaku', 'Karkki Oy', 'Confections', '24 - 50 g pkgs.', 
    20, 10, 60, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Valkoinen suklaa', 'Karkki Oy', 'Confections', '12 - 100 g bars', 
    16.25, 65, 0, 30, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Manjimup Dried Apples', 'G''day, Mate','Produce', '50 - 300 g pkgs.', 
    53, 20, 0, 10, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Filo Mix', 'G''day, Mate', 'Grains/Cereals', '16 - 2 kg boxes', 
    7, 38, 0, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Perth Pasties', 'G''day, Mate', 'Meat/Poultry', '48 pieces', 
    32.8, 0, 0, 0, 'Y');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Tourtière', 'Ma Maison', 'Meat/Poultry', '16 pies', 
    7.45, 21, 0, 10, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Pâté chinois', 'Ma Maison', 'Meat/Poultry', '24 boxes x 2 pies', 
    24, 115, 0, 20, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Gnocchi di nonna Alice', 'Pasta Buttini s.r.l.', 'Grains/Cereals', '24 - 250 g pkgs.', 
    38, 21, 10, 30, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Ravioli Angelo', 'Pasta Buttini s.r.l.', 'Grains/Cereals', '24 - 250 g pkgs.', 
    19.5, 36, 0, 20, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Escargots de Bourgogne', 'Escargots Nouveaux', 'Seafood', '24 pieces', 
    13.25, 62, 0, 20, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Raclette Courdavault',  'Gai paturage', 'Dairy Products', '5 kg pkg.', 
    55, 79, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Camembert Pierrot',  'Gai paturage', 'Dairy Products', '15 - 300 g rounds', 
    34, 19, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Sirop d''erable',  'Forets d''erables', 'Condiments', '24 - 500 ml bottles', 
    28.5, 113, 0, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Tarte au sucre',  'Forets d''erables', 'Confections', '48 pies', 
    49.3, 17, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Vegie-spread','Pavlova, Ltd.', 'Condiments', '15 - 625 g jars', 
    43.9, 24, 0, 5, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Wimmers gute Semmelknodel', 'Plutzer Lebensmittelgrossmarkte AG', 'Grains/Cereals', '20 bags x 4 pieces', 
    33.25, 22, 80, 30, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Louisiana Fiery Hot Pepper Sauce', 'New Orleans Cajun Delights', 'Condiments', '32 - 8 oz bottles', 
    21.05, 76, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Louisiana Hot Spiced Okra', 'New Orleans Cajun Delights', 'Condiments', '24 - 8 oz jars', 
    17, 5, 100, 20, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Laughing Lumberjack Lager', 'Bigfoot Breweries', 'Beverages', '24 - 12 oz bottles', 
    14, 52, 0, 10, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Scottish Longbreads',  'Specialty Biscuits, Ltd.', 'Confections', '10 boxes x 8 pieces', 
    12.5, 4, 10, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Gudbrandsdalsost', 'Norske Meierier', 'Dairy Products', '10 kg pkg.', 
    36, 26, 0, 15, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Outback Lager','Pavlova, Ltd.', 'Beverages', '24 - 355 ml bottles', 
    15, 15, 10, 30, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Flotemysost', 'Norske Meierier', 'Dairy Products', '10 - 500 g pkgs.', 
    21.5, 26, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Mozzarella di Giovanni','Formaggi Fortini s.r.l.', 'Dairy Products', '24 - 200 g pkgs.', 
    34.8, 15, 0, 0, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Rod Kaviar', 'Svensk Sjofoda AB', 'Seafood', '24 - 150 g jars', 
    15, 101, 0, 5, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Longlife Tofu', 'Tokyo Traders','Produce', '5 kg pkg.', 
    10, 4, 20, 5, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Rhonbrau Klosterbier', 'Plutzer Lebensmittelgrossmarkte AG', 'Beverages', '24 - 0.5 l bottles', 
    7.75, 125, 0, 25, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Lakkalikoori', 'Karkki Oy', 'Beverages', '500 ml', 
    18, 57, 0, 20, 'N');
INSERT INTO PRODUCT
   (PRODUCT_NAME, SUPPLIER_NAME, CATEGORY_NAME, QUANTITY_PER_UNIT, UNIT_PRICE, UNITS_IN_STOCK, UNITS_ON_ORDER, REORDER_LEVEL, DISCONTINUED)
 VALUES
   ('Original Frankfurter grune Sosse', 'Plutzer Lebensmittelgrossmarkte AG', 'Condiments', '12 boxes', 
    13, 32, 0, 15, 'N');

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (248,'SAVEA', 4, STR_TO_DATE('02/10/1997', '%m/%d/%Y'), STR_TO_DATE('03/10/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/28/1997', '%m/%d/%Y'), 'United Package', 86.53, 'Old World Delicatessen', '187 Suffolk Ln.', 
    'Boise', 'ID', '83720', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (249,'OLDWO', 3, STR_TO_DATE('02/10/1997', '%m/%d/%Y'), STR_TO_DATE('03/24/1997', '%m/%d/%Y'), 
    STR_TO_DATE('03/14/1997', '%m/%d/%Y'), 'United Package', 73.02, 'Old World Delicatessen', '2743 Bering St.', 
    'Anchorage', 'AK', '99508', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (250,  'ERNSH', 3, STR_TO_DATE('02/11/1997', '%m/%d/%Y'), STR_TO_DATE('03/11/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/18/1997', '%m/%d/%Y'), 'United Package', 47.94, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (251, 'REGGC', 8, STR_TO_DATE('02/12/1997', '%m/%d/%Y'), STR_TO_DATE('03/12/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/14/1997', '%m/%d/%Y'), 'Speedy Express', 13.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 
    'Reggio Emilia', '42100', 'Italy');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (252, 'BERGS', 3, STR_TO_DATE('02/12/1997', '%m/%d/%Y'), STR_TO_DATE('03/12/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/21/1997', '%m/%d/%Y'),'Federal Shipping', 3.5, 'Berglunds snabbköp', 'Berguvsvägen  8', 
    'Luleå', 'S-958 22', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (253, 'BERGS', 3, STR_TO_DATE('02/13/1997', '%m/%d/%Y'), STR_TO_DATE('03/13/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/20/1997', '%m/%d/%Y'), 'Speedy Express', 9.3, 'Berglunds snabbköp', 'Berguvsvägen  8', 
    'Luleå', 'S-958 22', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (254,  'TOMSP', 6, STR_TO_DATE('02/14/1997', '%m/%d/%Y'), STR_TO_DATE('03/14/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/19/1997', '%m/%d/%Y'), 'Speedy Express', 14.68, 'Toms Spezialitäten', 'Luisenstr. 48', 
    'Münster', '44087', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (255, 'RICAR', 4, STR_TO_DATE('02/14/1997', '%m/%d/%Y'), STR_TO_DATE('03/14/1997', '%m/%d/%Y'), 
    STR_TO_DATE('03/07/1997', '%m/%d/%Y'), 'United Package', 68.66, 'Ricardo Adocicados', 'Av. Copacabana, 267', 
    'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (256,  'RANCH', 4, STR_TO_DATE('02/17/1997', '%m/%d/%Y'), STR_TO_DATE('03/17/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/24/1997', '%m/%d/%Y'), 'United Package', 38.82, 'Rancho grande', 'Av. del Libertador 900', 
    'Buenos Aires', '1010', 'Argentina');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (257,'SAVEA', 8, STR_TO_DATE('02/20/1997', '%m/%d/%Y'), STR_TO_DATE('03/20/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/26/1997', '%m/%d/%Y'), 'Speedy Express', 140.26, 'Save-a-lot Markets', '187 Suffolk Ln.', 
    'Boise', 'ID', '83720', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (258, 'RICAR', 8, STR_TO_DATE('03/20/1997', '%m/%d/%Y'), STR_TO_DATE('04/17/1997', '%m/%d/%Y'), 
    STR_TO_DATE('03/25/1997', '%m/%d/%Y'), 'United Package', 64.33, 'Ricardo Adocicados', 'Av. Copacabana, 267', 
    'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (384,'SAVEA', 6, STR_TO_DATE('04/18/1997', '%m/%d/%Y'), STR_TO_DATE('05/16/1997', '%m/%d/%Y'), 
    STR_TO_DATE('04/28/1997', '%m/%d/%Y'),'Federal Shipping', 367.63, 'Save-a-lot Markets', '187 Suffolk Ln.', 
    'Boise', 'ID', '83720', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (385,  'ERNSH', 3, STR_TO_DATE('04/22/1997', '%m/%d/%Y'), STR_TO_DATE('05/20/1997', '%m/%d/%Y'), 
    STR_TO_DATE('05/16/1997', '%m/%d/%Y'), 'United Package', 789.95, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (259, 'BERGS', 1, STR_TO_DATE('05/01/1997', '%m/%d/%Y'), STR_TO_DATE('05/29/1997', '%m/%d/%Y'), 
    STR_TO_DATE('05/07/1997', '%m/%d/%Y'), 'United Package', 244.79, 'Berglunds snabbköp', 'Berguvsvägen  8', 
    'Luleå', 'S-958 22', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (260,  'TOMSP', 3, STR_TO_DATE('05/26/1997', '%m/%d/%Y'), STR_TO_DATE('06/23/1997', '%m/%d/%Y'), 
    STR_TO_DATE('06/02/1997', '%m/%d/%Y'), 'United Package', 1.43, 'Toms Spezialitäten', 'Luisenstr. 48', 
    'Münster', '44087', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (261,'SAVEA', 6, STR_TO_DATE('06/02/1997', '%m/%d/%Y'), STR_TO_DATE('06/30/1997', '%m/%d/%Y'), 
    STR_TO_DATE('06/04/1997', '%m/%d/%Y'),'Federal Shipping', 252.49, 'Save-a-lot Markets', '187 Suffolk Ln.', 
    'Boise', 'ID', '83720', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (262,  'TOMSP', 6, STR_TO_DATE('07/05/1996', '%m/%d/%Y'), STR_TO_DATE('08/16/1996', '%m/%d/%Y'), 
    STR_TO_DATE('07/10/1996', '%m/%d/%Y'), 'Speedy Express', 11.61, 'Toms Spezialitäten', 'Luisenstr. 48', 
    'Münster', '44087', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (263,  'ERNSH', 1, STR_TO_DATE('07/17/1996', '%m/%d/%Y'), STR_TO_DATE('08/14/1996', '%m/%d/%Y'), 
    STR_TO_DATE('07/23/1996', '%m/%d/%Y'), 'Speedy Express', 140.51, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (264,  'ERNSH', 9, STR_TO_DATE('07/23/1996', '%m/%d/%Y'), STR_TO_DATE('08/20/1996', '%m/%d/%Y'), 
    STR_TO_DATE('07/31/1996', '%m/%d/%Y'),'Federal Shipping', 146.06, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (265, 'FOLKO', 6, STR_TO_DATE('07/24/1996', '%m/%d/%Y'), STR_TO_DATE('08/21/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/23/1996', '%m/%d/%Y'),'Federal Shipping', 3.67, 'Folk och fä HB', 'Åkergatan 24', 
    'Bräcke', 'S-844 67', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (266, 'BLONP', 2, STR_TO_DATE('07/25/1996', '%m/%d/%Y'), STR_TO_DATE('08/22/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/12/1996', '%m/%d/%Y'), 'Speedy Express', 55.28, 'Blondel père et fils', '24, place Kléber', 
    'Strasbourg', '67000', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (267, 'FRANK', 4, STR_TO_DATE('07/29/1996', '%m/%d/%Y'), STR_TO_DATE('08/26/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/06/1996', '%m/%d/%Y'), 'Speedy Express', 208.58, 'Frankenversand', 'Berliner Platz 43', 
    'München', '80805', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (268, 'GROSR', 8, STR_TO_DATE('07/30/1996', '%m/%d/%Y'), STR_TO_DATE('08/27/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/02/1996', '%m/%d/%Y'),'Federal Shipping', 66.29, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 
    'Caracas', 'DF', '1081', 'Venezuela');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (269, 'WHITC', 5, STR_TO_DATE('07/31/1996', '%m/%d/%Y'), STR_TO_DATE('08/14/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/09/1996', '%m/%d/%Y'), 'Speedy Express', 4.56, 'White Clover Markets', '1029 - 12th Ave. S.', 
    'Seattle', 'WA', '98124', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (270, 'WARTH', 1, STR_TO_DATE('08/01/1996', '%m/%d/%Y'), STR_TO_DATE('08/29/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/02/1996', '%m/%d/%Y'), 'Speedy Express', 136.54, 'Wartian Herkku', 'Torikatu 38', 
    'Oulu', '90110', 'Finland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (271, 'SPLIR', 6, STR_TO_DATE('08/01/1996', '%m/%d/%Y'), STR_TO_DATE('08/29/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/30/1996', '%m/%d/%Y'), 'United Package', 4.54, 'Split Rail Beer & Ale', 'P.O. Box 555', 
    'Lander', 'WY', '82520', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (272, 'QUICK', 6, STR_TO_DATE('08/02/1996', '%m/%d/%Y'), STR_TO_DATE('08/30/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/06/1996', '%m/%d/%Y'), 'United Package', 98.03, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 
    'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (273, 'RATTC', 3, STR_TO_DATE('08/05/1996', '%m/%d/%Y'), STR_TO_DATE('09/02/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/12/1996', '%m/%d/%Y'),'Federal Shipping', 76.07, 'QUICK-Stop', 'Taucherstraße 10', 
    'Cunewalde', '01307', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (274, 'VINET', 6, STR_TO_DATE('08/06/1996', '%m/%d/%Y'), STR_TO_DATE('09/03/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/16/1996', '%m/%d/%Y'), 'Speedy Express', 6.01, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 
    'Reims', '51100', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (275, 'MAGAA', 1, STR_TO_DATE('08/07/1996', '%m/%d/%Y'), STR_TO_DATE('09/04/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/09/1996', '%m/%d/%Y'), 'Speedy Express', 26.93, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 
    'Bergamo', '24100', 'Italy');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (276, 'TORTU', 8, STR_TO_DATE('08/08/1996', '%m/%d/%Y'), STR_TO_DATE('08/22/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/14/1996', '%m/%d/%Y'),'Federal Shipping', 13.84, 'Tortuga Restaurante', 'Avda. Azteca 123', 
    'México D.F.', '05033', 'Mexico');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (277, 'TRADH', 2, STR_TO_DATE('08/09/1996', '%m/%d/%Y'), STR_TO_DATE('09/06/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/13/1996', '%m/%d/%Y'),'Federal Shipping', 125.77, 'Morgenstern Gesundkost', 'Heerstr. 22', 
    'Leipzig', '04179', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (278, 'BERGS', 8, STR_TO_DATE('08/12/1996', '%m/%d/%Y'), STR_TO_DATE('09/09/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/16/1996', '%m/%d/%Y'), 'United Package', 92.69, 'Berglunds snabbkop', 'Berguvsvägen  8', 
    'Luleå', 'S-958 22', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (279, 'LEHMS', 8, STR_TO_DATE('08/13/1996', '%m/%d/%Y'), STR_TO_DATE('09/10/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/16/1996', '%m/%d/%Y'), 'United Package', 25.83, 'Lehmanns Marktstand', 'Magazinweg 7', 
    'Frankfurt a.M. ', '60528', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (280, 'BERGS', 2, STR_TO_DATE('08/14/1996', '%m/%d/%Y'), STR_TO_DATE('09/11/1996', '%m/%d/%Y'), 
    STR_TO_DATE('09/12/1996', '%m/%d/%Y'), 'Speedy Express', 8.98, 'Berglunds snakop', 'Berguvsvägen  8', 
    'Luleå', 'S-958 22', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (281, 'BERGS', 2, STR_TO_DATE('08/14/1996', '%m/%d/%Y'), STR_TO_DATE('09/11/1996', '%m/%d/%Y'), 
    STR_TO_DATE('09/12/1996', '%m/%d/%Y'), 'Speedy Express', 8.98, 'Berglunds snabbkop', 'Berguvsvägen  8', 
    'Luleå', 'S-958 22', 'Sweden');    
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (287, 'RICAR', 8, STR_TO_DATE('08/22/1996', '%m/%d/%Y'), STR_TO_DATE('09/19/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/28/1996', '%m/%d/%Y'),'Federal Shipping', 12.76, 'Ricardo Adocicados', 'Av. Copacabana, 267', 
    'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (288, 'REGGC', 4, STR_TO_DATE('08/23/1996', '%m/%d/%Y'), STR_TO_DATE('09/20/1996', '%m/%d/%Y'), 
    STR_TO_DATE('09/03/1996', '%m/%d/%Y'), 'Speedy Express', 7.45, 'Reggiani Caseifici', 'Strada Provinciale 124', 
    'Reggio Emilia', '42100', 'Italy');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (289, 'BONAP', 7, STR_TO_DATE('08/26/1996', '%m/%d/%Y'), STR_TO_DATE('09/23/1996', '%m/%d/%Y'), 
    STR_TO_DATE('08/28/1996', '%m/%d/%Y'),'Federal Shipping', 22.77, 'B''s Beverages', 'Fauntleroy Circus', 
    'London', 'EC2 5NT', 'UK');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (290, 'RICAR', 4, STR_TO_DATE('09/06/1996', '%m/%d/%Y'), STR_TO_DATE('10/04/1996', '%m/%d/%Y'), 
    STR_TO_DATE('09/13/1996', '%m/%d/%Y'), 'United Package', 29.76, 'Ricardo Adocicados', 'Av. Copacabana, 267', 
    'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (291,'OLDWO', 8, STR_TO_DATE('09/13/1996', '%m/%d/%Y'), STR_TO_DATE('10/11/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/09/1996', '%m/%d/%Y'),'Federal Shipping', 257.62, 'Old World Delicatessen', '2743 Bering St.', 
    'Anchorage', 'AK', '99508', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (292,  'ERNSH', 4, STR_TO_DATE('10/09/1997', '%m/%d/%Y'), STR_TO_DATE('11/06/1997', '%m/%d/%Y'), 
    STR_TO_DATE('10/17/1997', '%m/%d/%Y'), 'Speedy Express', 272.47, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (293,'SAVEA', 9, STR_TO_DATE('10/08/1996', '%m/%d/%Y'), STR_TO_DATE('11/05/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/10/1996', '%m/%d/%Y'), 'Speedy Express', 214.27, 'Save-a-lot Markets', '187 Suffolk Ln.', 
    'Boise', 'ID', '83720', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (294, 'KOENE', 1, STR_TO_DATE('10/09/1996', '%m/%d/%Y'), STR_TO_DATE('10/23/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/14/1996', '%m/%d/%Y'),'Federal Shipping', 64.86, 'Königlich Essen', 'Maubelstr. 90', 
    'Brandenburg', '14776', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (295, 'BOLID', 4, STR_TO_DATE('10/10/1996', '%m/%d/%Y'), STR_TO_DATE('11/07/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/14/1996', '%m/%d/%Y'), 'United Package', 77.92, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 
    'Madrid', '28023', 'Spain');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (296, 'FOLKO', 2, STR_TO_DATE('10/11/1996', '%m/%d/%Y'), STR_TO_DATE('11/08/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/14/1996', '%m/%d/%Y'), 'Speedy Express', 63.36, 'Folk och fä HB', 'Åkergatan 24', 
    'Bräcke', 'S-844 67', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (297, 'FURIB', 4, STR_TO_DATE('10/14/1996', '%m/%d/%Y'), STR_TO_DATE('11/11/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/17/1996', '%m/%d/%Y'),'Federal Shipping', 87.03, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 
    'Lisboa', '1675', 'Portugal');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (298, 'SPLIR', 4, STR_TO_DATE('10/15/1996', '%m/%d/%Y'), STR_TO_DATE('11/26/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/23/1996', '%m/%d/%Y'), 'United Package', 191.67, 'Split Rail Beer & Ale', 'P.O. Box 555', 
    'Lander', 'WY', '82520', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (299, 'LILAS', 3, STR_TO_DATE('10/16/1996', '%m/%d/%Y'), STR_TO_DATE('11/13/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/28/1996', '%m/%d/%Y'), 'Speedy Express', 12.75, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 
    'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (300, 'BONAP', 9, STR_TO_DATE('10/16/1996', '%m/%d/%Y'), STR_TO_DATE('11/27/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/21/1996', '%m/%d/%Y'), 'Speedy Express', 10.19, 'Bon app''', '12, rue des Bouchers', 
    'Marseille', '13008', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (301, 'MEREP', 3, STR_TO_DATE('10/17/1996', '%m/%d/%Y'), STR_TO_DATE('11/28/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/21/1996', '%m/%d/%Y'), 'United Package', 52.84, 'Mère Paillarde', '43 rue St. Laurent', 
    'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (302, 'WARTH', 5, STR_TO_DATE('10/18/1996', '%m/%d/%Y'), STR_TO_DATE('11/15/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/25/1996', '%m/%d/%Y'),'Federal Shipping', 0.59, 'Wartian Herkku', 'Torikatu 38', 
    'Oulu', '90110', 'Finland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (303, 'VICTE', 8, STR_TO_DATE('10/21/1996', '%m/%d/%Y'), STR_TO_DATE('11/18/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/28/1996', '%m/%d/%Y'), 'United Package', 8.56, 'Victuailles en stock', '2, rue du Commerce', 
    'Lyon', '69004', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_COUNTRY)
 VALUES
   (304, 'HUNGO', 7, STR_TO_DATE('10/22/1996', '%m/%d/%Y'), STR_TO_DATE('11/19/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/24/1996', '%m/%d/%Y'), 'United Package', 42.11, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 
    'Cork', 'Co. Cork', 'Ireland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (305,'OLDWO', 4, STR_TO_DATE('10/25/1996', '%m/%d/%Y'), STR_TO_DATE('11/22/1996', '%m/%d/%Y'), 
    STR_TO_DATE('10/29/1996', '%m/%d/%Y'),'Federal Shipping', 84.21, 'Old World Delicatessen', '2743 Bering St.', 
    'Anchorage', 'AK', '99508', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (306,  'ERNSH', 1, STR_TO_DATE('11/11/1996', '%m/%d/%Y'), STR_TO_DATE('12/09/1996', '%m/%d/%Y'), 
    STR_TO_DATE('11/20/1996', '%m/%d/%Y'), 'Speedy Express', 162.33, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (307,  'ERNSH', 2, STR_TO_DATE('11/29/1996', '%m/%d/%Y'), STR_TO_DATE('12/27/1996', '%m/%d/%Y'), 
    STR_TO_DATE('12/02/1996', '%m/%d/%Y'), 'United Package', 101.95, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (308, 'SPLIR', 8, STR_TO_DATE('12/02/1996', '%m/%d/%Y'), STR_TO_DATE('12/30/1996', '%m/%d/%Y'), 
    STR_TO_DATE('12/09/1996', '%m/%d/%Y'), 'United Package', 195.68, 'Split Rail Beer & Ale', 'P.O. Box 555', 
    'Lander', 'WY', '82520', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (309, 'CHOPS', 6, STR_TO_DATE('12/03/1996', '%m/%d/%Y'), STR_TO_DATE('12/31/1996', '%m/%d/%Y'), 
    STR_TO_DATE('12/27/1996', '%m/%d/%Y'), 'United Package', 1.17, 'Chop-suey Chinese', 'Hauptstr. 31', 
    'Bern', '3012', 'Switzerland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (310, 'LAMAI', 1, STR_TO_DATE('12/03/1996', '%m/%d/%Y'), STR_TO_DATE('12/31/1996', '%m/%d/%Y'), 
    STR_TO_DATE('12/24/1996', '%m/%d/%Y'), 'Speedy Express', 0.45, 'La maison d''Asie', '1 rue Alsace-Lorraine', 
    'Toulouse', '31000', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (311, 'QUEEN', 5, STR_TO_DATE('12/04/1996', '%m/%d/%Y'), STR_TO_DATE('01/01/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/09/1996', '%m/%d/%Y'), 'United Package', 890.78, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 
    'São Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (312, 'MAGAA', 2, STR_TO_DATE('03/10/1998', '%m/%d/%Y'), STR_TO_DATE('04/07/1998', '%m/%d/%Y'), 
    STR_TO_DATE('03/13/1998', '%m/%d/%Y'), 'United Package', 76.33, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 
    'Bergamo', '24100', 'Italy');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (313, 'BONAP', 8, STR_TO_DATE('03/11/1998', '%m/%d/%Y'), STR_TO_DATE('04/08/1998', '%m/%d/%Y'), 
    STR_TO_DATE('03/23/1998', '%m/%d/%Y'),'Federal Shipping', 19.77, 'Bon app''', '12, rue des Bouchers', 
    'Marseille', '13008', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (314,'SAVEA', 7, STR_TO_DATE('03/11/1998', '%m/%d/%Y'), STR_TO_DATE('04/08/1998', '%m/%d/%Y'), 
    STR_TO_DATE('03/20/1998', '%m/%d/%Y'), 'United Package', 400.81, 'Save-a-lot Markets', '187 Suffolk Ln.', 
    'Boise', 'ID', '83720', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_COUNTRY)
 VALUES
   (315,  'HUNGO', 4, STR_TO_DATE('12/05/1996', '%m/%d/%Y'), STR_TO_DATE('01/02/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/11/1996', '%m/%d/%Y'),'Federal Shipping', 124.12, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 
    'Cork', 'Co. Cork', 'Ireland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (316, 'WOLZA', 1, STR_TO_DATE('12/05/1996', '%m/%d/%Y'), STR_TO_DATE('01/02/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/09/1996', '%m/%d/%Y'),'Federal Shipping', 3.94, 'Wolski Zajazd', 'ul. Filtrowa 68', 
    'Warszawa', '01-012', 'Poland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (317, 'HUNGC', 3, STR_TO_DATE('12/06/1996', '%m/%d/%Y'), STR_TO_DATE('01/03/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/09/1996', '%m/%d/%Y'), 'United Package', 20.12, 'Hungry Coyote Import Store', 'City Center Plaza
516 Main St.', 
    'Elgin', 'OR', '97827', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (318, 'MEREP', 1, STR_TO_DATE('12/09/1996', '%m/%d/%Y'), STR_TO_DATE('01/06/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/13/1996', '%m/%d/%Y'), 'United Package', 20.39, 'Mère Paillarde', '43 rue St. Laurent', 
    'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (319, 'SEVES', 1, STR_TO_DATE('12/09/1996', '%m/%d/%Y'), STR_TO_DATE('01/06/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/13/1996', '%m/%d/%Y'),'Federal Shipping', 22.21, 'Seven Seas Imports', '90 Wadhurst Rd.', 
    'London', 'OX15 4NB', 'UK');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (320, 'FOLKO', 5, STR_TO_DATE('12/10/1996', '%m/%d/%Y'), STR_TO_DATE('01/07/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/19/1996', '%m/%d/%Y'),'Federal Shipping', 5.44, 'Folk och fä HB', 'Åkergatan 24', 
    'Bräcke', 'S-844 67', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (321, 'QUEDE', 2, STR_TO_DATE('12/11/1996', '%m/%d/%Y'), STR_TO_DATE('01/08/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/13/1996', '%m/%d/%Y'), 'Speedy Express', 45.03, 'Que Delícia', 'Rua da Panificadora, 12', 
    'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_COUNTRY)
 VALUES
   (322,  'HUNGO', 8, STR_TO_DATE('12/12/1996', '%m/%d/%Y'), STR_TO_DATE('01/09/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/16/1997', '%m/%d/%Y'),'Federal Shipping', 35.03, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 
    'Cork', 'Co. Cork', 'Ireland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (323, 'LILAS', 3, STR_TO_DATE('12/12/1996', '%m/%d/%Y'), STR_TO_DATE('01/09/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/13/1996', '%m/%d/%Y'),'Federal Shipping', 7.99, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 
    'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (324,  'ERNSH', 4, STR_TO_DATE('12/13/1996', '%m/%d/%Y'), STR_TO_DATE('01/10/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/16/1996', '%m/%d/%Y'), 'Speedy Express', 94.77, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (325, 'AROUT', 8, STR_TO_DATE('12/16/1996', '%m/%d/%Y'), STR_TO_DATE('01/13/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/18/1996', '%m/%d/%Y'),'Federal Shipping', 34.24, 'Around the Horn', 'Brook Farm
Stratford St. Mary', 
    'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (326, 'BERGS', 3, STR_TO_DATE('12/16/1996', '%m/%d/%Y'), STR_TO_DATE('01/13/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/20/1996', '%m/%d/%Y'),'Federal Shipping', 168.64, 'Berglunds snabbköp', 'Berguvsvägen  8', 
    'Luleå', 'S-958 22', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (327, 'SUPRD',1, STR_TO_DATE('12/17/1996', '%m/%d/%Y'), STR_TO_DATE('01/14/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/23/1996', '%m/%d/%Y'), 'United Package', 30.96, 'Split Rail Beer & Ale', 'P.O. Box 555', 
    'Lander', 'WY', '82520', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (328, 'FAMIA', 9, STR_TO_DATE('12/18/1996', '%m/%d/%Y'), STR_TO_DATE('01/01/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/25/1996', '%m/%d/%Y'),'Federal Shipping', 13.99, 'Familia Arquibaldo', 'Rua Orós, 92', 
    'São Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (329, 'SANTG', 1, STR_TO_DATE('12/18/1996', '%m/%d/%Y'), STR_TO_DATE('01/15/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/20/1996', '%m/%d/%Y'), 'United Package', 93.63, 'Santé Gourmet', 'Erling Skakkes gate 78', 
    'Stavern', '4110', 'Norway');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (330, 'SEVES', 2, STR_TO_DATE('12/19/1996', '%m/%d/%Y'), STR_TO_DATE('01/16/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/20/1996', '%m/%d/%Y'), 'Speedy Express', 34.86, 'Seven Seas Imports', '90 Wadhurst Rd.', 
    'London', 'OX15 4NB', 'UK');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (331, 'BOTTM', 4, STR_TO_DATE('12/20/1996', '%m/%d/%Y'), STR_TO_DATE('01/17/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/24/1996', '%m/%d/%Y'), 'United Package', 47.42, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 
    'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (332,  'ERNSH', 6, STR_TO_DATE('12/23/1996', '%m/%d/%Y'), STR_TO_DATE('01/20/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/26/1996', '%m/%d/%Y'), 'Speedy Express', 126.38, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (333, 'DRACD', 3, STR_TO_DATE('12/23/1996', '%m/%d/%Y'), STR_TO_DATE('01/20/1997', '%m/%d/%Y'), 
    STR_TO_DATE('12/31/1996', '%m/%d/%Y'),'Federal Shipping', 5.45, 'Drachenblut Delikatessen', 'Walserweg 21', 
    'Aachen', '52066', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (334, 'PICCO', 2, STR_TO_DATE('12/24/1996', '%m/%d/%Y'), STR_TO_DATE('01/21/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/01/1997', '%m/%d/%Y'),'Federal Shipping', 122.46, 'Piccolo und mehr', 'Geislweg 14', 
    'Salzburg', '5020', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (335,'SAVEA', 1, STR_TO_DATE('12/25/1996', '%m/%d/%Y'), STR_TO_DATE('01/22/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/03/1997', '%m/%d/%Y'),'Federal Shipping', 126.56, 'Save-a-lot Markets', '187 Suffolk Ln.', 
    'Boise', 'ID', '83720', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (336, 'HUNGC', 1, STR_TO_DATE('12/25/1996', '%m/%d/%Y'), STR_TO_DATE('01/22/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/03/1997', '%m/%d/%Y'),'Federal Shipping', 30.34, 'Hungry Coyote Import Store', 'City Center Plaza
516 Main St.', 
    'Elgin', 'OR', '97827', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (337, 'HILAA', 6, STR_TO_DATE('12/26/1996', '%m/%d/%Y'), STR_TO_DATE('01/23/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/03/1997', '%m/%d/%Y'), 'Speedy Express', 184.41, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 
    'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (338, 'FRANK', 1, STR_TO_DATE('12/27/1996', '%m/%d/%Y'), STR_TO_DATE('01/10/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/06/1997', '%m/%d/%Y'),'Federal Shipping', 135.35, 'Frankenversand', 'Berliner Platz 43', 
    'München', '80805', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (339, 'PRINI', 5, STR_TO_DATE('12/27/1996', '%m/%d/%Y'), STR_TO_DATE('01/24/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/02/1997', '%m/%d/%Y'), 'Speedy Express', 60.26, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 
    'Lisboa', '1756', 'Portugal');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (340,'SAVEA', 2, STR_TO_DATE('12/30/1996', '%m/%d/%Y'), STR_TO_DATE('01/27/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/09/1997', '%m/%d/%Y'),'Federal Shipping', 89.16, 'Save-a-lot Markets', '187 Suffolk Ln.', 
    'Boise', 'ID', '83720', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (341, 'VAFFE', 8, STR_TO_DATE('12/31/1996', '%m/%d/%Y'), STR_TO_DATE('01/14/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/08/1997', '%m/%d/%Y'),'Federal Shipping', 27.36, 'Vaffeljernet', 'Smagsløget 45', 
    'Århus', '8200', 'Denmark');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (342, 'EASTC', 1, STR_TO_DATE('01/01/1997', '%m/%d/%Y'), STR_TO_DATE('01/29/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/16/1997', '%m/%d/%Y'),'Federal Shipping', 83.93, 'Eastern Connection', '35 King George', 
    'London', 'WX3 6FW', 'UK');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (343, 'RATTC', 1, STR_TO_DATE('01/01/1997', '%m/%d/%Y'), STR_TO_DATE('01/29/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/10/1997', '%m/%d/%Y'),  'Federal Shipping', 12.51,  'Eastern Connection', '2817 Milton Dr.', 
    'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (344,  'ERNSH', 8, STR_TO_DATE('01/02/1997', '%m/%d/%Y'), STR_TO_DATE('02/13/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/10/1997', '%m/%d/%Y'), 'United Package', 67.88, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (345,  'ERNSH', 4, STR_TO_DATE('01/03/1997', '%m/%d/%Y'), STR_TO_DATE('01/31/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/09/1997', '%m/%d/%Y'),'Federal Shipping', 73.79, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (346,  'MAGAA', 2, STR_TO_DATE('01/03/1997', '%m/%d/%Y'), STR_TO_DATE('01/31/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/08/1997', '%m/%d/%Y'), 'Speedy Express', 155.97, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 
    'Bergamo', '24100', 'Italy');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (347, 'LINOD', 1, STR_TO_DATE('01/06/1997', '%m/%d/%Y'), STR_TO_DATE('02/03/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/22/1997', '%m/%d/%Y'), 'Speedy Express', 34.82, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 
    'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (348, 'QUEEN', 7, STR_TO_DATE('01/07/1997', '%m/%d/%Y'), STR_TO_DATE('02/18/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/13/1997', '%m/%d/%Y'), 'Speedy Express', 108.04, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 
    'São Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (349, 'OTTIK', 2, STR_TO_DATE('01/07/1997', '%m/%d/%Y'), STR_TO_DATE('02/04/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/30/1997', '%m/%d/%Y'), 'United Package', 91.48, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 
    'Köln', '50739', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (350, 'FOLIG', 8, STR_TO_DATE('01/08/1997', '%m/%d/%Y'), STR_TO_DATE('02/05/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/14/1997', '%m/%d/%Y'), 'Speedy Express', 11.26, 'Folies gourmandes', '184, chaussée de Tournai', 
    'Lille', '59000', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (351, 'OCEAN', 3, STR_TO_DATE('01/09/1997', '%m/%d/%Y'), STR_TO_DATE('02/06/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/14/1997', '%m/%d/%Y'), 'Speedy Express', 29.83, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585
Piso 20-A', 
    'Buenos Aires', '1010', 'Argentina');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (352, 'BOTTM', 3, STR_TO_DATE('01/10/1997', '%m/%d/%Y'), STR_TO_DATE('02/07/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/15/1997', '%m/%d/%Y'),'Federal Shipping', 2.4, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 
    'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (353, 'BOTTM', 9, STR_TO_DATE('01/10/1997', '%m/%d/%Y'), STR_TO_DATE('02/07/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/21/1997', '%m/%d/%Y'),'Federal Shipping', 23.65, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 
    'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (354, 'WARTH', 8, STR_TO_DATE('01/13/1997', '%m/%d/%Y'), STR_TO_DATE('02/10/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/15/1997', '%m/%d/%Y'), 'United Package', 3.77, 'Wartian Herkku', 'Torikatu 38', 
    'Oulu', '90110', 'Finland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (355, 'LAMAI', 3, STR_TO_DATE('01/14/1997', '%m/%d/%Y'), STR_TO_DATE('02/11/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/16/1997', '%m/%d/%Y'), 'United Package', 95.66, 'La maison d''Asie', '1 rue Alsace-Lorraine', 
    'Toulouse', '31000', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (356, 'FAMIA', 2, STR_TO_DATE('01/14/1997', '%m/%d/%Y'), STR_TO_DATE('02/11/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/17/1997', '%m/%d/%Y'),'Federal Shipping', 21.48, 'Familia Arquibaldo', 'Rua Orós, 92', 
    'São Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (357, 'HUNGC', 3, STR_TO_DATE('01/15/1997', '%m/%d/%Y'), STR_TO_DATE('02/12/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/24/1997', '%m/%d/%Y'), 'Speedy Express', 0.2, 'Hungry Coyote Import Store', 'City Center Plaza
516 Main St.', 
    'Elgin', 'OR', '97827', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (358, 'WARTH', 8, STR_TO_DATE('01/16/1997', '%m/%d/%Y'), STR_TO_DATE('02/13/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/27/1997', '%m/%d/%Y'),'Federal Shipping', 22.72, 'Wartian Herkku', 'Torikatu 38', 
    'Oulu', '90110', 'Finland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (359, 'SIMOB', 4, STR_TO_DATE('01/16/1997', '%m/%d/%Y'), STR_TO_DATE('02/13/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/28/1997', '%m/%d/%Y'),'Federal Shipping', 70.29, 'Simons bistro', 'Vinbæltet 34', 
    'København', '1734', 'Denmark');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (360, 'QUICK', 4, STR_TO_DATE('01/17/1997', '%m/%d/%Y'), STR_TO_DATE('02/14/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/24/1997', '%m/%d/%Y'), 'Speedy Express', 17.55, 'QUICK-Stop', 'Taucherstraße 10', 
    'Cunewalde', '01307', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (361, 'RICSU', 4, STR_TO_DATE('01/20/1997', '%m/%d/%Y'), STR_TO_DATE('02/17/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/30/1997', '%m/%d/%Y'), 'United Package', 137.35, 'Richter Supermarkt', 'Starenweg 5', 
    'Genève', '1204', 'Switzerland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (362, 'WELLI', 3, STR_TO_DATE('01/21/1997', '%m/%d/%Y'), STR_TO_DATE('02/18/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/27/1997', '%m/%d/%Y'), 'Speedy Express', 44.12, 'Wellington Importadora', 'Rua do Mercado, 12', 
    'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (363, 'QUEDE', 8, STR_TO_DATE('01/21/1997', '%m/%d/%Y'), STR_TO_DATE('03/04/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/27/1997', '%m/%d/%Y'), 'Speedy Express', 99.23, 'Que Delícia', 'Rua da Panificadora, 12', 
    'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (364, 'FRANS', 2, STR_TO_DATE('01/22/1997', '%m/%d/%Y'), STR_TO_DATE('02/19/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/31/1997', '%m/%d/%Y'), 'Speedy Express', 3.02, 'Franchi S.p.A.', 'Via Monte Bianco 34', 
    'Torino', '10100', 'Italy');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (365, 'GOURL', 6, STR_TO_DATE('01/23/1997', '%m/%d/%Y'), STR_TO_DATE('02/06/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/24/1997', '%m/%d/%Y'),'Federal Shipping', 24.5, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 
    'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (366, 'MEREP', 7, STR_TO_DATE('01/23/1997', '%m/%d/%Y'), STR_TO_DATE('02/20/1997', '%m/%d/%Y'), 
    STR_TO_DATE('01/27/1997', '%m/%d/%Y'), 'United Package', 370.61, 'Mère Paillarde', '43 rue St. Laurent', 
    'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (367, 'LAMAI', 6, STR_TO_DATE('01/24/1997', '%m/%d/%Y'), STR_TO_DATE('02/21/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/14/1997', '%m/%d/%Y'), 'United Package', 7.93, 'La maison d''Asie', '1 rue Alsace-Lorraine', 
    'Toulouse', '31000', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (368, 'GALED', 4, STR_TO_DATE('01/27/1997', '%m/%d/%Y'), STR_TO_DATE('02/24/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/06/1997', '%m/%d/%Y'), 'Speedy Express', 18.69, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 
    'Barcelona', '8022', 'Spain');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (369, 'PICCO', 4, STR_TO_DATE('01/27/1997', '%m/%d/%Y'), STR_TO_DATE('02/24/1997', '%m/%d/%Y'), 
    STR_TO_DATE('03/03/1997', '%m/%d/%Y'), 'United Package', 31.29, 'Piccolo und mehr', 'Geislweg 14', 
    'Salzburg', '5020', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (370, 'REGGC', 7, STR_TO_DATE('01/28/1997', '%m/%d/%Y'), STR_TO_DATE('02/25/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/04/1997', '%m/%d/%Y'), 'Speedy Express', 11.09, 'Reggiani Caseifici', 'Strada Provinciale 124', 
    'Reggio Emilia', '42100', 'Italy');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_COUNTRY)
 VALUES
   (371, 'HUNGO', 3, STR_TO_DATE('01/29/1997', '%m/%d/%Y'), STR_TO_DATE('03/12/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/07/1997', '%m/%d/%Y'), 'United Package', 56.63, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 
    'Cork', 'Co. Cork', 'Ireland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (372,  'ERNSH', 4, STR_TO_DATE('01/30/1997', '%m/%d/%Y'), STR_TO_DATE('02/13/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/03/1997', '%m/%d/%Y'), 'Speedy Express', 458.78, 'Ernst Handel', 'Kirchgasse 6', 
    'Graz', '8010', 'Austria');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (373, 'BOTTM', 4, STR_TO_DATE('01/30/1997', '%m/%d/%Y'), STR_TO_DATE('02/13/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/07/1997', '%m/%d/%Y'), 'United Package', 44.17, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 
    'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (374, 'SUPRD',3, STR_TO_DATE('01/31/1997', '%m/%d/%Y'), STR_TO_DATE('02/14/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/07/1997', '%m/%d/%Y'), 'United Package', 4.34, 'Split Rail Beer & Ale', 'P.O. Box 555', 
    'Lander', 'WY', '82520', 'USA');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (375, 'PRINI', 3, STR_TO_DATE('02/03/1997', '%m/%d/%Y'), STR_TO_DATE('03/03/1997', '%m/%d/%Y'), 
    STR_TO_DATE('03/04/1997', '%m/%d/%Y'),'Federal Shipping', 73.83, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 
    'Lisboa', '1756', 'Portugal');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (378, 'FOLKO', 3, STR_TO_DATE('02/03/1997', '%m/%d/%Y'), STR_TO_DATE('03/03/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/13/1997', '%m/%d/%Y'), 'United Package', 17.92, 'Folk och fä HB', 'Åkergatan 24', 
    'Bräcke', 'S-844 67', 'Sweden');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (379, 'CONSH', 8, STR_TO_DATE('02/04/1997', '%m/%d/%Y'), STR_TO_DATE('03/18/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/07/1997', '%m/%d/%Y'), 'United Package', 9.21, 'Consolidated Holdings', 'Berkeley Gardens
12  Brewery ', 
    'London', 'WX1 6LT', 'UK');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (380, 'BLONP', 3, STR_TO_DATE('02/05/1997', '%m/%d/%Y'), STR_TO_DATE('03/05/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/11/1997', '%m/%d/%Y'), 'United Package', 156.66, 'Blondel père et fils', '24, place Kléber', 
    'Strasbourg', '67000', 'France');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (381, 'WARTH', 8, STR_TO_DATE('02/05/1997', '%m/%d/%Y'), STR_TO_DATE('03/05/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/12/1997', '%m/%d/%Y'), 'Speedy Express', 19.97, 'Wartian Herkku', 'Torikatu 38', 
    'Oulu', '90110', 'Finland');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (382,  'TOMSP', 3, STR_TO_DATE('02/06/1997', '%m/%d/%Y'), STR_TO_DATE('03/06/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/14/1997', '%m/%d/%Y'), 'United Package', 8.24, 'Toms Spezialitäten', 'Luisenstr. 48', 
    'Münster', '44087', 'Germany');
INSERT INTO ORDERS
   (ORDER_ID, CUSTOMER_CODE, EMPLOYEE_ID, ORDER_DATE, REQUIRED_DATE, SHIPPED_DATE, SHIP_VIA, FREIGHT, SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_REGION, SHIP_POSTAL_CODE, SHIP_COUNTRY)
 VALUES
   (383, 'MEREP', 6, STR_TO_DATE('02/07/1997', '%m/%d/%Y'), STR_TO_DATE('03/07/1997', '%m/%d/%Y'), 
    STR_TO_DATE('02/10/1997', '%m/%d/%Y'),'Federal Shipping', 4.07, 'Mère Paillarde', '43 rue St. Laurent', 
    'Montréal', 'Québec', 'H1J 1C3', 'Canada');

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (248, 'Queso Cabrales', 14, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (248,'Singaporean Hokkien Fried Mee', 9.8, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (248, 'Mozzarella di Giovanni', 34.8, 5, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (249, 'Tofu',18.6, 9, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (249, 'Manjimup Dried Apples', 42.4, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (250, 'Jack''s New England Clam Chowder', 7.7, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (250, 'Manjimup Dried Apples', 42.4, 35, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (250, 'Louisiana Fiery Hot Pepper Sauce', 16.8, 15, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (251, 'Gustaf''s Knackebrod', 16.8, 6, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (251, 'Ravioli Angelo', 15.6, 15, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (251, 'Louisiana Fiery Hot Pepper Sauce', 16.8, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (252, 'Sir Rodney''s Marmalade', 64.8, 40, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (252, 'Geitost', 2, 25, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (252, 'Camembert Pierrot', 27.2, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (253, 'Gorgonzola Telino', 10, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (253, 'Inlagd Sill', 14.4, 42, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (253, 'Maxilaku', 16, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (254, 'Guarana Fantastica', 3.6, 15, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (254, 'Pate chinois', 19.2, 21, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (254, 'Longlife Tofu', 8, 21, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (255, 'Chang', 15.2, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (255, 'Pavlova', 13.9, 35, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (255, 'Inlagd Sill', 15.2, 25, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (255, 'Raclette Courdavault', 44, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (256, 'Perth Pasties', 26.2, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (256, 'Original Frankfurter grune Sosse', 10.4, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (257, 'Schoggi Schokolade', 35.1, 25, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (257, 'Inlagd Sill', 14.4, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (257, 'Original Frankfurter grune Sosse', 10.4, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (258, 'Chang', 15.2, 50, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (258, 'Chef Anton''s Gumbo Mix', 17, 65, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (258, 'Mascarpone Fabioli', 25.6, 6, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (259, 'Sir Rodney''s Scones', 8, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (259,'Gravad lax', 20.8, 1, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (260, 'Jack''s New England Clam Chowder', 7.7, 16, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (260, 'Ravioli Angelo', 15.6, 50, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (260, 'Tarte au sucre', 39.4, 15, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (260, 'Outback Lager', 12, 21, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (261, 'Sir Rodney''s Scones', 8, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (261, 'Steeleye Stout', 14.4, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (262, 'Chef Anton''s Gumbo Mix', 17, 12, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (262, 'Guarana Fantastica',17, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (262, 'Gnocchi di nonna Alice', 30.4, 2, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (263, 'Pavlova', 13.9, 60, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (263, 'Guarana Fantastica', 3.6, 28, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (263, 'Nord-Ost Matjeshering', 20.7, 60, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (263, 'Longlife Tofu', 8, 36, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (264, 'Chang', 15.2, 35, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (264, 'Jack''s New England Clam Chowder', 7.7, 25, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (265, 'Alice Mutton', 31.2, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (265, 'Outback Lager', 12, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (266, 'Queso Manchego La Pastora', 30.4, 12, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (267, 'Boston Crab Meat', 14.7, 50, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (267, 'Raclette Courdavault', 44, 70, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (267, 'Lakkalikoori', 14.4, 15, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (268, 'Thuringer Rostbratwurst', 99, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (268, 'Mozzarella di Giovanni', 27.8, 4, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (269, 'Geitost', 2, 60, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (269, 'Mozzarella di Giovanni', 27.8, 20, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (270, 'Inlagd Sill', 15.2, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (270, 'Ipoh Coffee', 36.8, 25, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (271, 'Geitost', 2, 24, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (272, 'Sir Rodney''s Marmalade', 64.8, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (272, 'Gorgonzola Telino', 10, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (272, 'Mozzarella di Giovanni', 27.8, 24, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (273, 'Ikura', 24.8, 24, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (273, 'Gorgonzola Telino', 10, 15, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (273, 'Geitost', 2, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (273, 'Boston Crab Meat', 14.7, 60, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (273, 'Lakkalikoori', 14.4, 33, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (274, 'Flotemysost', 17.2, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (274, 'Mozzarella di Giovanni', 27.8, 7, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (275, 'Guarana Fantastica', 3.6, 12, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (275, 'Raclette Courdavault', 44, 6, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (276, 'Ikura', 24.8, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (276, 'Konbu', 4.8, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (277, 'Rossle Sauerkraut', 36.4, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (277, 'Tarte au sucre', 39.4, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (278, 'Gula Malacca', 15.5, 16, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (278, 'Raclette Courdavault', 44, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (278, 'Vegie-spread', 35.1, 8, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (278, 'Rod Kaviar', 12, 25, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (279, 'Alice Mutton', 31.2, 15, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (280, 'Guarana Fantastica', 3.6, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (280, 'Pate chinois', 19.2, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (280, 'Rhonbrau Klosterbier', 6.2, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (281, 'Teatime Chocolate Biscuits', 7.3, 1, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (281, 'Guarana Fantastica', 3.6, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (281, 'Steeleye Stout', 14.4, 4, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (288, 'Tourtiere', 5.9, 10, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (288, 'Scottish Longbreads', 10, 3, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (289, 'Aniseed Syrup', 8, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (289, 'Wimmers gute Semmelknodel', 26.6, 9, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (290, 'Chef Anton''s Gumbo Mix', 17, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (290, 'Thuringer Rostbratwurst', 99, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (290, 'Maxilaku', 16, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (290, 'Original Frankfurter grune Sosse', 10.4, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (291, 'Konbu', 4.8, 20, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (291, 'Gula Malacca', 15.5, 24, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (291, 'Manjimup Dried Apples', 42.4, 2, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (292, 'Sir Rodney''s Marmalade', 64.8, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (293, 'Carnarvon Tigers', 50, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (293, 'Guarana Fantastica', 3.6, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (293, 'Vegie-spread', 35.1, 5, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (293, 'Rhonbrau Klosterbier', 6.2, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (294,'Chai', 14.4, 18, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (294, 'Alice Mutton', 31.2, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (294, 'Ipoh Coffee', 36.8, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (294, 'Camembert Pierrot', 27.2, 21, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (294, 'Rhonbrau Klosterbier', 6.2, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (295, 'Gnocchi di nonna Alice', 30.4, 4, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (296,'Queso Cabrales', 16.8, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (296, 'Pavlova', 13.9, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (296, 'Gudbrandsdalsost', 28.8, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (297, 'Inlagd Sill', 14.4, 60, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (297, 'Mozzarella di Giovanni', 27.8, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (298, 'Chang', 15.2, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (298, 'Inlagd Sill', 15.2, 40, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (298, 'Raclette Courdavault', 44, 30, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (298, 'Tarte au sucre', 39.4, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (299, 'Teatime Chocolate Biscuits', 7.3, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (299, 'Outback Lager', 12, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (300, 'Louisiana Hot Spiced Okra', 13.6, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (300, 'Scottish Longbreads', 10, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (301, 'Boston Crab Meat', 14.7, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (301, 'Gnocchi di nonna Alice', 30.4, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (302, 'Alice Mutton', 31.2, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (302, 'Rossle Sauerkraut', 36.4, 28, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (302, 'Ipoh Coffee',36.8, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (303, 'Boston Crab Meat', 14.7, 40, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (303, 'Louisiana Fiery Hot Pepper Sauce', 16.8, 30, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (303, 'Scottish Longbreads', 10, 15, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (304, 'Maxilaku', 16, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (304, 'Raclette Courdavault', 44, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (304, 'Flotemysost', 17.2, 2, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (305, 'Carnarvon Tigers', 50, 25, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (305, 'Thuringer Rostbratwurst', 99, 25, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (305, 'Inlagd Sill', 14.4, 30, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (306, 'Nord-Ost Matjeshering', 20.7, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (306, 'Perth Pasties', 26.2, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (306, 'Tourtiere', 5.9, 5, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (307, 'Tarte au sucre', 39.4, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (307, 'Scottish Longbreads', 10, 3, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (308, 'Gudbrandsdalsost', 28.8, 1, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (308, 'Outback Lager', 12, 5, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (309, 'Chef Anton''s Cajun Seasoning', 17.6, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (309, 'Grandma''s Boysenberry Spread', 20, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (309, 'Singaporean Hokkien Fried Mee', 11.2, 2, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (309, 'Ipoh Coffee',36.8, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (309, 'Flotemysost', 17.2, 3, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (310, 'Pavlova', 13.9, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (310, 'Tarte au sucre', 39.4, 5, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (311, 'Singaporean Hokkien Fried Mee', 11.2, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (311, 'Gudbrandsdalsost', 28.8, 7, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (312, 'Rossle Sauerkraut', 36.4, 4, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (312, 'Ipoh Coffee',36.8, 24, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (312, 'Perth Pasties', 26.2, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (312, 'Rhonbrau Klosterbier', 6.2, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (313, 'Inlagd Sill', 15.2, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (314, 'Mascarpone Fabioli', 25.6, 40, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (314,  'Escargots de Bourgogne', 10.6, 30, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (314, 'Tarte au sucre', 39.4, 25, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (315, 'Sasquatch Ale', 11.2, 14, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (315, 'Outback Lager', 12, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (316, 'Jack''s New England Clam Chowder', 7.7, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (316, 'Tarte au sucre', 39.4, 70, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (317,'Chai', 14.4, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (318, 'Jack''s New England Clam Chowder', 7.7, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (318, 'Lakkalikoori', 14.4, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (319, 'Alice Mutton', 31.2, 8, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (319, 'Rossle Sauerkraut', 36.4, 14, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (319, 'Lakkalikoori', 14.4, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (320, 'Flotemysost', 17.2, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (321, 'Steeleye Stout', 14.4, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (322, 'Filo Mix', 5.6, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (323, 'Genen Shouyu', 12.4, 5, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (323,'Grandma''s Boysenberry Spread', 11.2, 4, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (323, 'Inlagd Sill', 14.4, 4, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (324, 'Pavlova', 13.9, 21, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (324, 'Steeleye Stout', 14.4, 70, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (324, 'Spegesild', 9.6, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (324, 'Raclette Courdavault', 44, 40, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (324, 'Vegie-spread', 35.1, 80, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (325, 'Grandma''s Boysenberry Spread', 25.3, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (325, 'Konbu', 4.8, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (325, 'Tofu',18.6, 9, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (325, 'Gorgonzola Telino', 10, 4, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (325, 'Mozzarella di Giovanni', 27.8, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (326, 'Chef Anton''s Cajun Seasoning', 17.6, 24, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (326, 'Ravioli Angelo', 15.6, 16, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (326, 'Rhonbrau Klosterbier', 6.2, 50, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (327, 'Chang', 15.2, 25, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (327,'Queso Cabrales', 16.8, 50, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (327, 'Nord-Ost Matjeshering', 20.7, 35, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (327,  'Escargots de Bourgogne', 10.6, 30, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (328, 'Raclette Courdavault', 44, 9, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (328, 'Louisiana Fiery Hot Pepper Sauce', 16.8, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (328, 'Scottish Longbreads', 10, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (329, 'Teatime Chocolate Biscuits', 7.3, 10, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (329, 'Nord-Ost Matjeshering', 20.7, 8, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (329, 'Côte de Blaye', 210.8, 20, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (329, 'Gnocchi di nonna Alice', 30.4, 12, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (330, 'Gumbar Gummibarchen', 24.9, 50, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (330, 'Mozzarella di Giovanni', 27.8, 25, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (331, 'Tourtiere', 5.9, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (332, 'Carnarvon Tigers', 50, 40, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (332, 'Singaporean Hokkien Fried Mee', 11.2, 10, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (332, 'Zaanse koeken', 7.6, 16, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (333, 'Tofu',18.6, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (333, 'Sir Rodney''s Scones', 8, 10, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (333, 'Flotemysost', 17.2, 40, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (334, 'Filo Mix', 5.6, 8, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (334, 'Scottish Longbreads', 10, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (335, 'Chang', 15.2, 7, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (335, 'Gorgonzola Telino', 10, 25, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (335, 'Mascarpone Fabioli', 25.6, 6, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (335, 'Manjimup Dried Apples', 42.4, 48, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (336, 'Chef Anton''s Cajun Seasoning', 17.6, 18, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (337, 'Tunnbrod', 7.2, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (337, 'Gumbar Gummibarchen', 24.9, 24, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (337, 'Inlagd Sill', 15.2, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (337,'Gravad lax', 20.8, 28, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (337, 'Mozzarella di Giovanni', 27.8, 25, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (338, 'Alice Mutton', 31.2, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (338, 'Uncle Bob''s Organic Dried Pears', 20.7, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (339, 'Chef Anton''s Cajun Seasoning', 17.6, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (339, 'Alice Mutton', 31.2, 70, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (339, 'Tarte au sucre', 39.4, 28, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (340, 'Carnarvon Tigers', 50, 20, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (340, 'Jack''s New England Clam Chowder', 7.7, 12, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (340, 'Ipoh Coffee',36.8, 40, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (341, 'Geitost', 2, 8, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (341, 'Raclette Courdavault', 44, 9, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (342, 'Chang', 15.2, 24, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (342, 'Gorgonzola Telino', 10, 56, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (343, 'Queso Manchego La Pastora', 30.4, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (343, 'Pavlova', 13.9, 16, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (343, 'Wimmers gute Semmelknodel', 26.6, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (344, 'Longlife Tofu', 8, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (345, 'Chang', 15.2, 45, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (345, 'Pavlova', 13.9, 49, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (345, 'Thuringer Rostbratwurst', 99, 24, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (345, 'Sirop d''erable', 22.8, 90, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (346, 'Schoggi Schokolade', 35.1, 50, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (346,'Queso Cabrales', 16.8, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (346, 'Tourtiere', 5.9, 80, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (346, 'Louisiana Hot Spiced Okra', 13.6, 60, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (347,'Queso Cabrales', 16.8, 6, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (348, 'Rossle Sauerkraut', 36.4, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (348, 'Alice Mutton', 31.2, 10, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (349, 'Gumbar Gummibarchen', 24.9, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (349, 'Steeleye Stout', 14.4, 8, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (350, 'Jack''s New England Clam Chowder', 7.7, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (350, 'Inlagd Sill', 14.4, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (350, 'Tourtiere', 5.9, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (350, 'Teatime Chocolate Biscuits', 7.3, 12, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (350, 'Guarana Fantastica', 3.6, 20, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (351, 'Gorgonzola Telino', 10, 3, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (351, 'Filo Mix', 5.6, 15, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (352, 'Teatime Chocolate Biscuits', 7.3, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (352, 'Louisiana Fiery Hot Pepper Sauce', 16.8, 35, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (352, 'Flotemysost', 17.2, 2, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (353, 'Gumbar Gummibarchen', 24.9, 6, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (354, 'Boston Crab Meat', 14.7, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (355, 'Gnocchi di nonna Alice', 24.8, 14, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (356, 'Filo Mix', 5.6, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (357, 'Tarte au sucre', 39.4, 35, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (357, 'Ikura', 24.8, 20, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (358, 'Tourtiere', 5.9, 6, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (358, 'Pate chinois', 19.2, 120, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (359, 'Wimmers gute Semmelknodel', 26.6, 35, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (360, 'Louisiana Fiery Hot Pepper Sauce', 16.8, 28, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (361, 'Original Frankfurter grune Sosse', 10.4, 55, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (362, 'Rossle Sauerkraut', 36.4, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (362, 'Gula Malacca', 15.5, 100, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (363, 'Chocolade', 10.2, 15, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (363, 'Outback Lager', 12, 25, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (364, 'Pavlova', 13.9, 20, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (364, 'Geitost', 2, 20, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (364, 'Spegesild', 9.6, 10, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (365, 'Inlagd Sill', 14.4, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (365, 'Perth Pasties', 26.2, 50, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (365, 'Sirop d''erable', 22.8, 25, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (365, 'Flotemysost', 17.2, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (366, 'Sir Rodney''s Scones', 8, 40, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (366, 'Maxilaku', 16, 21, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (367, 'Raclette Courdavault', 44, 36, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (368, 'Gumbar Gummibarchen', 24.9, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (368, 'Rossle Sauerkraut', 36.4, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (368, 'Ipoh Coffee',36.8, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (368, 'Gnocchi di nonna Alice', 30.4, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (368, 'Flotemysost', 17.2, 50, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (369,'Uncle Bob''s Organic Dried Pears', 24, 16, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (369, 'Spegesild', 9.6, 20, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (369, 'Mozzarella di Giovanni', 27.8, 40, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (370, 'Scottish Longbreads', 10, 21, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (370, 'Rhonbrau Klosterbier', 6.2, 4, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (371, 'Sir Rodney''s Scones', 8, 40, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (371, 'Nord-Ost Matjeshering', 20.7, 28, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (371, 'Pate chinois', 19.2, 60, 0.25);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (372, 'Konbu', 4.8, 1, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (372, 'Tunnbrod', 7.2, 21, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (373, 'Teatime Chocolate Biscuits', 7.3, 21, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (373, 'Singaporean Hokkien Fried Mee', 11.2, 50, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (374, 'Chef Anton''s Cajun Seasoning', 17.6, 16, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (374, 'Ipoh Coffee',36.8, 3, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (374, 'Gnocchi di nonna Alice', 30.4, 30, 0.2);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (374, 'Camembert Pierrot', 27.2, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (375, 'Guarana Fantastica', 3.6, 25, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (375, 'Thuringer Rostbratwurst', 99, 18, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (375, 'Boston Crab Meat', 14.7, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (375, 'Rogede sild', 7.6, 30, 0.1);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (375,'Valkoinen suklaa', 13, 25, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (378, 'Nord-Ost Matjeshering', 20.7, 8, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (378, 'Ipoh Coffee', 36.8, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (379, 'Chang', 15.2, 40, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (379, 'Pavlova', 13.9, 35, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (379, 'Gula Malacca', 15.5, 2, 0.15);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (380, 'Carnarvon Tigers', 50, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (380, 'Tunnbrod', 7.2, 15, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (380, 'Wimmers gute Semmelknodel', 26.6, 8, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (381,'Uncle Bob''s Organic Dried Pears', 24, 30, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (381, 'Gnocchi di nonna Alice', 30.4, 20, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (382, 'Guarana Fantastica', 3.6, 80, 0.05);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (382, 'Manjimup Dried Apples', 42.4, 18, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (383, 'Geitost', 2, 12, 0);
INSERT INTO ORDER_DETAIL
   (ORDER_ID, PRODUCT_NAME, UNIT_PRICE, QUANTITY, DISCOUNT)
 VALUES
   (383, 'Flotemysost', 17.2, 12, 0);
   
INSERT INTO REGION VALUES('Africa', 'Africa is the world''s second-largest and second-most populous continent' );
INSERT INTO REGION VALUES('Europe',NULL);
INSERT INTO REGION VALUES('Asia', 'Asia is the world''s largest and most populous continent' );
INSERT INTO REGION VALUES('North America', 'Situated mostly in central North America' );
INSERT INTO REGION VALUES('Australia and Oceania', 'Situated mostly in central Australia and Oceania' );

INSERT INTO NATION VALUES('Egypt','Africa','A country in North-East Africa');
INSERT INTO NATION VALUES('United Kingdom','Europe','An island on the outskirts of Europe');
INSERT INTO NATION VALUES('Japan','Asia','The islands on the east coast of China');
INSERT INTO NATION VALUES('Korea','Asia','Korea is located in south Kourean pinisula');
INSERT INTO NATION VALUES('Malaysia','Asia','Malaysia is located in Southeast');
INSERT INTO NATION VALUES('Germany','Europe','Germany is a country in Central Europe');
INSERT INTO NATION VALUES('Netherlands','Europe','Netherlands is a country in Central Europe');
INSERT INTO NATION VALUES('Poland','Europe','Poland is a country in Central Europe');
INSERT INTO NATION VALUES('France','Europe','France  is a country cocated in western Europe');
INSERT INTO NATION VALUES('Sweden','Europe','Sweden  is a buautiful national capitals in the world');
INSERT INTO NATION VALUES('China','Asia','China is located in the East of Asia');
INSERT INTO NATION VALUES('Canada','North America','Situated mostly in Central North America');
INSERT INTO NATION VALUES('USA','North America','Situated mostly in Central North America');
INSERT INTO NATION VALUES('Australia','Australia and Oceania','Situated mostly in Australia');
INSERT INTO NATION VALUES('Finland','Europe','Finland is a located in Northern Europe');
INSERT INTO NATION VALUES('Norway','Europe','The extreme north of Europe');
INSERT INTO NATION VALUES('Denmark','Europe','Denmark is located in north of Europe');
INSERT INTO NATION VALUES('Lithuania','Europe','Lithuania lies on the Eastern coast of the Baltic Sea');
INSERT INTO NATION VALUES('Ukraine','Europe','Ukraine is located in Eastern of Europe');
INSERT INTO NATION VALUES('Moldova','Europe','Moldova is a located in the Central of Europe');
INSERT INTO NATION VALUES('Czech','Europe','Czech is a located in the Central of Europe');
INSERT INTO NATION VALUES('Switzerland','Europe','Switzerland is a located in the Central of Europe');
INSERT INTO NATION VALUES('Hungary','Europe','Hungary is a located in the Central of Europe');
INSERT INTO NATION VALUES('Vietnam','Asia','Vietnam is located at east of Indochina peninsula in Southeast Asia');
INSERT INTO NATION VALUES('Mongolia','Asia','Mongolia is located in the East-central Asia');
INSERT INTO NATION VALUES('Cambodia','Asia','South of Indochina Peninsula in southeast Asia');
INSERT INTO NATION VALUES('Myanmar','Asia','Western of Indochina Peninsula in southeast Asia');
INSERT INTO NATION VALUES('Thailand','Asia','Thalland  is located in the central Indo-China Peninsula of Asia');
INSERT INTO NATION VALUES('Singapore','Asia','Singapore  is located in the Southeast Asia');
INSERT INTO NATION VALUES('Indonesia','Asia','Indonesia  is located in the Southeast Asia');
INSERT INTO NATION VALUES('Pakistan','Asia','Pakistan is located in the South of Asia');
INSERT INTO NATION VALUES('India','Asia','India is located in the South of Asia');
INSERT INTO NATION VALUES('Iran','Asia','Iran is located in the Southwest of Asia');
INSERT INTO NATION VALUES('Iraq','Asia','Iraq is located in the Southwest of Asia');
INSERT INTO NATION VALUES('Syria','Asia','West of the Asian continent, East of the Mediterranean');

INSERT INTO PART VALUES( 'Bolt','Golden Bolts','heavy',25,4.95,'Very reliable bolt');
INSERT INTO PART VALUES( 'Bag','Nu bag','light',50,20.30,'Very reliable bag');
INSERT INTO PART VALUES( 'Trolley','Weisheng Trolley','light',26,00.00,'Very reliable trolly');
INSERT INTO PART VALUES( 'Material','Solo Material','waterproof',16,00.00,'Very reliable material');
INSERT INTO PART VALUES( 'Webbing','Marinepool Webbing','waterproof',12,00.00,'Very strong material');
INSERT INTO PART VALUES( 'Material-X','Zhengan buckle','reliable',27,4.90,'Very reliable bolt');
INSERT INTO PART VALUES( 'Material-Y','Solo Material','reliable',27,4.90,'Very reliable bolt');
INSERT INTO PART VALUES( 'Buckle','Zhengan Buckle','reliable',27,4.90,'Very reliable bolt');
INSERT INTO PART VALUES( 'Watch','Longines','reliable',205,4.70,'Very reliable bag');
INSERT INTO PART VALUES( 'Music Bag','Fusion bag','reliable',200,4.90,'Very reliable bag');
INSERT INTO PART VALUES( 'Shoes','Anta','reliable',300,6.20,'Very reliable shoes');
INSERT INTO PART VALUES( 'Clothing','Anta','reliable',500,2.20,'Good clothing');
INSERT INTO PART VALUES( 'Jacket','Nike','reliable',900,2.60,'Good Jacket');
INSERT INTO PART VALUES( 'Chip','Inter','reliable',1000,2.60,'Good Chip');
INSERT INTO PART VALUES( 'Belt','Aero','reliable',2000,1.20,'Safe belt');
INSERT INTO PART VALUES( 'Bottle','Newbery','safe',3000,2.60,'Useful bottle');
INSERT INTO PART VALUES( 'Plastic Bottle','Newbery','light',3000,0.60,'Easy to carry');
INSERT INTO PART VALUES( 'Packing bag','Newbery','light',5000,2.60,'Good for parcel');
INSERT INTO PART VALUES( 'Umbrella','Solo','reliable',2500,2.10,'Easy carry');
INSERT INTO PART VALUES( 'Scissor','Xiaoqian','reliable',3000,2.10,'Good quality');
INSERT INTO PART VALUES( 'Glasses','Yongcheng','reliable',5000,2.15,'Good quality');
INSERT INTO PART VALUES( 'Computer','Asus','reliable',1000,2.60,'Good quality');
INSERT INTO PART VALUES( 'Laptop','Sanxing','reliable',500,2.12,'Good quality');
INSERT INTO PART VALUES( 'Mouse','Dell','reliable',1000,2.60,'Good quality');
INSERT INTO PART VALUES( 'Mouse pad','Aero','light',600,1.60,'Good quality');
INSERT INTO PART VALUES( 'Cable','Sanxing','reliable',800,1.30,'Sonvenient');
INSERT INTO PART VALUES( 'Mobile','Huawei','reliable',1000,2.60,'Convenient');
INSERT INTO PART VALUES( 'Headset','Huawei','reliable',1000,2.60,'Good quality');
INSERT INTO PART VALUES( 'Cup','IQ','reliable',4000,1.01,'Convenient');
INSERT INTO PART VALUES( 'Parachute','Aero','safe',5000,1.03,'Convenient');
INSERT INTO PART VALUES( 'TV','Changhong','reliable',1000,0.10,'Good quality');
INSERT INTO PART VALUES( 'Sports shous','Qiaodan','light',2600,2.60,'Good quality');
INSERT INTO PART VALUES( 'Trolley bag','Newunity','reliable',1000,2.50,'Good quality');
INSERT INTO PART VALUES( 'Towel','Newunity','soft',5000,2.60,'Fell good');
INSERT INTO PART VALUES( 'Radio','Sanxing','soft',5000,2.60,'Fell good');
INSERT INTO PART VALUES( 'SSD','Solo','soft',5000,2.60,'Fell good');
INSERT INTO PART VALUES( 'Power socket','Shenxi','reliable',8000,4.90,'Good quality');
INSERT INTO PART VALUES( 'Coffee','Nestcafe','healthy',1000,2.60,'Taste good');
INSERT INTO PART VALUES( 'Tea','Black Tea','healthy',1000,2.60,'Taste good');

INSERT INTO SUPPLIER VALUES('Desert','Egypt','23 Pharaoh Ave, Cairo','237592556',200.0, NULL);
INSERT INTO SUPPLIER VALUES('Fusion','United Kingdom','Unit 4 Anchor Business Park, Liversedge','827961118',800.0, 'Reliable');
INSERT INTO SUPPLIER VALUES('JC','Japan','Aomori Tohoku Region, Tokyo','09012345655',200.0,'Picky');
INSERT INTO SUPPLIER VALUES('Solo','Korea','Samcheng Dong, Seoul','01119945655',500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Marinepool','Malaysia','Kuala Lumpur Kuala Lumpur','01213245655',800.0,'Kind');
INSERT INTO SUPPLIER VALUES('Guten Tag','Germany','Am Klingenweg 12, Walluf','4922923007',8000.0,'Kind');
INSERT INTO SUPPLIER VALUES('Paris','France','7 Rue Sainte Foy, Paris','33179970767',8500.0,'Picky');
INSERT INTO SUPPLIER VALUES('Zhengan ','Poland','Ulica Graniczna, Warsaw','48179972967',6500.0,'Picky');
INSERT INTO SUPPLIER VALUES('Longines','Sweden','Place do port 26, Sweden','46179971333',5500.0,'Picky');
INSERT INTO SUPPLIER VALUES('Music bag','Sweden','Place do port 39, Switzerland','46179971566',3000.0,'Picky');
INSERT INTO SUPPLIER VALUES('Shoes','China','Guzhen haizhou 36, Zhongshan','076022318813',5000.0,'Kind');
INSERT INTO SUPPLIER VALUES('Clothing','China','Baiyun road 15, Guangzhou','02026338891',4000.0,'Kind');
INSERT INTO SUPPLIER VALUES('Cheap','USA','1508 S Riverside dr, Edgewater','4135791730',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Belt','Australia','27 Concord Crescent, Edgewater','4135791730',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Bottle','United Kingdom','The Chalet ,The  County Ground, Hove','01273775770',2900.0,'Kind');
INSERT INTO SUPPLIER VALUES('Plastic Bottle','United Kingdom','The Chalet ,The  County Ground, Hove','01273775770',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Packing bag','United Kingdom','The Chalet ,The  County Ground, Hove','01273775770',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Umbrella','France','7 Rue Sainte Foy, Paris','33179970767',6500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Scissor','China','Zhong Shan Road 18, Zhongshan','7622138813',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Glasses','China','Changjiang Road 36, Zhongshan','7622138819',4000.0,'Kind');
INSERT INTO SUPPLIER VALUES('Computer','China','Baoan Road, Industrial zone, Shenzhen','75535791730',4500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Laptop','Korea','Samsung Plaza Seoyeon Dong, Korea','0135791730',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Asus','Korea','Aoho Plaza Seoyeon Dong, Korea','0135791730',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Dell','USA','Station St. Austin, Texas','01356733730',670.0,'Kind');
INSERT INTO SUPPLIER VALUES('Mouse','Australia','Kingsgrove NSW 2208, Sydney','6135791729',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Mobile','China','2 Xincheng Avenue, Dongguan','7535791731',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Headset','China','2 Xincheng Avenue, Dongguan','7535791731',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Cup','Germany','Am Klingenweg 12, 65396 Walluf, Walluf','4915122923007',3500.0,'Kind');
INSERT INTO SUPPLIER VALUES('TV','China','88 Xincheng Avenue, Dongguan','7535791747',1500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Sport shoes','China','29 Shanxiang dr, Zhongshan','7635791730',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Trolley bag','China','16 Haizhou Guzheng, Zhongshan','7622318813',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Towel','China','16 Haizhou Guzheng, Zhongshan ','7622318813',4500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Power socket','China','12 ChangSha DR, Changsha','7335791731',6500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Coffee','China','39 Xincheng Avenue, Dongguan','7555866323',6500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Tea','China','Jinjiang Zone, Fujian','4135791730',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Newbery','USA','Station Street, Washington','0135791745',1200.0,'Kind');
INSERT INTO SUPPLIER VALUES('Xiaoqian','China','29 Shanxiang Dr, Shanghai','7635791730',2578.0,'Kind');
INSERT INTO SUPPLIER VALUES('Yongcheng','China','Jinjiang Zone, Zhongshan','7633456730',1200.0,'Kind');
INSERT INTO SUPPLIER VALUES('Changhong','China','40 Shanxiang Dr, Zhongshan','5673491730',2500.0,'Kind');
INSERT INTO SUPPLIER VALUES('Sanxing','China','45 Shanxiang Dr, Chengdu','6723491730',2000.0,'Kind');
INSERT INTO SUPPLIER VALUES('Huawei','China','29 Jinjiang Dr, Nanjing','76459345730',500.0,NULL);
INSERT INTO SUPPLIER VALUES('IQ','USA','Washington Ave, San Francisco','568888745',5000.0,NULL);
INSERT INTO SUPPLIER VALUES('Qiaodan','China','29 Xincheng Dr, Chengdu','0955545730',1500.0,'Reliable');
INSERT INTO SUPPLIER VALUES('New Unity','USA','Washington Ave, San Francisco','568888745',5000.0,NULL);
INSERT INTO SUPPLIER VALUES('Shenxi','China','45 Jincheng Str, Changsha','07555457889',1500.0,'Reliable');
INSERT INTO SUPPLIER VALUES('Nescafe','France','134 Champs-Elysees, Paris','458885730',7800.0,'Reliable');
INSERT INTO SUPPLIER VALUES('Anxi','China','45 Haizhou St, Zhongshan',33556677822, 7800.0,'Reliable');

INSERT INTO PARTSUPP VALUES('Bolt','Desert',3000,24.00,NULL);
INSERT INTO PARTSUPP VALUES('Bag','JC',1000,10.00,NULL);
INSERT INTO PARTSUPP VALUES('Trolley','Marinepool',100,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Material','Solo',500,00.00,'Kind');
INSERT INTO PARTSUPP VALUES('Webbing','Marinepool',800,00.00,'Friendly');
INSERT INTO PARTSUPP VALUES('Bag','Marinepool',8000,00.00,'Friendly');
INSERT INTO PARTSUPP VALUES('Buckle','Marinepool',6500,00.00,'Friendly');
INSERT INTO PARTSUPP VALUES('Material','Marinepool',6000,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Watch','JC',8500,00.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Bag','Fusion',6000,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Bag','Shenxi',300,00.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Bag','Newbery',6500,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Shoes','JC',3500,00.00,'Unreliable');
INSERT INTO PARTSUPP VALUES('Umbrella','JC',4000,00.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Trolley','JC',2500,00.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Belt','JC',2000,24.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Bottle','JC',1500,10.00,NULL);
INSERT INTO PARTSUPP VALUES('Plastic Bottle','Newbery',1800,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Bag','IQ',500,00.00,'Kind');
INSERT INTO PARTSUPP VALUES('Umbrella','Solo',6500,03.00,'Friendly');
INSERT INTO PARTSUPP VALUES('Scissor','Xiaoqian',8000,20.00,'Friendly');
INSERT INTO PARTSUPP VALUES('Glasses','Yongcheng',400,00.00,'Friendly');
INSERT INTO PARTSUPP VALUES('Computer','Asus',1000,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Laptop','Sanxing',500,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Mouse','Dell',2000,00.10,NULL);
INSERT INTO PARTSUPP VALUES('Mobile','Huawei',3500,00.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Headset','Huawei',4000,00.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Cup','IQ',5500,10.00,'Reliable');
INSERT INTO PARTSUPP VALUES('TV','Changhong',6000,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Shoes','Qiaodan',2500,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Trolley','New Unity',400,00.00,NULL);
INSERT INTO PARTSUPP VALUES('Towel','New Unity',3000,00.00,'supplies');
INSERT INTO PARTSUPP VALUES('Power socket','Shenxi',6000,00.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Coffee','Nescafe',1500,00.00,'Reliable');
INSERT INTO PARTSUPP VALUES('Tea','Anxi',4000,00.00,'Reliable');

INSERT INTO CUSTOMER VALUES('James Bond','United Kingdom', 'MI6 Headquarters, London','87503645956',34.00,'Top secret');
INSERT INTO CUSTOMER VALUES('Wendy Caldwell','United Kingdom','London, Unit 4 Anchor Business Park, London','827961118',15.00,' secret');
INSERT INTO CUSTOMER VALUES('Ayumi Hamasaki','Japan','Aomori Tohoku Region 125, Tokio','09012345655',18.00,' soso');
INSERT INTO CUSTOMER VALUES('Allyssa Ga','Korea','Rodeo Drive 34, Seoul','01113545655',16.00,NULL);
INSERT INTO CUSTOMER VALUES('Lily Wang','Malaysia','Bukit Bintang, Malysia','01213245655',06.00,NULL);
INSERT INTO CUSTOMER VALUES('Markus Courtial','Germany','Am Klingenweg 12, Walluf ','4922923007',03.00,NULL);
INSERT INTO CUSTOMER VALUES('Valerie Lafon','France','7 Rue Sainte Foy, Paris ','33179970767',07.00,NULL);
INSERT INTO CUSTOMER VALUES('Joanna Waszkiewicz','Poland','Ulica Graniczna, Warsaw ','48179972967',07.00,NULL);
INSERT INTO CUSTOMER VALUES('Jean Jacques','Sweden','Place do port 26, Stockholm ','46179971333',60.00,NULL);
INSERT INTO CUSTOMER VALUES('Rolf Person','Sweden','Place do Port 36, Stockholm','46179971367',40.00,NULL);
INSERT INTO CUSTOMER VALUES('Sue Zhong','China','Guzhen Haizhou 36 Zhongshan','076022318813',35.00,NULL);
INSERT INTO CUSTOMER VALUES('Vincent Wang','China','Baiyun Road 15 Guangzhou ','02026338891',20.00,NULL);
INSERT INTO CUSTOMER VALUES('Michael Webster','Australia','1508 S Riverside Dr, Edgewater ','4135791730',12.00,NULL);
INSERT INTO CUSTOMER VALUES('James Webb','United Kingdom','MI6 Headquarters, London','87503645956',34.00,'Top secret');
INSERT INTO CUSTOMER VALUES('Andrew Yuan','China','Long Street 18, Changde','85212345655',18.00,'So so');
INSERT INTO CUSTOMER VALUES('Nicole Szekeres','United Kingdom','Unit 96 Anchor Business Park, London','4413545696',06.00,NULL);
INSERT INTO CUSTOMER VALUES('Ross McPherson','United Kingdom','West Pitkerro Industrial Estate, Dundee','07836559688',07.00,NULL);
INSERT INTO CUSTOMER VALUES('Billy McPherson','United Kingdom','West Pitkerro Industrial Estate, Dundee','07836559688',07.00,NULL);
INSERT INTO CUSTOMER VALUES('Christine Nehler','Germany','Schloss Seefeld Schlosshof 14,Pilsensee, Hannower','4917997296',07.00,'Completed the courses "Successful Telemarketing" and "International Sales Management"');
INSERT INTO CUSTOMER VALUES('Jandrea Sommerfeld','Germany','Schloss Seefeld Schlosshof 99, Berlin','4917997732',60.00,NULL);
INSERT INTO CUSTOMER VALUES('Georgia Penta','Germany','Schloss Seefeld Schlosshof 105, Hamburg','46179971388',40.00,NULL);
INSERT INTO CUSTOMER VALUES('Heike Herr','Germany','Schloss Seefeld Schlosshof 22, Hamburg','46179971699',35.00,'BS degree in chemistry from Boston College');
INSERT INTO CUSTOMER VALUES('Cyan Wang','China','Baiyun Road 23 Guangzhou','02026338788',12.00,'Fluent in Japanese and can read and write French, Portuguese, and Spanish.');
INSERT INTO CUSTOMER VALUES('Yee Wang','China','Guzhen Road 23 Zhongshan','76026338788',18.00,NULL);
INSERT INTO CUSTOMER VALUES('Imran Khan','Australia','Victoria, 30 Tullamarine Road, Melbourne','61422138519',34.00,'Top secret');
INSERT INTO CUSTOMER VALUES('James Webster','USA','West Falmouth MA, 21 Valerie Circle, Port Vale','827961118',15.00,'Secret');
INSERT INTO CUSTOMER VALUES('Bas Krikke','Netherlands','Kaatsheuvel, 5171 PE Kaatsheuvel, Rotterdam','09012345655',18.00,'Confidential');
INSERT INTO CUSTOMER VALUES('Chris Hall','Australia','Victoria, 33 Monterey Drive, Geelong','6140534155',20.00,NULL);
INSERT INTO CUSTOMER VALUES('Vicky Caldwell','United Kingdom','Maidstone, Horseshoes Lane, Liverpool','01213245655',06.00,NULL);
INSERT INTO CUSTOMER VALUES('Frank Quix','Netherlands','3821 AD Amersfoort, Amersfoort, Amsterdam','9033245463',03.00,NULL);
INSERT INTO CUSTOMER VALUES('Nancy Davolio','USA','507 - 20th Ave. E.Apt. 2A, Seattle','2065559857', 234,'BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts');
INSERT INTO CUSTOMER VALUES('Andrew Fuller','USA','908 W. Capital Way, Tacoma', '2065559482',3457.90,'Fluent in French and Italian Sales Professional');

INSERT INTO ORDERS VALUES(1,'James Bond','completed',200.5,'2022-01-27','Very fast delivery');
INSERT INTO ORDERS VALUES(2,'Wendy Caldwell','completed',12020.0,'2022-01-27','Very fast delivery');
INSERT INTO ORDERS VALUES(3,'Ayumi Hamasaki','running',11000.0,'2022-01-27','Very fast delivery');
INSERT INTO ORDERS VALUES(4,'Allyssa Ga','running',10000.0,'2022-02-01','Standard delivery');
INSERT INTO ORDERS VALUES(5,'Lily Wang','running',60000.0,'2022-02-06','Standard delivery');
INSERT INTO ORDERS VALUES(6,'Markus Courtial','running',50000.0,'2022-02-09','Standard delivery');
INSERT INTO ORDERS VALUES(7,'Valerie Lafon','started',70000.0,'2022-03-09','Fast delivery');
INSERT INTO ORDERS VALUES(8,'Joanna Waszkiewicz','started',10000.0,'2022-03-10','Fast delivery');
INSERT INTO ORDERS VALUES(9,'Jean Jacques','started',12000.0,'2022-03-05','Very fast delivery');
INSERT INTO ORDERS VALUES(10,'Wendy Caldwell','started',8000.0,'2022-03-06','Very fast delivery');
INSERT INTO ORDERS VALUES(11,'Sue Zhong','running',3500.0,'2022-03-01','Very fast delivery');
INSERT INTO ORDERS VALUES(12,'Vincent Wang','running',4000.0,'2022-03-15','Fast delivery');
INSERT INTO ORDERS VALUES(13,'Joanna Waszkiewicz','running',3000.0,'2022-03-18','Fast delivery');
INSERT INTO ORDERS VALUES(14,'Michael Webster','running',2500.0,'2022-03-2','Fast delivery');
INSERT INTO ORDERS VALUES(15,'James Bond','completed',300.5,'2022-02-27','Fast delivery');
INSERT INTO ORDERS VALUES(16,'Jandrea Sommerfeld','completed',22020.0,'2022-01-30','Very fast delivery');
INSERT INTO ORDERS VALUES(17,'Andrew Yuan','running',17000.0,'2022-02-26','Very fast delivery');
INSERT INTO ORDERS VALUES(18,'Wendy Caldwell','running',20000.0,'2022-03-15','Very fast delivery');
INSERT INTO ORDERS VALUES(19,'Nicole Szekeres','running',30000.0,'2022-02-22','Standard delivery');
INSERT INTO ORDERS VALUES(20,'Markus Courtial','running',40000.0,'2022-03-16','Standard delivery');
INSERT INTO ORDERS VALUES(21,'Ross McPherson','started',20000.0,'2022-03-20','Standard delivery');
INSERT INTO ORDERS VALUES(22,'Billy McPherson','started',10000.0,'2022-03-19','Standard delivery');
INSERT INTO ORDERS VALUES(23,'Christine Nehler','started',18000.0,'2022-03-05','Very fast delivery');
INSERT INTO ORDERS VALUES(24,'Georgia Penta','started',8000.0,'2022-03-06','Very fast delivery');
INSERT INTO ORDERS VALUES(26,'Heike Herr','running',6500.0,'2022-03-01','Very fast delivery');
INSERT INTO ORDERS VALUES(25,'Cyan Wang','running',6000.0,'2022-03-15','Fast delivery');
INSERT INTO ORDERS VALUES(27,'Yee Wang','running',6000.0,'2022-03-18','Fast delivery');
INSERT INTO ORDERS VALUES(28,'Imran Khan','running',2900.0,'2022-03-2','Very fast delivery');
INSERT INTO ORDERS VALUES(29,'Michael Webster','completed',200.5,'2020-03-27','Very fast delivery');
INSERT INTO ORDERS VALUES(30,'Bas Krikke','completed',12020.0,'2022-03-22','Very fast delivery');
INSERT INTO ORDERS VALUES(31,'Chris Hall','running',11000.0,'2022-03-01','Standard delivery');
INSERT INTO ORDERS VALUES(32,'Vicky Caldwell','running',10000.0,'2022-02-25','Fast delivery');
INSERT INTO ORDERS VALUES(33,'Frank Quix','running',30000.0,'2022-02-06','Very fast delivery');

INSERT INTO LINEITEM VALUES(1,1,'Bolt','Desert',40,5.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(1,2,'Bag','Fusion',800,50.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(1,3,'Trolley','Jc',200,26.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(1,4,'Material','Solo',112,20.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(1,5,'Webbing','Marinepool',3,20.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(1,6,'Buckle','Marinepool',2,20.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(1,7,'Material','Solo',5,25.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(2,1,'Buckle','Marinepool',8,29.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(3,1,'Watch','JC',9,25.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(3,2,'Bag','Fusion',7,20.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(5,1,'Shoes','JC',3,10.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(6,1,'Umbrella','Solo',3,10.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(6,2,'Webbing','Marinepool',5,3.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(7,1,'Belt','JC',6,2.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(8,1,'Belt','JC',50,3.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(9,1,'Plastic Bottle','Newbery',700,45.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(10,1,'Plastic Bottle','Newbery',300,26.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(10,2,'Bag','Newbery',112,20.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(10,3,'Umbrella','Solo',2,10.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(10,4,'Scissor','Xiaoqian',2,20.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(10,5,'Glasses','Yongcheng',7,25.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(10,6,'Computer','Asus',9,29.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(11,1,'Laptop','Sanxing',10,25.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(11,2,'Mouse','Dell',10,20.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(11,3,'Mobile','Huawei',6,10.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(11,4,'Headset','Huawei',5,10.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(11,5,'Tea','Anxi',6,3.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(12,1,'TV','Changhong',6,2.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(12,2,'Shoes','Qiaodan',5,25.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(12,3,'Trolley','New Unity',6,29.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(13,1,'Towel','New Unity',9,25.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(13,2,'Power socket','Shenxi',4,20.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(15,1,'Coffee','Nescafe',5,10.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(15,2,'Tea','Anxi',6,10.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(16,1,'Laptop','Sanxing',13,26.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(16,2,'Shoes','Qiaodan',3,24.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(17,1,'Towel','New Unity',4,25.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(17,2,'Belt','JC',34,2.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(17,3,'Bag','Fusion',40,90.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(17,4,'Belt','JC',67,2.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(18,1,'Bag','Fusion',44,55.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(18,2,'Watch','JC',12,240.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(19,1,'Bag','Fusion',123,56.0,0.0,0.1,NULL);
INSERT INTO LINEITEM VALUES(20,1,'Power socket','Shenxi',20,23.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(21,1,'Coffee','Nescafe',5,10.0,0.0,0.0,NULL);
INSERT INTO LINEITEM VALUES(22,1,'Headset','Huawei',67,10345.0,0.0,0.0,NULL);

INSERT INTO EMPLOYEE VALUES( 1, 'John', NULL, 'Smith', NULL, 42, 'Victoria St.', 'Hurstville', 'NSW', 2456 );
INSERT INTO EMPLOYEE VALUES( 2, 'Peter', NULL, 'Taylor', '1970-01-12', 42, 'Victoria St.', 'Hurstville', 'NSW', 2456 );
INSERT INTO EMPLOYEE VALUES( 3, 'John', NULL, 'Doe', '1966-03-23', 12, 'Station St.', 'Dapto', 'NSW', 2530 );
INSERT INTO EMPLOYEE VALUES( 4, 'John', NULL, 'Gray', '1988-05-05', 16, 'Station St.', 'Dapto', 'NSW', 2530 );
INSERT INTO EMPLOYEE VALUES( 5, 'Adam', NULL, 'Taylor', '1980-01-01', 42, 'Church St.', 'City', 'NSW', 2300 );
INSERT INTO EMPLOYEE VALUES( 6, 'Michael', NULL, 'Jones', '1975-03-05', 23, 'Waterloo Ave.', 'Surry Hills', 'NSW', 2502 );
INSERT INTO EMPLOYEE VALUES( 7, 'Frederic', NULL, 'Jones', NULL, 3, 'Victoria St.', 'Redfern', 'NSW', 2420 );
INSERT INTO EMPLOYEE VALUES( 8, 'Peter', NULL, 'O''Brien', '1983-02-28', 19, 'Lucas Dr.', 'Horsley', 'NSW', 2530 );
INSERT INTO EMPLOYEE VALUES( 9, 'John', NULL, 'Lucas', '1966-12-16', 20, 'Huxley St.', 'Horsley', 'NSW', 2530 );
INSERT INTO EMPLOYEE VALUES( 10, 'John', NULL, 'Fox', '1975-10-15', 18, 'Victoria St.', 'Hurstville', 'NSW', 2456 );
INSERT INTO EMPLOYEE VALUES( 11, 'Adam', NULL, 'Fox', NULL, 45, 'Victoria St.', 'Hurstville', 'NSW', 2456 );
INSERT INTO EMPLOYEE VALUES( 12, 'Phillip', NULL, ',Cox', '1984-12-12', 5, 'The Avenue', 'Rockdale', 'NSW', 2300 );
INSERT INTO EMPLOYEE VALUES( 13, 'Andrew', 'K', 'Smith', '1969-04-04', 42, 'Bambaramba Ave.', 'Pennant Hills', 'NSW', 2556 );
INSERT INTO EMPLOYEE VALUES( 14, 'Andrew', 'R', 'Smith', '1992-04-01', 67, 'King Cr.', 'Hurstville', 'NSW', 2456 );
INSERT INTO EMPLOYEE VALUES( 15, 'Michael', NULL, 'Potter', '1995-04-01', 568, 'Bong Bong St.', 'Horsley', 'NSW', 2530 );
INSERT INTO EMPLOYEE VALUES( 16, 'Harry', NULL, 'Potter', '1995-04-01', 568, 'Bong Bong St.', 'Horsley', 'NSW', 2530 );
INSERT INTO EMPLOYEE VALUES( 17, 'James', NULL, 'Bond', NULL, 007, 'Alan Bond St.', 'Perth', 'WA', 6000 );
INSERT INTO EMPLOYEE VALUES( 18, 'Paris', NULL, 'Hilton', NULL, 1, 'Hilton St.', 'Melbourne', 'Vic', 3000 );
INSERT INTO EMPLOYEE VALUES( 19, 'Lady', NULL, 'Gaga', NULL, 3, 'Pork St.', 'Hobart', 'Tas', 7000 );
INSERT INTO EMPLOYEE VALUES( 20, 'Robin', NULL, 'Hood', NULL, 6, 'Nottingham Pl.', 'Sydney', 'NSW', 2000 );
INSERT INTO EMPLOYEE VALUES( 21, 'Lars', 'Q', 'Peterson', NULL, 6, 'Northfields Ave.', 'Wollongong', 'NSW', 2522 );

INSERT INTO DRIVER VALUES( 1, 10001, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 2, 10008, 'ON LEAVE' );
INSERT INTO DRIVER VALUES( 3, 10002, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 4, 10004, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 5, 10003, 'ON LEAVE' );
INSERT INTO DRIVER VALUES( 6, 10012, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 7, 20002, 'BUSY' );
INSERT INTO DRIVER VALUES( 8, 20003, 'BUSY' );
INSERT INTO DRIVER VALUES( 9, 30005, 'BUSY' );
INSERT INTO DRIVER VALUES( 10, 40002, 'BUSY' );
INSERT INTO DRIVER VALUES( 11, 20045, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 12, 20055, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 13, 20065, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 14, 10305, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 15, 10345, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 16, 10705, 'AVAILABLE' );
INSERT INTO DRIVER VALUES( 17, 40005, 'AVAILABLE' );

INSERT INTO ADMIN VALUES( 18, 'SUPPORT' );
INSERT INTO ADMIN VALUES( 19, 'DIRECTOR' );
INSERT INTO ADMIN VALUES( 20, 'CEO' );

INSERT INTO TRUCK VALUES( 'PKR768', 1234, 3000, 'AVAILABLE' );
INSERT INTO TRUCK VALUES( 'SST005', 12000, 50000, 'USED' );
INSERT INTO TRUCK VALUES( 'QRT834', 5550, 400, 'USED' );
INSERT INTO TRUCK VALUES( 'LUCY01', 100, 300, 'AVAILABLE' );
INSERT INTO TRUCK VALUES( 'KKK007', 10000, 3000, 'MAINTAINED' );
INSERT INTO TRUCK VALUES( 'SYF777', 3333, 4566, 'MAINTAINED' );
INSERT INTO TRUCK VALUES( 'PKR008', 22000, 8800, 'AVAILABLE' );
INSERT INTO TRUCK VALUES( 'XCF003', 30000, 10000, 'AVAILABLE' );
INSERT INTO TRUCK VALUES( 'GFT008', 40000, 15000, 'AVAILABLE' );
INSERT INTO TRUCK VALUES( 'LUCY02', 43000, 3000, 'AVAILABLE' );
INSERT INTO TRUCK VALUES( 'AL08UK', 50000, 5000, 'AVAILABLE' );

INSERT INTO TRIP VALUES( 1, 10001, 'PKR768', '2015-01-12' );
INSERT INTO TRIP VALUES( 2, 10001, 'SYF777', '2015-02-20' );
INSERT INTO TRIP VALUES( 3, 10001, 'KKK007', '2015-03-12' );
INSERT INTO TRIP VALUES( 4, 10001, 'PKR768', '2015-06-29' );
INSERT INTO TRIP VALUES( 5, 20002, 'PKR768', '2015-01-12' );
INSERT INTO TRIP VALUES( 6, 10002, 'SYF777', '2015-02-20' );
INSERT INTO TRIP VALUES( 7, 30005, 'KKK007', '2015-03-12' );
INSERT INTO TRIP VALUES( 8, 10001, 'PKR768', '2015-01-13' );
INSERT INTO TRIP VALUES( 9, 10002, 'QRT834', '2015-09-17' );
INSERT INTO TRIP VALUES(10, 30005, 'KKK007', '2015-12-15' );
INSERT INTO TRIP VALUES(11, 10003, 'SST005', '2016-01-23' );
INSERT INTO TRIP VALUES(12, 10002, 'PKR768', '2016-03-12' );
INSERT INTO TRIP VALUES(13, 20002, 'QRT834', '2015-04-23' );
INSERT INTO TRIP VALUES(14, 20002, 'PKR008', '2015-04-23' );
INSERT INTO TRIP VALUES(15, 30005, 'PKR768', '2015-05-24' );
INSERT INTO TRIP VALUES(16, 30005, 'SST005', '2014-08-02' );
INSERT INTO TRIP VALUES(17, 20002, 'QRT834', '2014-09-17' );
INSERT INTO TRIP VALUES(18, 10001, 'KKK007', '2014-12-15' );
INSERT INTO TRIP VALUES(19, 30005, 'SST005', '2016-01-23' );
INSERT INTO TRIP VALUES(20, 10003, 'PKR768', '2016-03-12' );
INSERT INTO TRIP VALUES(21, 10001, 'QRT834', '2012-04-23' );
INSERT INTO TRIP VALUES(22, 30005, 'PKR008', '2012-04-23' );
INSERT INTO TRIP VALUES(23, 10003, 'PKR768', '2012-05-25' );
INSERT INTO TRIP VALUES(24, 20002, 'SST005', '2012-08-02' );
INSERT INTO TRIP VALUES(25, 10001, 'PKR768', '2014-01-12' );
INSERT INTO TRIP VALUES(26, 10001, 'SYF777', '2013-02-20' );
INSERT INTO TRIP VALUES(27, 20002, 'KKK007', '2013-03-12' );
INSERT INTO TRIP VALUES(28, 30005, 'PKR768', '2010-06-29' );
INSERT INTO TRIP VALUES(29, 10001, 'QRT834', '2010-09-17' );
INSERT INTO TRIP VALUES(30, 10002, 'KKK007', '2010-12-15' );
INSERT INTO TRIP VALUES(31, 10003, 'SST005', '2010-01-23' );
INSERT INTO TRIP VALUES(32, 20002, 'PKR768', '2010-03-12' );
INSERT INTO TRIP VALUES(33, 30005, 'QRT834', '2003-04-23' );
INSERT INTO TRIP VALUES(34, 30005, 'PKR008', '2004-04-23' );
INSERT INTO TRIP VALUES(35, 10001, 'PKR768', '2017-05-24' );

INSERT INTO TRIPLEG VALUES( 1, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES( 1, 2, 'Melbourne', 'Hobart');
INSERT INTO TRIPLEG VALUES( 1, 3, 'Hobart', 'Perth');
INSERT INTO TRIPLEG VALUES( 1, 4, 'Perth', 'Adelaide');
INSERT INTO TRIPLEG VALUES( 1, 5, 'Adelaide', 'Wollongong');
INSERT INTO TRIPLEG VALUES( 2, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES( 3, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES( 4, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES( 5, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES( 6, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES( 7, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES( 8, 1, 'Sydney', 'Newcastle');
INSERT INTO TRIPLEG VALUES( 8, 2, 'Newcastle', 'Brisbane');
INSERT INTO TRIPLEG VALUES( 8, 3, 'Brisbane', 'Perth');
INSERT INTO TRIPLEG VALUES( 9, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(10, 1, 'Sydney', 'Wollongong');
INSERT INTO TRIPLEG VALUES(11, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES(12, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES(13, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(13, 2, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES(14, 1, 'Wollongong', 'Sydney');
INSERT INTO TRIPLEG VALUES(15, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(16, 1, 'Sydney', 'Wollongong');
INSERT INTO TRIPLEG VALUES(17, 1, 'Sydney', 'Wollongong');
INSERT INTO TRIPLEG VALUES(17, 2, 'Wollongong', 'Sydney');
INSERT INTO TRIPLEG VALUES(18, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES(19, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES(20, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(21, 1, 'Wollongong', 'Sydney');
INSERT INTO TRIPLEG VALUES(22, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES(23, 1, 'Wollongong', 'Sydney');
INSERT INTO TRIPLEG VALUES(24, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(25, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES(25, 2, 'Sydney', 'Perth' );
INSERT INTO TRIPLEG VALUES(25, 3, 'Perth', 'Sydney');
INSERT INTO TRIPLEG VALUES(25, 4, 'Sydney', 'Brisbane');
INSERT INTO TRIPLEG VALUES(26, 1, 'Brisbane', 'Sydney'); 
INSERT INTO TRIPLEG VALUES(27, 1, 'Sydney', 'Wollongong');
INSERT INTO TRIPLEG VALUES(28, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(28, 2, 'Melbourne', 'Perth');
INSERT INTO TRIPLEG VALUES(29, 1, 'Sydney', 'Perth');
INSERT INTO TRIPLEG VALUES(30, 1, 'Melbourne', 'Sydney');
INSERT INTO TRIPLEG VALUES(30, 2, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(31, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(32, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(33, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(34, 1, 'Wollongong', 'Sydney');
INSERT INTO TRIPLEG VALUES(35, 1, 'Sydney', 'Melbourne');
INSERT INTO TRIPLEG VALUES(35, 2, 'Melbourne', 'Adelaide');
INSERT INTO TRIPLEG VALUES(35, 3, 'Adelaide', 'Perth');
INSERT INTO TRIPLEG VALUES(35, 4, 'Perth', 'Sydney');

INSERT INTO PERSON VALUES ('Nancy','Davolio','dav001@gmail.com',32);
INSERT INTO PERSON VALUES ('Andrew','Fuller','ful005@126.com',23);
INSERT INTO PERSON VALUES ('Janet','Leverling','lev002@163.com',39);
INSERT INTO PERSON VALUES ('Margaret','Peacock','pea003@qq.com',22);
INSERT INTO PERSON VALUES ('Steven','Buchanan','buch001@qq.com',19);
INSERT INTO PERSON VALUES ('Robert','Suyama','su007@126.com',26);
INSERT INTO PERSON VALUES ('Laura','Callahan','call129@hotmail.com',63);
INSERT INTO PERSON VALUES ('Anne','Dodsworth','dod021@gmail.com',27);
INSERT INTO PERSON VALUES ('Maria','Trujillo ','tru003@hotmail.com',19);
INSERT INTO PERSON VALUES ('Ana','Moreno','more205@126.com',62);
INSERT INTO PERSON VALUES ('Antonio','Hardy','hardy111@baidu.com',62);
INSERT INTO PERSON VALUES ('Thomas','Berglund ','berg123@iq.com',28);
INSERT INTO PERSON VALUES ('Christina','Moos','moos123@iq.com',50);
INSERT INTO PERSON VALUES ('Hanna','Citeaux','cite119@hotmail.com',41);
INSERT INTO PERSON VALUES ('Frederique','Sommer','som002@163.com',50);
INSERT INTO PERSON VALUES ('Martin','Lebihan','lebi025@126.com',42);
INSERT INTO PERSON VALUES ('Laurence','Lincoln','lin103@hotmail.com',27);
INSERT INTO PERSON VALUES ('Elizabeth','Ashworth','ash202@163.com',55);
INSERT INTO PERSON VALUES ('Victoria','Simpson ','simp105@126.com',43);
INSERT INTO PERSON VALUES ('Patricio','Chang ','chang103@hotmail.com',58);
INSERT INTO PERSON VALUES ('Francisco','Wang','wang101@qq.com',52);
INSERT INTO PERSON VALUES ('Yang','Brown','brown099@163.com',25);
INSERT INTO PERSON VALUES ('Pedro','Ottlieb','ott115@hotmail.com',63);
INSERT INTO PERSON VALUES ('Sven','Labrune ','lab036@126.com',41);
INSERT INTO PERSON VALUES ('Janine','Devon','devon088@qq.com',31);
INSERT INTO PERSON VALUES ('Ann','Mendel','mend055@163.com',41);
INSERT INTO PERSON VALUES ('Roland','Cruz ','cruz023@hotmail.com',36);
INSERT INTO PERSON VALUES ('Aria','Roel','roel555@qq.com',44);
INSERT INTO PERSON VALUES ('Diego','Rance ','rance245@126.com',52);