-- GROUP By
Use parks_and_recreation;
Select * From
employee_demographics;

-- Select gender 
-- from employee_demographics
-- group by gender;

Select gender, AVG(age), max(age)
from employee_demographics
group by gender;

select * From
employee_salary;

select occupation,salary
from employee_salary
group by occupation,salary;


-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name desc
;

SELECT * FROM employee_demographics
order by gender,age;

