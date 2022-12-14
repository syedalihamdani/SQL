/* String function */
CREATE TABLE EMPLOYERRORS
(EMPLOYID VARCHAR(50),
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50),
)

INSERT INTO EMPLOYERRORS VALUES
('       101    ','ALI','JOMAL'),
('   102', 'ASLI','KOMAL'),
('103   ','KAMAR','JAMAL_LE')

SELECT *
FROM EMPLOYERRORS

SELECT EMPLOYID,TRIM(EMPLOYID) AS IDTRIM
FROM EMPLOYERRORS

SELECT EMPLOYID,LTRIM(EMPLOYID) AS IDLTRIM
FROM EMPLOYERRORS

SELECT EMPLOYID,RTRIM(EMPLOYID) AS IDRTRIM
FROM EMPLOYERRORS


--USING REPLACE
SELECT LASTNAME,REPLACE(LASTNAME,'_LE','') AS LASTNAMEFIXED
FROM EMPLOYERRORS

--USING SUBSTRING
SELECT SUBSTRING(FIRSTNAME,1,2)
FROM EMPLOYERRORS


SELECT ERR.FIRSTNAME,SUBSTRING(ERR.FIRSTNAME,1,3),DEM.FIRSTNAME,SUBSTRING(DEM.FIRSTNAME,1,2)
FROM EMPLOYERRORS ERR
JOIN EMPLOYEEDEMOGRAPHICS DEM
ON SUBSTRING(ERR.FIRSTNAME,1,2)=SUBSTRING(DEM.FIRSTNAME,1,2)

-- Using upper and lower
SELECT LASTNAME,LOWER(FIRSTNAME)
FROM EMPLOYERRORS


SELECT LASTNAME,UPPER(FIRSTNAME)
FROM EMPLOYERRORS