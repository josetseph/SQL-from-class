--Write a query to determine the project with the highest wages

SELECT [Project Name] as 'Project'
FROM [Company Cs2]
WHERE [Wages] = (SELECT MAX([Wages]) FROM [Company Cs2])