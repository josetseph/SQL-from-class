use company_9404119;

SELECT Dname FROM EMPLOYEE JOIN Department ON Dno = Dnumber WHERE Salary = (SELECT Max(Salary) FROM EMPLOYEE);