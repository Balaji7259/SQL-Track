-- Window Functions

select first_name,last_name,salary
from employee_salary
Order by salary DESC
Limit 1 offset 6
;

-- OVER Function

Select dem.first_name,dem.last_name,gender,AVG(salary) OVER(partition by gender)
from employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

Select dem.first_name,dem.last_name,gender,salary,SUM(salary) OVER(partition by gender order by dem.employee_id) As Rolling_total
from employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- ROW NUMBER
Select dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(partition by gender order by salary DESC) As Row_num
from employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- RANK()
Select dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(partition by gender order by salary) As Row_num,
RANK() OVER(partition by gender order by salary)
from employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- DENSE_RANK()
Select dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(partition by gender order by salary) As Row_num,
dense_rank() OVER(partition by gender order by salary) as Dense_ranki
from employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;
