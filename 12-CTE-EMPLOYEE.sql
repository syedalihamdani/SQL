/* Common table expressinon(CTE) */
WITH CTE_EMPLOY AS
(SELECT *
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
)
SELECT Firstname
FROM CTE_EMPLOY