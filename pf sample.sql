--1
SELECT agency, COUNT(id) AS no_of_employees
FROM hr_department
GROUP BY agency
ORDER BY agency;

--2
select * from hr_department 
where "Position Title"='CONTRACTUAL SERVICE EMPLOYEE';

--3
select "Employee Name" from HR_DEPARTMENT
where "AGENCY"='ABE LINCOLN PRES LIBRARY MUS2';

--4
select "Position Title",count(id) as no_of_employees
from hr_department
group by "Position Title"
order by "Position Title"; 

--5
select count(id) from hr_department 
where "Period Pay Rate"<50000;
