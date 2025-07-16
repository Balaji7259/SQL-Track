-- SUBQUERIES

Use parks_and_recreation;

-- SubQuery in thre WHERE Clause
SELECT *
FROM employee_demographics
Where employee_id In (SELECT employee_id from employee_salary where dept_id = 1)
;

-- SubQuery in the SELECT Clause

Select first_name,salary,AVG(salary)
from employee_salary
GROUP by first_name,Salary;

SELECT first_name,salary,
(select AVG(salary) from employee_salary) as avg_salary
from employee_salary;

-- SubQuery in FROM Clause
Select gender,AVG(age),MAX(age),MIN(age),COUNT(age)
from employee_demographics
Group By gender;

Select gender,AVG(`MAX(age)`)
from (Select gender,AVG(age),MAX(age),MIN(age),COUNT(age)
from employee_demographics
Group By gender) as agg_table
group by gender;

Select AVG(`MAX(age)`)
from (Select gender,AVG(age),MAX(age),MIN(age),COUNT(age)
from employee_demographics
Group By gender) as agg_table;
