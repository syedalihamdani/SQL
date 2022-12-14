SELECT *
FROM EMPLOYSALARIES
-- Subquery in Select


SELECT EMPLOYID,SALARY,(SELECT AVG(SALARY) FROM EMPLOYSALARIES) as AllAvgSalary 
FROM EMPLOYSALARIES


SELECT EMPLOYID,JOBTITLE,(SELECT MIN(SALARY) FROM EMPLOYSALARIES) AS MINMUMSALARY FROM EMPLOYSALARIES

--subquery with partition by
SELECT EMPLOYID,SALARY,AVG(SALARY) OVER () AS ALLAVGSALARY FROM EMPLOYSALARIES

--WHY GROUP BY DOES NOT WORK
--SELECT EMPLOYID,SALARY,AVG(SALARY) AS ALLAVGSALARY FROM EMPLOYID,SALARY ORDER BY 1,2

-- SUB QUERY IN FROM 
SELECT *
FROM (SELECT EMPLOYID,SALARY,AVG(SALARY) OVER () as ALLAVGSALARY 
FROM EMPLOYSALARIES) a

-- subquery in where 
SELECT EMPLOYID,JOBTITLE,SALARY
FROM EMPLOYSALARIES
WHERE EMPLOYID IN ( SELECT EMPLOYID
FROM EMPLOYEEDEMOGRAPHICS
WHERE AGE >30)