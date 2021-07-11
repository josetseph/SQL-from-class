--Find the sum and average wages for each project

SELECT SUM([wages]) AS 'Total Wage', AVG([Wages]) AS 'Average Wage', [Project Name] as 'Project'
FROM [Company Cs2]
GROUP BY [PROJECT Name]