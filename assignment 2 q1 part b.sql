USE [company_9404119];

SELECT MAX(Salary) AS 'Maximum Salary', MIN(Salary) AS 'Minimum Salary', AVG(Salary) AS 'Average Salary', COUNT(ssn) AS 'Number of Employees', Dname
FROM Employee, DEPARTMENT WHERE Dno = (SELECT Dno FROM EMPLOYEE WHERE ssn = '333445555') AND Dnumber = Dno
GROUP BY DNAME;