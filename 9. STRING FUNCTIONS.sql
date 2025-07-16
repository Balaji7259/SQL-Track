-- String Functions

use parks_and_recreation;

Select length("SKYFALL");

-- LENGTH()
Select first_name,length(first_name) as name_length
from employee_demographics 
ORDER BY 2;

-- UPPER()
Select first_name,upper(first_name) as upper_name
from employee_demographics;

-- LOWER()
Select first_name,lower(first_name) as lower_name
from employee_demographics;

-- TRIM()
Select RTRIM("             balaji                      ") as trimmed;

-- Substrings
Select first_name,
LEFT(first_name,3),
RIGHT(first_name,3),
SUBSTRING(first_name,3,2),
SUBSTRING(birth_date,6,2) as Birth_month
from employee_demographics;

-- Replace()
Select first_name,REPLACE(first_name,'a','b')
from employee_demographics;

-- LOCATE()
SELECT Locate('x','Alexandar');

Select first_name,LOCATE("a",first_name)
FROM employee_demographics;

-- concat()
Select first_name,last_name,
concat(first_name," ",last_name) as Full_name
from employee_demographics;





