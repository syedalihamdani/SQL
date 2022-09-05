-- Where vs Having
--Where  ----> will filter at row level (to individual)
--Having ----> will filter at group level(Aggregates)

--Having clause cannot be used without group clause

SELECT *
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
WHERE  FIRSTNAME = 'Salman'

SELECT GENDER,MIN(AGE)
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
GROUP BY GENDER
HAVING MIN(AGE) < 17

