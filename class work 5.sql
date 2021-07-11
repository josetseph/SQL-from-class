--determine the manager with the highest salary

use company_9404119

SELECT Fname
FROM DEPARTMENT, EMPLOYEE
WHERE ssn = Mgr_Ssn AND salary = (SELECT MAX(salary) FROM EMPLOYEE JOIN Department ON ssn = Mgr_Ssn)
GROUP BY Fname