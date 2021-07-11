USE company;

CREATE TABLE EMPLOYEE(
 Fname varchar(30) NOT NULL,
    Minit varchar(30) NOT NULL,
    Lname varchar(30) NOT NULL,
    Ssn int NOT NULL primary key,
    Bdate date NOT NULL,
    Address varchar(30) NOT NULL,
    Sex char NOT NULL,
    Salary float NOT NULL,
    Super_Ssn int NOT NULL,
     Dno tinyint NOT NULL
);

CREATE TABLE DEPARTMENT(
 Dname varchar(30) NOT NULL,
    Dnumber int NOT NULL primary key,
    Mgr_Ssn int NOT NULL,
    Mgr_start_date date NOT NULL,
 FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE (Ssn) ON DELETE CASCADE
);

CREATE TABLE DEPT_LOCATIONS(
    Dnumber int NOT NULL primary key,
 Dname varchar(30) NOT NULL, 
    FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT (Dnumber)
);

CREATE TABLE PROJECT(
 Pname varchar(30) NOT NULL,
 Pnumber int NOT NULL primary key,
 PLocation varchar(30) NOT NULL,
    Dnum int NOT NULL,
 FOREIGN KEY (Dnum) REFERENCES DEPARTMENT (Dnumber)
);

CREATE TABLE WORKS_ON(
    Essn int NOT NULL primary key,
 Pno int NOT NULL,
 Hours int NOT NULL,
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE (Ssn),
    FOREIGN KEY (Pno) REFERENCES PROJECT (Pnumber)
);

CREATE TABLE DEPENDENT(
 Dependent_name varchar(30) NOT NULL,
 Essn int NOT NULL primary key,
    Sex char NOT NULL,
    Bdate date NOT NULL,
    Relationship varchar(15) NOT NULL,
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE (Ssn)
);