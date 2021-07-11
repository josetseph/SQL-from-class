--For each project on which more than 2 employees work, retrieve the 
--project number, project name, number of employees working on that
--project, the controlling department name, manager name, department 
--number and manager’s salary

USE [company_9404119];

SELECT Pname AS 'Project Name', Pnumber AS 'Project Number',  COUNT(Essn) AS 'Number of Employees', Dname AS 'Controlling Department Name',  Fname AS 'Manager Name', Dnumber AS 'Controlling Department Number', Salary AS 'Manager Salary'
FROM PROJECT JOIN DEPARTMENT ON Dnumber = Dnum JOIN EMPLOYEE ON Mgr_Ssn = ssn JOIN WORKS_ON ON Pno = Pnumber
GROUP BY Pname, Pnumber, Dname, Fname, Dnumber, Salary
HAVING COUNT(Essn) > 2;