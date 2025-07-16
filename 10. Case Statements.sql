-- Case Statements

Select 
first_name,last_name,
CASE
	WHEN age <= 30 Then "YOUNG"
    WHEN age BETWEEN 31 and 50 THEN "OLD"
    ELSE "Retired"
END AS AGE_BRACKET
from employee_demographics;

-- Move On with Example of Bonus Issue
-- < 50000 : 5%
-- > 50000 : 7%


Select first_name,last_name,salary,
CASE
	WHEN SALARY < 50000 THEN Salary + (salary*0.05)
    WHEN salary >= 50000 THEN salary * 1.07
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN Salary*1.1
END As Bonus
from employee_salary;
