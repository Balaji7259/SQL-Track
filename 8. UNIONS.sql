-- UNIONS

SELECT * from 
employee_demographics;

SELECT age,gender
from employee_demographics
UNION
SELECT first_name,last_name
from employee_salary
;

SELECT first_name,last_name ,'OLD' as LABEL
from employee_demographics
Where age > 40 and gender = "male" 
UNION 
SELECT first_name,last_name ,'OLD' as LABEL
from employee_demographics
Where age > 40 and gender = "Female"
UNION
SELECT first_name,last_name ,"HIGHLY PAID" as "LABEL"
from employee_salary
where salary > 70000;