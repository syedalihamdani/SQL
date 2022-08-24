/* To make one table out of 2 tables. we can use UNION. when 2 tables are the same */

--SELECT *
--FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
--UNION
--SELECT *
--FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS2



/* To make one table out of 2 tables. we can use UNION. when 2 tables are the NOT same. no of columns should be the same in the both tables */

SELECT EMPLOYID,FIRSTNAME,AGE
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
UNION
SELECT EMPLOYID,JOBTITLE,SALARY
FROM SQLTutorial.dbo.EMPLOYSALARIES
ORDER BY EMPLOYID
