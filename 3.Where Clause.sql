-- WHERE CLAUSE

-- Uncomment it out and Use the Queries

-- Use Of Arithmetic Operators
-- Select * 
-- from employee_salary
-- where salary >= 50000
-- ;

-- Select *
-- from employee_demographics
-- where gender = 'Female'
-- ;

-- Select *
-- From employee_demographics
-- where gender != 'Female'
-- ;

-- Select * 
-- from employee_demographics
-- where birth_date > '1985-01-01'
-- ;

-- Use Of Logical Operators -- AND OR NOT
-- Select * 
-- from employee_demographics
-- where birth_date < '1985-01-01'
-- AND gender = 'Male'
-- ;

-- Select * 
-- from employee_demographics
-- where birth_date < '1985-01-01'
-- OR gender = 'Male'
-- ;

-- Select * 
-- from employee_demographics
-- where birth_date < '1985-01-01'
-- OR NOT gender = 'Male'
-- ;

-- Select * 
-- from employee_demographics
-- where (first_name = 'Leslie' AND age = 44) OR age > 55
-- ;

-- LIKE STATEMENT
-- % and _

-- Select * 
-- from employee_demographics
-- where first_name Like 'Jer%'
-- ;

-- Select * 
-- from employee_demographics
-- where first_name Like '%er%'
-- ;

-- Select * 
-- from employee_demographics
-- where first_name Like "a___%"
-- ;

-- Select * 
-- from employee_demographics
-- where birth_date LIKE "1989%"
-- ;
