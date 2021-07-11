use [company_9404119];

CREATE TABLE EMPLOYEE(
	Fname varchar(30) ,
    Minit varchar(30),
    Lname varchar(30) ,
    Ssn int  primary key,
    Bdate date ,
    Address varchar(40) ,
    Sex char ,
    Salary float ,
    Super_Ssn int,
     Dno int,
	 FOREIGN KEY (Super_ssn) REFERENCES EMPLOYEE (Ssn) ON DELETE NO ACTION
);

CREATE TABLE DEPARTMENT(
	Dname varchar(30) ,
    Dnumber int  primary key,
    Mgr_Ssn int ,
    Mgr_start_date date ,
	FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE (Ssn) ON DELETE CASCADE
);

CREATE TABLE DEPT_LOCATIONS(
    Dnumber int,
	Dlocation varchar(30) ,
    FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT (Dnumber) ON DELETE CASCADE
);

CREATE TABLE PROJECT(
	Pname varchar(30) ,
	Pnumber int  primary key,
	PLocation varchar(30) ,
    Dnum int ,
	FOREIGN KEY (Dnum) REFERENCES DEPARTMENT (Dnumber) ON DELETE CASCADE
);

CREATE TABLE WORKS_ON(
    Essn int ,
	Pno int ,
	Hours int,
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE (Ssn) ON DELETE CASCADE,
    FOREIGN KEY (Pno) REFERENCES PROJECT (Pnumber) ON DELETE NO ACTION
);

CREATE TABLE DEPENDENT(
	Essn int ,
    Dependent_name varchar(30) ,
	Sex char ,
    Bdate date ,
    Relationship varchar(15) ,
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE (Ssn) ON DELETE CASCADE
);
