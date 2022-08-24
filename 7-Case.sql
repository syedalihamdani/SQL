/* Case statement allow you to specify the condition */

--SELECT FIRSTNAME,LASTNAME,AGE,
--CASE
--    WHEN AGE >50 THEN 'OLD'
--	WHEN AGE BETWEEN 40 AND 50 THEN 'MIDDLE AGE'
--	ELSE 'YOUNG'
--END
--FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
--WHERE AGE IS NOT NULL
--ORDER BY AGE

SELECT FIRSTNAME,LASTNAME,JOBTITLE,SALARY,
CASE 
    WHEN JOBTITLE ='Salesman' THEN SALARY + (SALARY * .10)
	WHEN JOBTITLE ='Accountant' THEN SALARY + (SALARY * .05)
	WHEN JOBTITLE = 'HR' THEN SALARY + (SALARY * .000001)
	ELSE SALARY + (SALARY * .03)
END
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
JOIN SQLTutorial.dbo.EMPLOYSALARIES
ON EMPLOYEEDEMOGRAPHICS.EMPLOYID = EMPLOYEEDEMOGRAPHICS.EMPLOYID