
/* described  data base*/

desc HR_DEPARTMENT ;

select * from HR_DEPARTMENT FETCH FIRST 10 ROWS ONLY ;

/* COUNTING THE NO OF EMPLOYEES IN EACH AGENCY */
SELECT AGENCY,COUNT(*) AS NO_OF_EMPLOYEES FROM HR_DEPARTMENT GROUP BY AGENCY ORDER BY NO_OF_EMPLOYEES;


/* WRITE A SQL QUERY TO LIST THE EMPLOYEES WHO ARE ALL CONTRACTUAL WORKER : */

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER'; --Elapsed:  00:00:00:06
    
/*To optimize the query ,create index on position title so it return the result faster */
create  index hr_position on HR_DEPARTMENT ("Position Title");

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER' ;--Elapsed:  00:00:00:05

/* WRITE A SQL QUERY TO LIST THE EMPLOYEE NAME WORK UNDER AGENCY ABE LINCON PRES LIBRARY  MUS2 : */

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE AGENCY = 'ABE LINCOLN PRES LIBRARY & MUS'; --Elapsed:  00:00:00:06

/*To optimize the query ,create index on agency title so it return the result faster */
create index hr_agency on hr_department (agency);

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE AGENCY = 'ABE LINCOLN PRES LIBRARY & MUS'; --Elapsed:  00:00:00:05

/* WRITE A SQL QUERY TO FIND THE EMPLOYEES COUNT IN EACH POSITION : */

SELECT "Position Title",COUNT(*) no_of_employees FROM HR_DEPARTMENT 
GROUP BY "Position Title"; --Elapsed:  00:00:00:06

/* Write a SQL Query to count the number of employees whose period pay rate is less than 50000 */

SELECT COUNT(*) NO_OF_EMPLOYEES FROM HR_DEPARTMENT
WHERE "Period Pay Rate" <50000 ;--Elapsed:  00:00:00:03

