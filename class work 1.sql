--name of employee with highest wages, department and project he is working on

SELECT [Employee Name] AS 'Employee', [Department Name] AS 'Department', [Project Name] as 'Project'
FROM [Company Cs2]
WHERE [Wages] = (SELECT MAX([Wages]) FROM [Company Cs2])