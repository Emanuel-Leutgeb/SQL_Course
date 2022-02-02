CREATE TABLE COUNTRIES
(
    country_id   char(2) NOT NULL,
    country_name varchar(40) DEFAULT NULL,
    region_id    int(11)     DEFAULT NULL
);

INSERT INTO COUNTRIES (country_id, country_name, region_id)
VALUES ('CA', 'Canada', 2),
       ('DE', 'Germany', 1),
       ('UK', 'United Kingdom', 1),
       ('US', 'United States of America', 2);


CREATE TABLE DEPARTMENTS
(
    department_id   int(4)      NOT NULL,
    department_name varchar(30) NOT NULL,
    manager_id      int(6) DEFAULT NULL,
    location_id     int(4) DEFAULT NULL
);

INSERT INTO DEPARTMENTS (department_id, department_name, manager_id, location_id)
VALUES (10, 'Administration', 200, 1700),
       (20, 'Marketing', 201, 1800),
       (50, 'Shipping', 121, 1500),
       (60, 'IT', 103, 1400),
       (80, 'Sales', 145, 2500),
       (90, 'Executive', 100, 1700),
       (110, 'Accounting', 205, 1700),
       (190, 'Contracting', NULL, 1700);


CREATE TABLE EMPLOYEES
(
    employee_id    int(6)      NOT NULL,
    first_name     varchar(20)   DEFAULT NULL,
    last_name      varchar(20) NOT NULL,
    email          varchar(25) NOT NULL,
    phone_number   varchar(20)   DEFAULT NULL,
    hire_date      date        NOT NULL,
    job_id         varchar(10) NOT NULL,
    salary         decimal(8, 2) DEFAULT NULL,
    commission_pct decimal(2, 2) DEFAULT NULL,
    manager_id     int(6)        DEFAULT NULL,
    department_id  int(4)        DEFAULT NULL
);

INSERT INTO EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,
                       commission_pct, manager_id, department_id)
VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000.00', NULL, NULL, 90),
       (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1989-09-21', 'AD_VP', '17000.00', NULL, 100, 90),
       (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1993-01-13', 'AD_VP', '17000.00', NULL, 100, 90),
       (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1990-01-03', 'IT_PROG', '9000.00', NULL, 102, 60),
       (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1991-05-21', 'IT_PROG', '6000.00', NULL, 103, 60),
       (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1999-02-07', 'IT_PROG', '4200.00', NULL, 103, 60),
       (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1999-11-16', 'ST_MAN', '5800.00', NULL, 100, 50),
       (141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1995-10-17', 'ST_CLERK', '3500.00', NULL, 124, 50),
       (142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1997-01-29', 'ST_CLERK', '3100.00', NULL, 124, 50),
       (143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1998-03-15', 'ST_CLERK', '2600.00', NULL, 124, 50),
       (144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1998-07-09', 'ST_CLERK', '2500.00', NULL, 124, 50),
       (149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2000-01-29', 'SA_MAN', '10500.00', '0.20', 100, 80),
       (174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1996-05-11', 'SA_REP', '11000.00', '0.30', 149, 80),
       (176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1998-03-24', 'SA_REP', '8600.00', '0.20', 149, 80),
       (178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1999-05-24', 'SA_REP', '7000.00', '0.15', 149, NULL),
       (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-17', 'AD_ASST', '4400.00', NULL, 101, 10),
       (201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1996-02-17', 'MK_MAN', '13000.00', NULL, 100, 20),
       (202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '1997-08-17', 'MK_REP', '6000.00', NULL, 201, 20),
       (205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1994-06-07', 'AC_MGR', '12000.00', NULL, 101, 110),
       (206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1994-06-07', 'AC_ACCOUNT', '8300.00', NULL, 205, 110);


CREATE TABLE JOBS
(
    job_id     varchar(20) NOT NULL,
    job_title  varchar(35) NOT NULL,
    min_salary int(6) DEFAULT NULL,
    max_salary int(6) DEFAULT NULL
);

INSERT INTO JOBS (job_id, job_title, min_salary, max_salary)
VALUES ('AC_ACCOUNT', 'Public Accountant', 4200, 9000),
       ('AC_MGR', 'Accounting Manager', 8200, 16000),
       ('AD_ASST', 'Administration Assistant', 3000, 6000),
       ('AD_PRES', 'President', 20000, 40000),
       ('AD_VP', 'Administration Vice President', 15000, 30000),
       ('IT_PROG', 'Programmer', 4000, 10000),
       ('MK_MAN', 'Marketing Manager', 9000, 15000),
       ('MK_REP', 'Marketing Representative', 4000, 9000),
       ('SA_MAN', 'Sales Manager', 10000, 20000),
       ('SA_REP', 'Sales Representative', 6000, 12000),
       ('SH_CLERK', 'Shipping Clerk', 2500, 5500),
       ('ST_CLERK', 'Stock Clerk', 2000, 5000),
       ('ST_MAN', 'Stock Manager', 5500, 8500);


CREATE TABLE JOB_HISTORY
(
    employee_id   int(6)      NOT NULL,
    start_date    date        NOT NULL,
    end_date      date        NOT NULL,
    job_id        varchar(10) NOT NULL,
    department_id int(4) DEFAULT NULL
);

INSERT INTO JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
VALUES (101, '1989-09-21', '1993-10-27', 'AC_ACCOUNT', 110),
       (101, '1993-10-28', '1997-03-15', 'AC_MGR', 110),
       (102, '1993-01-13', '1998-06-24', 'IT_PROG', 60),
       (176, '1998-03-24', '1998-12-31', 'SA_REP', 80),
       (176, '1999-01-01', '1999-12-31', 'SA_MAN', 80),
       (200, '1987-09-17', '1993-06-17', 'AD_ASST', 90),
       (200, '1994-06-01', '1998-12-31', 'AC_ACCOUNT', 90),
       (201, '1996-02-17', '1999-12-19', 'MK_REP', 20);


CREATE TABLE LOCATIONS
(
    location_id    int(4)      NOT NULL,
    street_address varchar(40) DEFAULT NULL,
    postal_code    varchar(12) DEFAULT NULL,
    city           varchar(30) NOT NULL,
    state_province varchar(25) DEFAULT NULL,
    country_id     char(2)     DEFAULT NULL
);

INSERT INTO LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
VALUES (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
       (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
       (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
       (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
       (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');


CREATE TABLE REGIONS
(
    region_id   int(11) NOT NULL,
    region_name varchar(25) DEFAULT NULL
);

INSERT INTO REGIONS (region_id, region_name)
VALUES (1, 'Europe'),
       (2, 'Americas'),
       (3, 'Asia'),
       (4, 'Middle East and Africa');
COMMIT;

ALTER TABLE COUNTRIES
    ADD PRIMARY KEY (country_id),
    ADD KEY region_id (region_id);

ALTER TABLE DEPARTMENTS
    ADD PRIMARY KEY (department_id),
    ADD KEY location_id (location_id);

ALTER TABLE EMPLOYEES
    ADD PRIMARY KEY (employee_id),
    ADD UNIQUE KEY email (email),
    ADD KEY department_id (department_id),
    ADD KEY job_id (job_id),
    ADD KEY manager_id (manager_id);

ALTER TABLE JOBS
    ADD PRIMARY KEY (job_id);

ALTER TABLE JOB_HISTORY
    ADD PRIMARY KEY (employee_id, start_date),
    ADD KEY job_id (job_id),
    ADD KEY department_id (department_id);

ALTER TABLE LOCATIONS
    ADD PRIMARY KEY (location_id),
    ADD KEY country_id (country_id);

ALTER TABLE REGIONS
    ADD PRIMARY KEY (region_id);

ALTER TABLE COUNTRIES
    ADD CONSTRAINT countries_1 FOREIGN KEY (region_id) REFERENCES REGIONS (region_id);

ALTER TABLE DEPARTMENTS
    ADD CONSTRAINT departments_1 FOREIGN KEY (location_id) REFERENCES LOCATIONS (location_id);

ALTER TABLE EMPLOYEES
    ADD CONSTRAINT employees_1 FOREIGN KEY (department_id) REFERENCES DEPARTMENTS (department_id),
    ADD CONSTRAINT employees_2 FOREIGN KEY (job_id) REFERENCES JOBS (job_id),
    ADD CONSTRAINT employees_3 FOREIGN KEY (manager_id) REFERENCES EMPLOYEES (employee_id);

ALTER TABLE JOB_HISTORY
    ADD CONSTRAINT job_history_1 FOREIGN KEY (job_id) REFERENCES JOBS (job_id),
    ADD CONSTRAINT job_history_2 FOREIGN KEY (employee_id) REFERENCES EMPLOYEES (employee_id),
    ADD CONSTRAINT job_history_3 FOREIGN KEY (department_id) REFERENCES DEPARTMENTS (department_id);

ALTER TABLE LOCATIONS
    ADD CONSTRAINT locations_1 FOREIGN KEY (country_id) REFERENCES COUNTRIES (country_id);
COMMIT;
