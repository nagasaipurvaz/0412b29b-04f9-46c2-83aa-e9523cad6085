-- to check the time taken for the query
SET TIMING ON; 

--to describe the data present in the HR_DEPARTMENT table
DESC HR_DEPARTMENT 

 --To fetch all the records in HR_DEPARTMENT
SELECT * FROM HR_DEPARTMENT;

-- 1) WRITE A SQL QUERY TO FIND THE EMPLOYEE COUNT FOR EACH AGENCY 

SELECT AGENCY,count(*) NO_OF_EMPLOYEES 
FROM HR_DEPARTMENT
GROUP BY AGENCY 
ORDER BY AGENCY; --Elapsed:  00:00:00:03

-- 2) WRITE A SQL QUERY TO LIST THE EMPLOYEES WHO ARE ALL CONTRACTUAL WORKER :

create  index hr_position on HR_DEPARTMENT ("Position Title");

SELECT "Employee Name","Position Title" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER';--Elapsed:  00:00:00:05

-- 3) WRITE A SQL QUERY TO LIST THE EMPLOYEE NAME WORK UNDER AGENCY ABE LINCON PRES LIBRARY  MUS2 : 

create index hr_agency on hr_department (agency);

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE AGENCY = 'ABE LINCOLN PRES LIBRARY MUS2'; --Elapsed:  00:00:00:02

-- 4) WRITE A SQL QUERY TO FIND THE EMPLOYEES COUNT IN EACH POSITION : 

SELECT "Position Title",COUNT(*) AS no_of_employees FROM HR_DEPARTMENT 
GROUP BY "Position Title"; --Elapsed:  00:00:00:06

-- 5) Write a SQL Query to count the number of employees whose period pay rate is less than 50000

SELECT COUNT(*) AS NO_OF_EMPLOYEES FROM HR_DEPARTMENT
WHERE "Period Pay Rate" <50000 ;--Elapsed:  00:00:00:03