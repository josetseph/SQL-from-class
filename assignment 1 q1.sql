use company_9404119;

SELECT E.Fname, E.Minit, E.Lname, E.Address, S.Fname FROM EMPLOYEE As E, EMPLOYEE As S WHERE E.Salary = (SELECT Min(Salary) FROM EMPLOYEE) AND E.Super_Ssn = S.Ssn;