/* updating / Deleting Data*/
--SELECT *
--FROM SQLTutorial.dbo.EMPLOYSALARIES

--UPDATE SQLTutorial.dbo.EMPLOYSALARIES
--SET EMPLOYID =1015
--WHERE JOBTITLE ='Accountant' AND SALARY = 30


--SELECT *
--FROM SQLTutorial.dbo.EMPLOYSALARIES
--WHERE EMPLOYID=1015

/* It will show the line that we are going to delete.after confirmation replace the SELECT with the DELETE */

DELETE
FROM SQLTutorial.dbo.EMPLOYSALARIES
WHERE EMPLOYID=1015