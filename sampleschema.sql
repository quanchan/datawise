/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* Lookup tables                                                        */
/*									*/
CREATE TABLE
  SKILL (
    sname VARCHAR(30) NOT NULL,
    /* Skill name          		*/
    CONSTRAINT SKILL_pkey PRIMARY KEY (sname)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  SREQUIRED (
    sname VARCHAR(30) NOT NULL,
    /* Skill name          		*/
    requires VARCHAR(30) NOT NULL,
    /* Skill required		*/
    slevel DECIMAL(2) NOT NULL,
    /* Level required		*/
    CONSTRAINT SREQUIRED_pkey PRIMARY KEY (sname, requires),
    CONSTRAINT SREQUIRED_fkey1 FOREIGN KEY (sname) REFERENCES SKILL (sname),
    CONSTRAINT SREQUIRED_fkey2 FOREIGN KEY (requires) REFERENCES SKILL (sname)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* Relational tables implementing classes of objects			*/
/*									*/
CREATE TABLE
  APPLICANT (
    /* Applicants			*/
    anumber DECIMAL(6) NOT NULL,
    /* Applicant number           */
    fname VARCHAR(20) NOT NULL,
    /* First name                 */
    lname VARCHAR(30) NOT NULL,
    /* Last name			*/
    dob DATE NOT NULL,
    /* Date of birth		*/
    city VARCHAR(30) NOT NULL,
    /* City			*/
    state VARCHAR(20) NOT NULL,
    /* State			*/
    phone DECIMAL(10) NOT NULL,
    /* Phone number		*/
    fax DECIMAL(10),
    /* Fax number			*/
    email VARCHAR(50),
    /* E-mail address		*/
    CONSTRAINT APPLICANT_pkey PRIMARY KEY (anumber)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  EMPLOYER (
    /* Employers			*/
    ename VARCHAR(100) NOT NULL,
    /* Employer name              */
    city VARCHAR(30) NOT NULL,
    /* City                       */
    state VARCHAR(20) NOT NULL,
    /* State                      */
    phone DECIMAL(10) NOT NULL,
    /* Phone number               */
    fax DECIMAL(10),
    /* Fax number                 */
    email VARCHAR(50),
    /* E-mail address             */
    web VARCHAR(50),
    /* Web site address           */
    CONSTRAINT EMPLOYER_pkey PRIMARY KEY (ename)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  POSITIONS (
    /* Advertised positions	*/
    pnumber DECIMAL(8) NOT NULL,
    /* Position number            */
    title VARCHAR(30) NOT NULL,
    /* Position title             */
    salary DECIMAL(9, 2) NOT NULL,
    /* Salary			*/
    extras VARCHAR(50),
    /* Extras			*/
    bonus DECIMAL(9, 2),
    /* End of year bonus		*/
    specification VARCHAR(2000) NOT NULL,
    /* Specification		*/
    ename VARCHAR(100) NOT NULL,
    /* Employer name		*/
    CONSTRAINT POSITION_pkey PRIMARY KEY (pnumber),
    CONSTRAINT POSITION_fkey FOREIGN KEY (ename) REFERENCES EMPLOYER (ename)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  EMPLBY (
    /* Former employers		*/
    anumber DECIMAL(6) NOT NULL,
    /* Applicant number           */
    ename VARCHAR(100) NOT NULL,
    /* Employer name		*/
    fromdate DATE NOT NULL,
    /* Employed from		*/
    todate DATE,
    /* Employed to		*/
    CONSTRAINT EMPLBY_pkey PRIMARY KEY (anumber, ename, fromdate),
    CONSTRAINT EMPLBY_fkey1 FOREIGN KEY (anumber) REFERENCES APPLICANT (anumber),
    CONSTRAINT EMPLBY_fkey2 FOREIGN KEY (ename) REFERENCES EMPLOYER (ename)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* Relational tables implementing associations				*/
/*									*/
CREATE TABLE
  SPOSSESSED (
    anumber DECIMAL(6) NOT NULL,
    /* Applicant number           */
    sname VARCHAR(30) NOT NULL,
    /* Skill name                 */
    slevel DECIMAL(2) NOT NULL,
    /* Skill level                */
    CONSTRAINT SPOSSESSED_pkey PRIMARY KEY (anumber, sname),
    CONSTRAINT SPOSSESSED_fkey1 FOREIGN KEY (anumber) REFERENCES APPLICANT (anumber) ON DELETE CASCADE,
    CONSTRAINT SPOSSESSED_fkey2 FOREIGN KEY (sname) REFERENCES SKILL (sname),
    CONSTRAINT SPOSSESSED_check1 CHECK (slevel IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10))
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  SNEEDED (
    pnumber DECIMAL(8) NOT NULL,
    /* Position number            */
    sname VARCHAR(30) NOT NULL,
    /* Skill name                 */
    slevel DECIMAL(2) NOT NULL,
    /* Skill level                */
    CONSTRAINT SNEEDED_pkey PRIMARY KEY (pnumber, sname),
    CONSTRAINT SNEEDED_fkey1 FOREIGN KEY (pnumber) REFERENCES POSITIONS (pnumber) ON DELETE CASCADE,
    CONSTRAINT SNEEDED_fkey2 FOREIGN KEY (sname) REFERENCES SKILL (sname),
    CONSTRAINT SNEEDED_check1 CHECK (slevel IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10))
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  APPLIES (
    anumber DECIMAL(6) NOT NULL,
    /* Applicant number		*/
    pnumber DECIMAL(8) NOT NULL,
    /* Position number		*/
    appdate DATE NOT NULL,
    /* Application date 		*/
    CONSTRAINT APPLIES_pkey PRIMARY KEY (anumber, pnumber),
    CONSTRAINT APPLIES_fkey1 FOREIGN KEY (anumber) REFERENCES APPLICANT (anumber) ON DELETE CASCADE,
    CONSTRAINT APPLIES_fkey2 FOREIGN KEY (pnumber) REFERENCES POSITIONS (pnumber) ON DELETE CASCADE
  );

CREATE TABLE
  BANK (
    /* Class BANK                    */
    name VARCHAR(80) NOT NULL,
    /* Bank name                     */
    hq_city VARCHAR(30) NOT NULL,
    /* Headquarters city             */
    hq_street VARCHAR(30) NOT NULL,
    /* Headquarters street           */
    hq_bnumber DECIMAL(4) NOT NULL,
    /* Headquarters building number  */
    ceo_first_name VARCHAR(30) NOT NULL,
    /* Ceo first name                */
    ceo_last_name VARCHAR(30) NOT NULL,
    /* Ceo last name                 */
    ly_profit DECIMAL(12, 2) NULL,
    /* Last year profit              */
    CONSTRAINT BANK_PK PRIMARY KEY (name),
    CONSTRAINT BANK_CK1 UNIQUE (hq_city, hq_street, hq_bnumber),
    CONSTRAINT BANK_CK2 UNIQUE (ceo_first_name, ceo_last_name)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  BANK (
    bank_name VARCHAR(50) NOT NULL,
    /* Bank name                                                    */
    hq_country VARCHAR(30) NOT NULL,
    /* Country part of headquarters address                         */
    hq_city VARCHAR(30) NOT NULL,
    /* City part of headquarters address                            */
    hq_street VARCHAR(30) NOT NULL,
    /* Street part of headquarters address                          */
    hq_bldg_num DECIMAL(4) NOT NULL,
    /* Building DECIMAL part of headquarters address                */
    web_site VARCHAR(200) NOT NULL,
    /* Link to Web site                                             */
    email VARCHAR(100) NOT NULL,
    /* Email address                                                */
    bank_type VARCHAR(30) NULL,
    /* Bank type                                                    */
    CONSTRAINT BANK_PK PRIMARY KEY (bank_name),
    CONSTRAINT BANK_CK1 UNIQUE (hq_country, hq_city, hq_street, hq_bldg_num),
    CONSTRAINT BANK_CK2 UNIQUE (web_site),
    CONSTRAINT BANK_CK3 UNIQUE (email),
    CONSTRAINT BANK_CHECK CHECK (
      bank_type IN (
        'investment',
        'commercial',
        'central',
        'agriculture',
        'construction',
        'industrial'
      )
    )
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  BRANCH (
    bank_name VARCHAR(50) NOT NULL,
    /* Bank name                                                    */
    br_name VARCHAR(50) NOT NULL,
    /* Branch name                                                  */
    br_country VARCHAR(30) NOT NULL,
    /* Country part of branch address                               */
    br_city VARCHAR(30) NOT NULL,
    /* City part of branch address                                  */
    br_street VARCHAR(30) NOT NULL,
    /* Street part of branch address                                */
    br_bldg_num DECIMAL(4) NOT NULL,
    /* Building DECIMAL part of branch address                      */
    total_emps DECIMAL(3) NULL,
    /* Total DECIMAL of employees at a branch                      */
    CONSTRAINT BRANCH_PK PRIMARY KEY (bank_name, br_name, br_country, br_city),
    CONSTRAINT BRANCH_CK1 UNIQUE (br_country, br_city, br_street, br_bldg_num),
    CONSTRAINT BRANCH_FK1 FOREIGN KEY (bank_name) REFERENCES BANK (bank_name)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  EMPLOYEE (
    emp_num DECIMAL(7) NOT NULL,
    /* Employee DECIMAL                                            */
    first_name VARCHAR(20) NULL,
    /* Employee first name                                          */
    last_name VARCHAR(20) NOT NULL,
    /* Employee last name                                           */
    date_of_birth DATE NOT NULL,
    /* Date of birth                                                */
    position VARCHAR(100) NOT NULL,
    /* Position occupied                                            */
    bank_name VARCHAR(50) NOT NULL,
    /* Bank name                                                    */
    br_name VARCHAR(50) NULL,
    /* Branch name                                                  */
    br_country VARCHAR(30) NULL,
    /* Country location of a branch                                 */
    br_city VARCHAR(30) NULL,
    /* City location of a branch                                    */
    CONSTRAINT EMPLOYEE_PK PRIMARY KEY (bank_name, emp_num),
    CONSTRAINT EMPLOYEE_FK1 FOREIGN KEY (bank_name, br_name, br_country, br_city) REFERENCES BRANCH (bank_name, br_name, br_country, br_city)
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  ACCOUNT (
    account_num DECIMAL(10) NOT NULL,
    /* Account DECIMAL                                             */
    bank_name VARCHAR(50) NOT NULL,
    /* Bank name                                                   */
    balance DECIMAL(9, 2) NOT NULL,
    /* Account balance                                             */
    account_type VARCHAR(8) NOT NULL,
    /* Account type: savings, checking, loan                       */
    CONSTRAINT ACCOUNT_PK PRIMARY KEY (account_num, bank_name),
    CONSTRAINT ACCOUNT_FK1 FOREIGN KEY (bank_name) REFERENCES BANK (bank_name),
    CONSTRAINT ACCOUNT_CHK1 CHECK (balance >= 0),
    CONSTRAINT ACCOUNT_CHK2 CHECK (account_type IN ('savings', 'checking', 'loan'))
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  TRANSACTION (
    acc_num DECIMAL(10) NOT NULL,
    /* Account DECIMAL                                              */
    bank_name VARCHAR(50) NOT NULL,
    /* Bank name                                                    */
    tr_date_time DATETIME NOT NULL,
    /* Transaction date                                             */
    amount DECIMAL(7, 2) NOT NULL,
    /* Amount involved                                              */
    type VARCHAR(10) NOT NULL,
    /* Transaction type                                             */
    CONSTRAINT TRANSACTION_PK PRIMARY KEY (acc_num, bank_name, tr_date_time),
    CONSTRAINT TRANSACTION_FK2 FOREIGN KEY (acc_num, bank_name) REFERENCES ACCOUNT (account_num, bank_name),
    CONSTRAINT TRANSACTION_CHK1 CHECK (amount >= 0),
    CONSTRAINT TRANSACTION_CHK2 CHECK (type IN ('deposit', 'withdrawal'))
  );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE
  DEPT (
    DEPTNO DECIMAL(2) NOT NULL,
    DNAME VARCHAR(14) NOT NULL,
    LOC VARCHAR(13) NOT NULL,
    CONSTRAINT DEPT_PK PRIMARY KEY (DEPTNO)
  );

CREATE TABLE
  EMP (
    EMPNO DECIMAL(4) NOT NULL,
    ENAME VARCHAR(10) NOT NULL,
    JOB VARCHAR(9) NOT NULL,
    MGR DECIMAL(4) NULL,
    HIREDATE DATE NOT NULL,
    SAL DECIMAL(7, 2) NOT NULL,
    COMM DECIMAL(7, 2) NULL,
    DEPTNO DECIMAL(2) NOT NULL,
    CONSTRAINT EMP_PK PRIMARY KEY (EMPNO),
    CONSTRAINT EMP_CK UNIQUE (ENAME),
    CONSTRAINT EMP_FK FOREIGN KEY (DEPTNO) REFERENCES DEPT (DEPTNO)
  );

CREATE TABLE REGION(
region_name    VARCHAR(25) 	NOT NULL,
 CONSTRAINT REGION_PK PRIMARY KEY(region_name) );

CREATE TABLE COUNTRY(
country_name    VARCHAR(40) 	NOT NULL,
region_name     VARCHAR(25)     NOT NULL,
 CONSTRAINT COUNTRY_PK PRIMARY KEY(country_name),
 CONSTRAINT COUNTRY_FK FOREIGN KEY(region_name)
 	    REFERENCES REGION(region_name) );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
CREATE TABLE LOCATION(
street_address VARCHAR(40)	NOT NULL,
postal_code    VARCHAR(12)	NOT NULL,
city           VARCHAR(30)	NOT NULL,
state_province VARCHAR(25)	    NULL,
country_name   VARCHAR(40)	NOT NULL,
 CONSTRAINT LOCATION_PK PRIMARY KEY(street_address, postal_code, city, country_name),
 CONSTRAINT LOCATION_CK UNIQUE(street_address, city, state_province, country_name),
 CONSTRAINT LOCATION_FK FOREIGN KEY(country_name)
 	    REFERENCES COUNTRY(country_name) );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
CREATE TABLE DEPARTMENT(
department_name VARCHAR(30)	NOT NULL,
street_address VARCHAR(40)	NOT NULL,
postal_code    VARCHAR(12)	NOT NULL,
city           VARCHAR(30)	NOT NULL,
country_name   VARCHAR(40)	NOT NULL,
manager_id     DECIMAL(6)	    NULL,
 CONSTRAINT DEPARTMENT_PK PRIMARY KEY(department_name),
 CONSTRAINT DEPARTMENT_FK1 FOREIGN KEY(street_address, postal_code, city, country_name)
 	    REFERENCES LOCATION(street_address, postal_code, city, country_name) );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
CREATE TABLE JOB(
job_title      VARCHAR(35)	NOT NULL,
min_salary     DECIMAL(6)	    NULL,
max_salary     DECIMAL(6)	    NULL,
 CONSTRAINT JOB_PK PRIMARY KEY(job_title) );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
CREATE TABLE EMPLOYEE(
employee_id    DECIMAL(6)	NOT NULL,
first_name     VARCHAR(20)	NOT NULL,
last_name      VARCHAR(25)	NOT NULL,
email          VARCHAR(25)	    NULL,
phone_number   VARCHAR(20)	    NULL,
hire_date      DATE		NOT NULL,
job_title      VARCHAR(35)	NOT NULL,
salary         DECIMAL(8,2)	    NULL,
commission_pct DECIMAL(2,2)	    NULL,
supervisor_id     DECIMAL(6)	    NULL,
department_name VARCHAR(30)	    NULL,
 CONSTRAINT EMPLOYEE_PK PRIMARY KEY(employee_id),
 CONSTRAINT EMPLOYEE_CK1 UNIQUE(email),
 CONSTRAINT EMPLOYEE_CK2 UNIQUE(phone_number),
 CONSTRAINT EMPLOYEE_FK1 FOREIGN KEY(department_name)
 	    REFERENCES DEPARTMENT(department_name),
 CONSTRAINT EMPLOYEE_FK2 FOREIGN KEY(supervisor_id)
 	    REFERENCES EMPLOYEE(employee_id),
 CONSTRAINT EMPLOYEE_FK3 FOREIGN KEY(job_title)
 	    REFERENCES JOB(job_title),
CONSTRAINT EMPLOYEE_CH1 CHECK (salary > 0) );

ALTER TABLE DEPARTMENT
ADD ( CONSTRAINT DEPARTMENT_FK2 FOREIGN KEY(manager_id)
      		  REFERENCES EMPLOYEE(employee_id) );
/*										*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*										*/
CREATE TABLE JOBHISTORY(
employee_id   DECIMAL(6)	NOT NULL,
start_date    DATE		NOT NULL,
end_date      DATE		    NULL,
job_title     VARCHAR(35)	NOT NULL,
department_name VARCHAR(30)	    NULL,
 CONSTRAINT JOBHISTORY_PK PRIMARY KEY (employee_id, start_date),
 CONSTRAINT JOBHISTORY_FK1 FOREIGN KEY(job_title)
 	    REFERENCES JOB(job_title),
 CONSTRAINT JOBHISTORY_FK2 FOREIGN KEY(employee_id)
 	    REFERENCES EMPLOYEE(employee_id),
 CONSTRAINT JOBHISTORY_FK3 FOREIGN KEY(department_name)
 	    REFERENCES DEPARTMENT(department_name),
 CONSTRAINT JOBHISTORY_CH CHECK (end_date > start_date) );

CREATE TABLE DEPARTMENT (
	dnumber        DECIMAL(5)              NOT NULL, /* Department number              */
	dname          VARCHAR(30)             NOT NULL, /* Department name                */
	manager        CHAR(5)                     NULL, /* Department manager number      */
	budget         DECIMAL(10,2)           NOT NULL, /* Budget of department           */
	msdate         DATE                        NULL, /* Manager start date             */
	CONSTRAINT DEPARTMENT_PK PRIMARY KEY (dnumber),
	CONSTRAINT DEPARTMENT_CK UNIQUE (dname),
	CONSTRAINT DEPARTMENT_CHECK1 CHECK (budget >= 0),
	CONSTRAINT DEPARTMENT_CHECK2 CHECK (dnumber >=1 ) );

CREATE TABLE DEPTLOCATION (
	dnumber        DECIMAL(5)              NOT NULL, /* Department number              */
	address        VARCHAR(50)             NOT NULL, /* Department address             */
	CONSTRAINT DEPTLOCATION_PK PRIMARY KEY(dnumber, address),
	CONSTRAINT DEPTLOCATION_FK FOREIGN KEY(dnumber) REFERENCES DEPARTMENT(dnumber) );

CREATE TABLE EMPLOYEE (
	enumber        CHAR(5)                 NOT NULL, /* Employee number                */
	name           VARCHAR(30)             NOT NULL, /* Employee name                  */
	dob            DATE                    NOT NULL, /* Date of birth                  */
	address        VARCHAR(50)             NOT NULL, /* Home address                   */
	sex            CHAR(1)                 NOT NULL, /* M-Male, F-Female               */
	salary         DECIMAL(7,2)            NOT NULL, /* Salary                         */
	supervisor     CHAR(5)                     NULL, /* Supervisor number              */
	dnumber        DECIMAL(5)              NOT NULL, /* Department number              */
	CONSTRAINT EMPLOYEE_PK PRIMARY KEY(enumber),
	CONSTRAINT EMPLOYEE_FK1 FOREIGN KEY (supervisor) REFERENCES EMPLOYEE(enumber),
	CONSTRAINT EMPLOYEE_FK2 FOREIGN KEY (dnumber) REFERENCES DEPARTMENT (dnumber),
	CONSTRAINT EMPLOYEE_CHECK1 CHECK ( sex IN ('F', 'M') ),
	CONSTRAINT EMPLOYEE_CHECK2 CHECK ( salary > 0 ) );
	
ALTER TABLE DEPARTMENT ADD CONSTRAINT DEPARTMENT_FK FOREIGN KEY (manager)
	                                            REFERENCES EMPLOYEE(enumber);

CREATE TABLE PROJECT (
	pnumber         DECIMAL(10)             NOT NULL, /* Project number                */
	ptitle          VARCHAR(30)             NOT NULL, /* Project title                 */
	sponsor         VARCHAR(30)                 NULL, /* Project sponsor name          */
	dnumber         DECIMAL(5)              NOT NULL, /* Department number             */
	budget          DECIMAL(10,2)           NOT NULL, /* Project budget                */
	CONSTRAINT Project_PK PRIMARY KEY(PNumber),
	CONSTRAINT Project_FK FOREIGN KEY (DNumber) REFERENCES DEPARTMENT(DNumber),
	CONSTRAINT Project_CK UNIQUE (PTitle) );

CREATE TABLE WORKSON (
	enumber         CHAR(5)                 NOT NULL, /* Employee number                */
	pnumber         DECIMAL(10)             NOT NULL, /* Project number                 */
	hours           DECIMAL(3,1)            NOT NULL, /* Working hours per week         */
	CONSTRAINT WORKSON_PK PRIMARY KEY(enumber, pnumber),
	CONSTRAINT WORKSON_FK1 FOREIGN KEY(enumber) REFERENCES EMPLOYEE(enumber),	
	CONSTRAINT WORKSON_FK2 FOREIGN KEY(pnumber) REFERENCES PROJECT(pnumber) );

CREATE TABLE DEPENDENT (
	enumber         CHAR(5)                 NOT NULL, /* Employee number                */
	dname           VARCHAR(30)             NOT NULL, /* Dependent name                 */
	sex             CHAR(1)                     NULL, /* Dependent sex, Male, Female    */
	dob             DATE                        NULL, /* Date of birth                  */
	relationship    VARCHAR(8)                  NULL, /* Relationship with the employee */
	CONSTRAINT DEPENDENT_PK PRIMARY KEY(enumber, dname),
	CONSTRAINT DEPENDENT_FK FOREIGN KEY(enumber) REFERENCES EMPLOYEE(enumber),
	CONSTRAINT DEPENDENT_CHECK1 CHECK ( sex IN ('F', 'M') ),
	CONSTRAINT DEPENDENT_CHECK2 CHECK ( relationship IN ('daughter', 'son') ) );

  CREATE TABLE CATEGORY
(
    CATEGORY_NAME 	VARCHAR(30)	NOT NULL,
    DESCRIPTION 	VARCHAR(2000),
    PICTURE 		VARCHAR(255),
    CONSTRAINT PK_CATEGORY PRIMARY KEY (CATEGORY_NAME)
);

/* COMMENT ON COLUMN CATEGORY.CATEGORY_NAME IS 'Name of food category.';
   COMMENT ON COLUMN CATEGORY.PICTURE IS 'A picture representing the food category.';				    */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE CUSTOMER
(
    CUSTOMER_CODE 	VARCHAR(5)	NOT NULL,
    COMPANY_NAME 	VARCHAR(40)	NOT NULL,
    CONTACT_NAME 	VARCHAR(30),
    CONTACT_TITLE 	VARCHAR(30),
    ADDRESS 		VARCHAR(60),
    CITY 		VARCHAR(15),
    REGION 		VARCHAR(15),
    POSTAL_CODE 	VARCHAR(10),
    COUNTRY 		VARCHAR(15),
    PHONE 		VARCHAR(24),
    FAX 		VARCHAR(24),
    CONSTRAINT PK_CUSTOMER PRIMARY KEY (CUSTOMER_CODE)
);

/* COMMENT ON COLUMN CUSTOMER.CUSTOMER_CODE IS 'Unique five-character code based on customer name.';
   COMMENT ON COLUMN CUSTOMER.ADDRESS IS 'Street or post-office box.';
   COMMENT ON COLUMN CUSTOMER.REGION IS 'State or province.';
   COMMENT ON COLUMN CUSTOMER.PHONE IS 'Phone number includes country code or area code.';
   COMMENT ON COLUMN CUSTOMER.FAX IS 'Phone number includes country code or area code.';                           */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE EMPLOYEE
(
    EMPLOYEE_ID		DECIMAL(9)	NOT NULL,
    LASTNAME 		VARCHAR(20) 	NOT NULL,
    FIRSTNAME 		VARCHAR(10) 	NOT NULL,
    TITLE 		VARCHAR(30),
    TITLE_OF_COURTESY 	VARCHAR(25),
    BIRTHDATE 		DATE,
    HIREDATE 		DATE,
    ADDRESS 		VARCHAR(60),
    CITY 		VARCHAR(15),
    REGION 		VARCHAR(15),
    POSTAL_CODE 	VARCHAR(10),
    COUNTRY 		VARCHAR(15),
    HOME_PHONE 		VARCHAR(24),
    EXTENSION 		VARCHAR(4),
    PHOTO 		VARCHAR(255),
    NOTES 		VARCHAR(2000),
    REPORTS_TO 		DECIMAL(9),
    CONSTRAINT PK_EMPLOYEE PRIMARY KEY (EMPLOYEE_ID)
);

/* COMMENT ON COLUMN EMPLOYEE.EMPLOYEE_ID IS 'Number assigned to new employee.';
   COMMENT ON COLUMN EMPLOYEE.TITLE IS 'Employee''s title.';
   COMMENT ON COLUMN EMPLOYEE.TITLE_OF_COURTESY IS 'Title used in salutations.';
   COMMENT ON COLUMN EMPLOYEE.ADDRESS IS 'Street or post-office box.';
   COMMENT ON COLUMN EMPLOYEE.REGION IS 'State or province.';
   COMMENT ON COLUMN EMPLOYEE.HOME_PHONE IS 'Phone number includes country code or area code.';
   COMMENT ON COLUMN EMPLOYEE.EXTENSION IS 'Internal telephone extension number.';
   COMMENT ON COLUMN EMPLOYEE.PHOTO IS 'Picture of employee.';
   COMMENT ON COLUMN EMPLOYEE.NOTES IS 'General information about employee''s background.';
   COMMENT ON COLUMN EMPLOYEE.REPORTS_TO IS 'Employee''s supervisor.';						    */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE SUPPLIER
(
    COMPANY_NAME 	VARCHAR(40)	NOT NULL,
    CONTACT_NAME 	VARCHAR(30),
    CONTACT_TITLE 	VARCHAR(30),
    ADDRESS 		VARCHAR(60),
    CITY 		VARCHAR(15),
    REGION 		VARCHAR(15),
    POSTAL_CODE 	VARCHAR(10),
    COUNTRY 		VARCHAR(15),
    PHONE 		VARCHAR(24),
    FAX 		VARCHAR(24),
    HOME_PAGE 		VARCHAR(500),
    CONSTRAINT PK_SUPPLIER PRIMARY KEY (COMPANY_NAME)  
);

/* COMMENT ON COLUMN SUPPLIER.COMPANY_NAME IS 'Name of supplying company.';
   COMMENT ON COLUMN SUPPLIER.ADDRESS IS 'Street or post-office box.';
   COMMENT ON COLUMN SUPPLIER.REGION IS 'State or province.';
   COMMENT ON COLUMN SUPPLIER.PHONE IS 'Phone number includes country code or area code.';
   COMMENT ON COLUMN SUPPLIER.FAX IS 'Phone number includes country code or area code.';
   COMMENT ON COLUMN SUPPLIER.HOME_PAGE IS 'Supplier''s home page on World Wide Web.';				    */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE SHIPPER
(
    COMPANY_NAME 	VARCHAR(40)	NOT NULL,
    PHONE 		VARCHAR(24),
    CONSTRAINT PK_SHIPPER PRIMARY KEY (COMPANY_NAME),
    CONSTRAINT CK_SHIPPER UNIQUE (PHONE)
);

/* COMMENT ON COLUMN SHIPPER.COMPANY_NAME IS 'Name of shipping company.';
   COMMENT ON COLUMN SHIPPER.PHONE IS 'Phone number includes country code or area code.'                           */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE PRODUCT
(
    PRODUCT_NAME 	VARCHAR(40) 	NOT NULL,
    SUPPLIER_NAME	VARCHAR(40) 	NOT NULL,
    CATEGORY_NAME	VARCHAR(30)	NOT NULL,
    QUANTITY_PER_UNIT 	VARCHAR(20),
    UNIT_PRICE 		DECIMAL(10,2)	NOT NULL	DEFAULT 0,
    UNITS_IN_STOCK 	DECIMAL(9) 	NOT NULL 	DEFAULT 0,
    UNITS_ON_ORDER 	DECIMAL(9) 	NOT NULL	DEFAULT 0, 
    REORDER_LEVEL 	DECIMAL(9) 	NOT NULL 	DEFAULT 0,
    DISCONTINUED 	CHAR(1)		NOT NULL	DEFAULT 'N',
    CONSTRAINT PK_PRODUCT PRIMARY KEY (PRODUCT_NAME),
    CONSTRAINT FK_CATEGORY_NAME FOREIGN KEY (CATEGORY_NAME) REFERENCES CATEGORY(CATEGORY_NAME),
    CONSTRAINT FK_SUPPLIER_NAME FOREIGN KEY (SUPPLIER_NAME) REFERENCES SUPPLIER(COMPANY_NAME),
    CONSTRAINT CK_PRODUCT_UNIT_PRICE CHECK (UNIT_PRICE >= 0),
    CONSTRAINT CK_PRODUCT_UNITS_IN_STOCK CHECK (UNITS_IN_STOCK >= 0),
    CONSTRAINT CK_PRODUCT_UNITS_ON_ORDER CHECK (UNITS_ON_ORDER >= 0),
    CONSTRAINT CK_PRODUCT_REORDER_LEVEL CHECK (REORDER_LEVEL >= 0),
    CONSTRAINT CK_PRODUCT_DISCONTINUED CHECK (DISCONTINUED in ('Y','N'))
);
  
/* COMMENT ON COLUMN PRODUCT.SUPPLIER_ IS 'Same entry as in Suppliers table.';
   COMMENT ON COLUMN PRODUCT.CATEGORY_ID IS 'Same entry as in Categories table.';
   COMMENT ON COLUMN PRODUCT.QUANTITY_PER_UNIT IS '(e.g., 24-count case, 1-liter bottle).';
   COMMENT ON COLUMN PRODUCT.REORDER_LEVEL IS 'Minimum units to maintain in stock.';
   COMMENT ON COLUMN PRODUCT.DISCONTINUED IS 'Yes means item is no longer available.';				    */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
CREATE TABLE ORDERS
(
    ORDER_ID		DECIMAL(9)	NOT NULL,
    CUSTOMER_CODE 	VARCHAR(5) 	NOT NULL,
    EMPLOYEE_ID 	DECIMAL(9) 	NOT NULL,
    ORDER_DATE 		DATE 	   	NOT NULL,
    REQUIRED_DATE 	DATE,
    SHIPPED_DATE 	DATE,
    SHIP_VIA 		VARCHAR(40),
    FREIGHT 		DECIMAL(10,2)			DEFAULT 0,
    SHIP_NAME 		VARCHAR(40),
    SHIP_ADDRESS 	VARCHAR(60),
    SHIP_CITY 		VARCHAR(15),
    SHIP_REGION 	VARCHAR(15),
    SHIP_POSTAL_CODE 	VARCHAR(10),
    SHIP_COUNTRY 	VARCHAR(15),
    CONSTRAINT PK_ORDERS PRIMARY KEY (ORDER_ID),
    CONSTRAINT FK_CUSTOMER_CODE FOREIGN KEY (CUSTOMER_CODE) REFERENCES CUSTOMER(CUSTOMER_CODE),  
    CONSTRAINT FK_EMPLOYEE_ID FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID),  
    CONSTRAINT FK_SHIP_VIA FOREIGN KEY (SHIP_VIA) REFERENCES SHIPPER(COMPANY_NAME)  
);

/* COMMENT ON COLUMN ORDERS.ORDER_ID IS 'Unique order number.';
   COMMENT ON COLUMN ORDERS.CUSTOMER_CODE IS 'Same entry as in Customers table.';
   COMMENT ON COLUMN ORDERS.EMPLOYEE_ID IS 'Same entry as in Employees table.';
   COMMENT ON COLUMN ORDERS.SHIP_VIA IS 'Same as Company name in Shippers table.';
   COMMENT ON COLUMN ORDERS.SHIP_NAME IS 'Name of person or company to receive the shipment.';
   COMMENT ON COLUMN ORDERS.SHIP_ADDRESS IS 'Street address only -- no post-office box allowed.';
   COMMENT ON COLUMN ORDERS.SHIP_REGION IS 'State or province.';						    */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE ORDER_DETAIL
(
    ORDER_ID		 DECIMAL(9)	NOT NULL,
    PRODUCT_NAME 	 VARCHAR(40) 	NOT NULL,
    UNIT_PRICE 		 DECIMAL(10,2)	NOT NULL	DEFAULT 0,
    QUANTITY 		 DECIMAL(9)	NOT NULL  	DEFAULT 1 ,
    DISCOUNT 		 DECIMAL(4,2)	NOT NULL  	DEFAULT 0,
    CONSTRAINT PK_ORDER_DETAIL PRIMARY KEY (ORDER_ID, PRODUCT_NAME),
    CONSTRAINT FK_ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES ORDERS (ORDER_ID),
    CONSTRAINT FK_PRODUCT_NAME FOREIGN KEY (PRODUCT_NAME) REFERENCES PRODUCT (PRODUCT_NAME),
    CONSTRAINT CK_ORDER_DETAIL_UNIT_PRICE CHECK (UNIT_PRICE >= 0),
    CONSTRAINT CK_ORDER_DETAIL_QUANTITY CHECK (QUANTITY > 0),
    CONSTRAINT CK_ORDER_DETAIL_DISCOUNT CHECK (DISCOUNT between 0 and 1)
);

/* COMMENT ON COLUMN ORDER_DETAIL.UNIT_PRICE IS 'Unit price of product';
   COMMENT ON COLUMN ORDER_DETAIL.QUANTITY IS 'Quantity ordered.';
   COMMENT ON COLUMN ORDER_DETAIL.QUANTITY IS 'Discount applied.';						    */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE REGION(
R_NAME          VARCHAR(25)	NOT NULL,
R_COMMENT       VARCHAR(500)	    NULL,
	CONSTRAINT REGION_PKEY PRIMARY KEY(R_NAME) );



/*                                                                               */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*                                                                               */
CREATE TABLE NATION(
N_NAME          VARCHAR(25)	NOT NULL,
N_R_NAME        VARCHAR(25)	NOT NULL,
N_COMMENT       VARCHAR(500)	    NULL,
	CONSTRAINT NATION_PKEY PRIMARY KEY (N_NAME),
	CONSTRAINT NATION_FKEY1 FOREIGN KEY (N_R_NAME)
		REFERENCES REGION(R_NAME) );


/*                                                                               */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*                                                                               */
CREATE TABLE PART(
P_NAME         VARCHAR(55)	NOT NULL,
P_BRAND        VARCHAR(20)	NOT NULL,
P_TYPE         VARCHAR(25)	    NULL,
P_SIZE         DECIMAL(12)	    NULL,
P_RETAILPRICE  DECIMAL(12,2)	NOT NULL,
P_COMMENT      VARCHAR(500)	    NULL,
	CONSTRAINT PART_PKEY PRIMARY KEY (P_NAME),
	CONSTRAINT PART_CHECK2 CHECK(P_SIZE >= 0),
	CONSTRAINT PART_CHECK3 CHECK(P_RETAILPRICE >= 0) );


/*                                                                               */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*                                                                               */
CREATE TABLE SUPPLIER(
S_NAME		VARCHAR(55)	NOT NULL,
S_N_NAME	VARCHAR(25)	NOT NULL,
S_ADDRESS	VARCHAR(40)	NOT NULL,
S_PHONE 	VARCHAR(15)	NOT NULL,
S_ACCTBAL	DECIMAL(12,2)	NOT NULL,
S_COMMENT	VARCHAR(500)	    NULL,
	CONSTRAINT SUPPLIER_PKEY PRIMARY KEY (S_NAME),
	CONSTRAINT SUPPLIER_FKEY1 FOREIGN kEY (S_N_NAME)
		REFERENCES NATION(N_NAME) );


/*                                                                               */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*                                                                               */
CREATE TABLE PARTSUPP(
PS_P_NAME 	VARCHAR(55)	NOT NULL,
PS_S_NAME	VARCHAR(55)	NOT NULL,
PS_AVAILQTY	DECIMAL(12)	NOT NULL,
PS_SUPPLYCOST	DECIMAL(12,2)	NOT NULL,
PS_COMMENT	VARCHAR(500)	    NULL,
	CONSTRAINT PARTSUPP_PKEY PRIMARY KEY (PS_P_NAME, PS_S_NAME),
	CONSTRAINT PARTSUPP_FKEY1 FOREIGN KEY (PS_P_NAME)
		REFERENCES PART(P_NAME),
	CONSTRAINT PARTSUPP_FKEY2 FOREIGN kEY (PS_S_NAME)
		REFERENCES SUPPLIER(S_NAME),
	CONSTRAINT PARTSUPP_CHECK2 CHECK(PS_AVAILQTY >= 0),
	CONSTRAINT PARTSUPP_CHECK3 CHECK(PS_SUPPLYCOST >= 0) );

/*                                                                               */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*                                                                               */
CREATE TABLE CUSTOMER(
C_NAME         VARCHAR(25)	NOT NULL,
C_N_NAME       VARCHAR(25)	NOT NULL,
C_ADDRESS      VARCHAR(100)	NOT NULL,
C_PHONE        VARCHAR(15)	NOT NULL,
C_ACCTBAL      DECIMAL(12,2)	NOT NULL,
C_COMMENT      VARCHAR(500)	    NULL,
	CONSTRAINT CUSTOMER_PKEY PRIMARY KEY(C_NAME),
	CONSTRAINT CUSTOMER_FKEY1 FOREIGN kEY (C_N_NAME)
		REFERENCES NATION(N_NAME) );


/*                                                                               */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*                                                                               */
CREATE TABLE ORDERS(
O_NUMBER       DECIMAL(12)	NOT NULL,
O_C_NAME       VARCHAR(25)	NOT NULL,
O_STATUS       VARCHAR(10)     NOT NULL,
O_TOTALPRICE   DECIMAL(12,2)	NOT NULL,
O_DATE         DATE		NOT NULL,
O_COMMENT      VARCHAR(500)	    NULL,
	CONSTRAINT ORDERS_PKEY PRIMARY KEY (O_NUMBER),
	CONSTRAINT ORDERS_FKEY1 FOREIGN KEY (O_C_NAME)
		REFERENCES CUSTOMER(C_NAME),
	CONSTRAINT ORDER_CHECK1 CHECK( O_TOTALPRICE >= 0) );


/*                                                                               */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*                                                                               */
CREATE TABLE LINEITEM(
L_O_NUMBER     DECIMAL(12)	NOT NULL,
L_LINENUMBER   DECIMAL(12)	NOT NULL,
L_P_NAME       VARCHAR(55)	NOT NULL,
L_S_NAME       VARCHAR(55)	NOT NULL,
L_QUANTITY     DECIMAL(12)	NOT NULL,
L_PRICE        DECIMAL(12,2)	NOT NULL,
L_DISCOUNT     DECIMAL(12,2)	NOT NULL,
L_TAX          DECIMAL(12,2)	NOT NULL,
L_COMMENT      VARCHAR(44)	    NULL,
	CONSTRAINT LINEITEM_PKEY PRIMARY KEY (L_O_NUMBER, L_LINENUMBER),
	CONSTRAINT LINEITEM_FKEY1 FOREIGN kEY (L_O_NUMBER)
		REFERENCES ORDERS(O_NUMBER),
	CONSTRAINT LINEITEM_FKEY2 FOREIGN KEY (L_P_NAME,L_S_NAME)
		REFERENCES PARTSUPP(PS_P_NAME, PS_S_NAME),
	CONSTRAINT LINEITEM_CHECK1 CHECK (L_QUANTITY >= 0),
	CONSTRAINT LINEITEM_CHECK2 CHECK (L_PRICE >= 0),
	CONSTRAINT LINEITEM_CHECK3 CHECK (L_TAX >= 0),
	CONSTRAINT LINEITEM_CHECK4 CHECK (L_DISCOUNT BETWEEN 0.00 AND 1.00) );

CREATE TABLE EMPLOYEE(
ENUM 	    DECIMAL(12)	NOT NULL,
FNAME	    VARCHAR(50)	NOT NULL,
INITIALS    VARCHAR(5)	    NULL,
LNAME       VARCHAR(50) NOT NULL,
DOB 	    DATE            NULL,
BLDG        DECIMAL(3) 	NOT NULL,
STREET      VARCHAR(50)	NOT NULL,
SUBURB      VARCHAR(50)	NOT NULL,
STATE	    VARCHAR(5)	NOT NULL,
ZIPCODE     DECIMAL(4)	NOT NULL,
 CONSTRAINT EMPLOYEE_PKEY PRIMARY KEY(ENUM) );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE DRIVER(
ENUM 	    DECIMAL(12) NOT NULL,
LNUM 	    DECIMAL(8) 	NOT NULL,
STATUS 	    VARCHAR(10) NOT NULL,
 CONSTRAINT DRIVER_PKEY PRIMARY KEY(ENUM),
 CONSTRAINT DRIVER_UNIQUE UNIQUE(LNUM),
 CONSTRAINT DRIVER_FKEY FOREIGN KEY(ENUM) REFERENCES EMPLOYEE(ENUM),
 CONSTRAINT DRIVER_STATUS CHECK ( STATUS IN ('AVAILABLE', 'BUSY', 'ON LEAVE')) );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE ADMIN(
ENUM 	    DECIMAL(12) NOT NULL,
POSITION    VARCHAR(50) NOT NULL,
 CONSTRAINT ADMIN_PKEY PRIMARY KEY(ENUM),
 CONSTRAINT ADMIN_FKEY FOREIGN KEY(ENUM) REFERENCES EMPLOYEE(ENUM) );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE TRUCK(
REGNUM 	    VARCHAR(10) NOT NULL,
CAPACITY    DECIMAL(7) 	NOT NULL,
WEIGHT 	    DECIMAL(7) 	NOT NULL,
STATUS 	    VARCHAR(10) NOT NULL,
 CONSTRAINT TRUCK_PKEY PRIMARY KEY(REGNUM),
 CONSTRAINT TRUCK_STATUS CHECK ( STATUS IN ('AVAILABLE', 'USED', 'MAINTAINED')),
 CONSTRAINT TRUCK_WEIGHT CHECK ( WEIGHT > 0.0 AND WEIGHT < 500000 ),
 CONSTRAINT TRUCK_CAPACITY CHECK ( CAPACITY > 0.0 AND CAPACITY < 100000 ) );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE TRIP(
TNUM 	    DECIMAL(10) NOT NULL,
LNUM 	    DECIMAL(8) 	NOT NULL,
REGNUM 	    VARCHAR(10) NOT NULL,
TDATE       DATE 	NOT NULL,
 CONSTRAINT TRIP_PKEY PRIMARY KEY (TNUM),
 CONSTRAINT TRIP_CKEY UNIQUE (LNUM, REGNUM, TDATE),
 CONSTRAINT TRIP_FKEY1 FOREIGN KEY (LNUM) REFERENCES DRIVER(LNUM),
 CONSTRAINT TRIP_FKEY2 FOREIGN KEY (REGNUM) REFERENCES TRUCK(REGNUM) );

CREATE TABLE PERSON(
 first_name	VARCHAR(30)	NOT NULL,
 last_name	VARCHAR(30)	NOT NULL,
 email		VARCHAR(50)	NOT NULL,
 age            NUMBER(2)	NOT NULL,
  CONSTRAINT PERSON_PK PRIMARY KEY(first_name,last_name),
  CONSTRAINT PERSON_CK UNIQUE(email) );

  
  CREATE TABLE COUNTRY(
CO_ID 		NUMERIC(4) 	NOT NULL, /* Unique country ID		*/
CO_NAME 	VARCHAR(50) 	NOT NULL, /* Name of country		*/
CO_EXCHANGE	NUMERIC(12,6)	NOT NULL, /* Exchange rate to US$	*/
CO_CURRENCY	VARCHAR(18)	NOT NULL, /* Name of currency		*/
	CONSTRAINT COUNTRY_PKEY PRIMARY KEY (CO_ID),
	CONSTRAINT COUNTRY_CHECK1 CHECK(CO_ID > 0) );
	

CREATE TABLE ADDRESS(
ADDR_ID 	NUMERIC(10) 	NOT NULL, /* Unique address ID		*/
ADDR_STREET1 	VARCHAR(40) 	NOT NULL, /* Street address, line 1	*/
ADDR_STREET2 	VARCHAR(40) 	NOT NULL, /* Street address, line 2	*/
ADDR_CITY 	VARCHAR(30) 	NOT NULL, /* Name of city		*/
ADDR_STATE 	VARCHAR(20) 	NOT NULL, /* Name of state		*/
ADDR_ZIP 	VARCHAR(10) 	NOT NULL, /* Zip code or postal code	*/
ADDR_CO_ID 	NUMERIC(4) 	NOT NULL, /* Unique ID of country	*/
	CONSTRAINT ADDRESS_PKEY PRIMARY KEY (ADDR_ID),
	CONSTRAINT ADDRESS_FKEY FOREIGN KEY (ADDR_CO_ID)
		REFERENCES COUNTRY(CO_ID),
	CONSTRAINT ADDRESS_CHECK1 CHECK(ADDR_ID > 0) );		

CREATE TABLE AUTHOR(
A_ID 		NUMERIC(10) 	NOT NULL, /* Unique author ID		*/
A_FNAME 	VARCHAR(20) 	NOT NULL, /* First name of author	*/
A_MNAME		VARCHAR(20)	NOT NULL, /* Last name of author	*/
A_LNAME 	VARCHAR(20) 	NOT NULL, /* Middle name of author	*/
A_DOB		DATE		NOT NULL, /* Date of birth of author	*/
A_BIO		VARCHAR(500)	NOT NULL, /* About the author		*/
	CONSTRAINT AUTHOR_PKEY PRIMARY KEY (A_ID),
	CONSTRAINT AUTHOR_CHECK1 CHECK(A_ID > 0) );		

CREATE TABLE ITEM(
I_ID	 	NUMERIC(10) 	NOT NULL, /* Unique ID of item		*/
I_TITLE	 	VARCHAR(60) 	NOT NULL, /* Title of item		*/
I_A_ID	 	NUMERIC(10) 	NOT NULL, /* Author ID of item		*/
I_PUB_DATE	DATE 		NOT NULL, /* Date of release of an item */
I_PUBLISHER 	VARCHAR(60) 	NOT NULL, /* Publisher of item		*/
I_SUBJECT 	VARCHAR(60) 	NOT NULL, /* Subject of book		*/
I_DESC 		VARCHAR(500) 	NOT NULL, /* Description of item	*/
I_RELATED1	NUMERIC(10)	NOT NULL, /* Unique item ID (I_ID) of related item */
I_RELATED2      NUMERIC(10)     NOT NULL, /* Unique item ID (I_ID) of related item */
I_RELATED3      NUMERIC(10)     NOT NULL, /* Unique item ID (I_ID) of related item */
I_RELATED4      NUMERIC(10)     NOT NULL, /* Unique item ID (I_ID) of related item */
I_RELATED5      NUMERIC(10)     NOT NULL, /* Unique item ID (I_ID) of related item */
I_THUMBNAIL 	VARCHAR(10),		  /* Pointer to thumbnail image of item */
I_IMAGE		VARCHAR(10),		  /* Pointer to  image of item 	*/
I_SRP 		NUMERIC(15,2) 	NOT NULL, /* Suggested retail price	*/
I_COST 		NUMERIC(15,2) 	NOT NULL, /* Cost of item		*/
I_AVAIL 	DATE 		NOT NULL, /* When item is available	*/
I_STOCK		NUMERIC(4)	NOT NULL, /* Quatity in stock		*/
I_ISBN 		CHAR(13) 	NOT NULL, /* Product ISBN		*/
I_PAGE 		NUMERIC(4) 	NOT NULL, /* Number of pages of  book	*/
I_BACKING 	VARCHAR(15) 	NOT NULL, /* Type of book:paper,hardback */
I_DIMENSIONS 	VARCHAR(25) 	NOT NULL, /* Size of book in inches	*/
	CONSTRAINT ITEM_PKEY PRIMARY KEY (I_ID),
	CONSTRAINT ITEM_FKEY FOREIGN KEY (I_A_ID)
		REFERENCES AUTHOR(A_ID),
	CONSTRAINT ITEM_CHECK1 CHECK(I_ID > 0),
	CONSTRAINT ITEM_CHECK2 CHECK(I_A_ID > 0) );		
		

CREATE TABLE CUSTOMER(
C_ID 		NUMERIC(10) 	NOT NULL, /* Unique ID of customer	*/
C_UNAME 	VARCHAR(20) 	UNIQUE NOT NULL, /* Unique user name	*/
C_PASSWD 	VARCHAR(20) 	NOT NULL, /* User password		*/
C_FNAME 	VARCHAR(15) 	NOT NULL, /* First name of customer	*/
C_LNAME 	VARCHAR(15) 	NOT NULL, /* Last name of customer	*/
C_ADDR_ID 	NUMERIC(10) 	NOT NULL, /* Address ID of customer	*/
C_PHONE 	VARCHAR(16) 	NOT NULL, /* Phone number of customer	*/
C_EMAIL 	VARCHAR(50)	NOT NULL, /* Email for purchase confirmation */
C_SINCE		DATE		NOT NULL, /* Date of registration	*/
C_LAST_VISIT	DATE		NOT NULL, /* Date of last visit		*/
C_LOGIN		TIMESTAMP	NOT NULL, /* Start of current customer session */
C_EXPIRATION	TIMESTAMP	NOT NULL, /* Current customer session expiry */
C_DISCOUNT 	NUMERIC(3,2) 	NOT NULL, /* Percentage discount	*/
C_BALANCE	NUMERIC(15,2)	NOT NULL, /* Balance of customer	*/
C_YTD_PMT	NUMERIC(15,2)	NOT NULL, /* Year-to-date payments	*/
C_BIRTHDATE	DATE		NOT NULL, /* Birth date			*/
C_DATA		VARCHAR(500)	NOT NULL, /* Miscellaneous information	*/
	CONSTRAINT CUSTOMER_PKEY PRIMARY KEY (C_ID),
	CONSTRAINT CUSTOMER_FKEY FOREIGN KEY (C_ADDR_ID)
		REFERENCES ADDRESS(ADDR_ID),
	CONSTRAINT CUSTOMER_CHECK1 CHECK(C_ID > 0),		
	CONSTRAINT CUSTOMER_CHECK2 CHECK(C_ADDR_ID > 0) );		
		

CREATE TABLE ORDERS(
O_ID 		NUMERIC(10) 	NOT NULL, /* Unique ID of order		*/
O_C_ID 		NUMERIC(10) 	NOT NULL, /* Customer ID		*/
O_DATE 		TIMESTAMP 	NOT NULL, /* Order date an time		*/
O_SUB_TOTAL 	NUMERIC(15,2) 	NOT NULL, /* Subtotal of all order-line items */
O_TAX 		NUMERIC(15,2) 	NOT NULL, /* tax over subtotal		*/
O_TOTAL 	NUMERIC(15,2) 	NOT NULL, /* Total for this order	*/
O_SHIP_DATE 	TIMESTAMP 	NOT NULL, /* Method of delivery		*/
O_SHIP_TYPE 	VARCHAR(10) 	NOT NULL, /* Order ship date		*/
O_BILL_ADDR_ID  NUMERIC(10)	NOT NULL, /* Address ID to bull		*/
O_SHIP_ADDR_ID 	NUMERIC(10) 	NOT NULL, /* Address ID to ship order	*/
O_STATUS 	VARCHAR(15) 	NOT NULL, /* Order status		*/
	CONSTRAINT ORDERS_PKEY PRIMARY KEY (O_ID),
	CONSTRAINT ORDERS_FKEY1 FOREIGN KEY (O_C_ID)
		REFERENCES CUSTOMER(C_ID),
	CONSTRAINT ORDERS_FKEY2 FOREIGN KEY (O_SHIP_ADDR_ID)
		REFERENCES ADDRESS(ADDR_ID),
	 CONSTRAINT ORDERS_FKEY3 FOREIGN KEY (O_BILL_ADDR_ID)
        REFERENCES ADDRESS(ADDR_ID),
	CONSTRAINT ORDER_CHECK1 CHECK(O_ID > 0),
	CONSTRAINT ORDER_CHECK2 CHECK(O_C_ID > 0),
	CONSTRAINT ORDER_CHECK3 CHECK(O_BILL_ADDR_ID > 0),
	CONSTRAINT ORDER_CHECK4 CHECK(O_SHIP_ADDR_ID > 0) );		
	
		

CREATE TABLE CC_XACTS(
CX_O_ID         NUMERIC(10) 	NOT NULL, /* Unique order ID		*/
CX_TYPE 	VARCHAR(10) 	NOT NULL, /* Credit cardc type		*/
CX_NUM 		NUMERIC(16) 	NOT NULL, /* Credit card number		*/
CX_NAME		VARCHAR(31)	NOT NULL, /* Name of credit card	*/
CX_EXPIRY	TIMESTAMP	NOT NULL, /* Expiration date		*/
CX_AUTH_ID	CHAR(15)	NOT NULL, /* Authorization for transaction amount */
CX_XACT_AMT	NUMERIC(15,2)	NOT NULL, /* Amount for this transaction */
CX_XACT_DATE	TIMESTAMP	NOT NULL, /* Date and time of authorization */
CX_CO_ID	NUMERIC(4)	NOT NULL, /* Country when transaction originated */
	CONSTRAINT CC_XACTS_PKEY PRIMARY KEY (CX_O_ID),
	CONSTRAINT CC_XACTS_FKEY1 FOREIGN KEY (CX_CO_ID)
		REFERENCES COUNTRY(CO_ID),
	CONSTRAINT CC_XACTS_FKEY2 FOREIGN KEY (CX_O_ID)
		REFERENCES ORDERS(O_ID),
	CONSTRAINT CC_XACTS_CHECK1 CHECK(CX_O_ID > 0),
	CONSTRAINT CC_XACTS_CHECK2 CHECK(CX_CO_ID > 0) );

CREATE TABLE ORDER_LINE(
OL_ID 		NUMERIC(10) 	NOT NULL, /* Unique order-line item ID	*/
OL_O_ID 	NUMERIC(10) 	NOT NULL, /* Order ID			*/
OL_I_ID 	NUMERIC(10) 	NOT NULL, /* Unique item ID		*/
OL_QTY 		NUMERIC(3) 	NOT NULL, /* Quantity of item		*/
OL_DISCOUNT	NUMERIC(3,2)	NOT NULL, /* Percentage discount off of stock retail price */
OL_COMMENTS	VARCHAR(100)	NOT NULL, /* Special instructions 	*/
	CONSTRAINT ORDER_LINE_PKEY PRIMARY KEY (OL_ID, OL_O_ID),
	CONSTRAINT ORDER_LINE_FKEY1 FOREIGN KEY (OL_I_ID)
		REFERENCES ITEM(I_ID),
	CONSTRAINT ORDER_LINE_FKEY2 FOREIGN KEY (OL_O_ID)
		REFERENCES ORDERS(O_ID),
	CONSTRAINT ORDER_LINE_CHECK1 CHECK(OL_ID > 0),
	CONSTRAINT ORDER_LINE_CHECK2 CHECK(OL_O_ID > 0),
	CONSTRAINT ORDER_LINE_CHECK3 CHECK(OL_I_ID > 0) );