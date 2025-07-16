-- Limiting

select * from employee_demographics;

select * from employee_demographics
limit 1;

select * from employee_salary;

select first_name,salary from employee_salary where salary > 25000;

select first_name,salary from employee_salary limit 1,1;

select first_name,salary from employee_salary order by Salary ASC Limit 1;


-- Aliasing

 Select gender,AVG(age) as avg_age
 from employee_demographics
 GROUP By gender
 having avg(age) > 40;