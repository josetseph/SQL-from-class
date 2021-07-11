CREATE VIEW [Company Cs2] AS
SELECT E.fname AS 'Employee Name', E.ssn, (hours * 1.5) AS 'Wages', s.fname AS 'Supervisor Name', pname AS 'Project Name', dname AS 'Department Name'
FROM EMPLOYEE AS E, EMPLOYEE AS S, DEPARTMENT, WORKS_ON, PROJECT
WHERE Essn = E.ssn AND E.super_ssn = S.ssn AND E.Dno = Dnumber AND Pno = Pnumber
GROUP BY E.fname, E.ssn, hours, S.fname, pname, dname