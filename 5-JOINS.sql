/* Join is a way to combine multiple tables into single output */
SELECT *
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS

SELECT *
FROM SQLTutorial.dbo.EMPLOYSALARIES

--Now joing the table based on employid which is simillar
SELECT *
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
INNER JOIN SQLTutorial.dbo.EMPLOYSALARIES
ON EMPLOYEEDEMOGRAPHICS.EMPLOYID = EMPLOYSALARIES.EMPLOYID

SELECT *
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
FULL OUTER JOIN SQLTutorial.dbo.EMPLOYSALARIES
ON EMPLOYEEDEMOGRAPHICS.EMPLOYID = EMPLOYSALARIES.EMPLOYID


SELECT *
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
LEFT JOIN SQLTutorial.dbo.EMPLOYSALARIES
ON EMPLOYEEDEMOGRAPHICS.EMPLOYID = EMPLOYSALARIES.EMPLOYID

SELECT *
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
RIGHT JOIN SQLTutorial.dbo.EMPLOYSALARIES
ON EMPLOYEEDEMOGRAPHICS.EMPLOYID = EMPLOYSALARIES.EMPLOYID