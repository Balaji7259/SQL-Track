SELECt *
From parks_and_recreation.employee_demographics;

SELECT last_name
From parks_and_recreation.employee_demographics;

Select first_name,
last_name,
birth_date,
age,
(age*10) + 10
From employee_demographics;
#PEMDAS rule 

SELECT distinct first_name,gender
From employee_demographics;
#DISTINCT