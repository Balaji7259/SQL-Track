-- JOINS
use parks_and_recreation;
Select * from employee_demographics,employee_salary;

Select e1.first_name , e2.last_name
from employee_demographics e1
Inner Join employee_salary e2
on e1.employee_id = e2.employee_id;

-- OUTER OR LEFT JOIN
SELECT e1.first_name , e2.last_name, e2.occupation
from employee_demographics e1
LEFT JOIN employee_salary e2
on e1.employee_id = e2.employee_id;

-- RIGHT JOIN 
Select e1.first_name , e2.last_name , e2.occupation
from employee_demographics e1
RIGHT JOIN employee_salary e2
on e1.employee_id = e2.employee_id;

-- SELF JOIN
SELECT * from 
employee_demographics e1
JOIN employee_salary e2
ON e1.employee_id  +  1 = e2.employee_id
; 

SELECT e1.employee_id as Santa,
e2.first_name as first_name_Santa
from employee_demographics e1
JOIN employee_salary e2
ON e1.employee_id  +  1 = e2.employee_id
; 

-- CROSS JOIN
Select * from
parks_departments;

select e1.first_name,e3.department_name
From employee_demographics e1
CROSS JOIN parks_departments e3;

