SELECT FIRSTNAME,LASTNAME,GENDER,SALARY,COUNT(GENDER) OVER(PARTITION BY GENDER) AS TOTALGENDER
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS dem
JOIN SQLTutorial.dbo.EMPLOYSALARIES Sal
ON dem.EMPLOYID =Sal.EMPLOYID

SELECT GENDER,COUNT(GENDER)
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS dem
JOIN SQLTutorial.dbo.EMPLOYSALARIES sal
ON dem.EMPLOYID=sal.EMPLOYID
GROUP BY GENDER