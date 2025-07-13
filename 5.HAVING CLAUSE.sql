-- Having Clause

Select * from employee_demographics;

Select gender , avg(age) 
from employee_demographics
GROUP BY gender
HAVING avg(age) > 40
;

select occupation , AVG(salary)
from employee_salary
where occupation LIKE "%Manager%"
GROUP BY occupation 
Having AVG(salary) > 80000;


