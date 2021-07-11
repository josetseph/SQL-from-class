--write a query to list the names of all employees and the number of dependents

use company_9404119

SELECT COUNT(DEPENDENT_name) AS 'Number of Dependents', Fname AS 'Employee Name'
FROM EMPLOYEE, DEPENDENT
WHERE ssn = Essn
GROUP BY Fname