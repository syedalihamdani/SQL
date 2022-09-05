Create table employee
(
id int,
name varchar(10)
)

Select *
From SQLTutorial.dbo.employee

--Increase number of columns
alter table employee 
add address varchar(10)

Select *
From SQLTutorial.dbo.employee

--Decreasing number of columns
alter table employee
drop column address;

Select *
From SQLTutorial.dbo.employee

-- Chenging column name
EXEC sp_RENAME 'employee.id' , 'Roll_No', 'COLUMN'

-- Changing data type
ALTER TABLE employee
ALTER COLUMN Roll_No varchar(10);