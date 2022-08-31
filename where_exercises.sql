-- finds all employees where the first name are the ones specified
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
-- find all employers with the last name that starts with E
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
-- find all employees that have a 'q' in their last name
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
--PART 2
-- update for first select
SELECT first_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
-- new condition for the previous query
SELECT first_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
AND gender = 'M'
-- finds all employees who's last name starts or end with an 'E'
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
-- Duplicate previous query but use 'and' instead of 'OR'
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
-- find all employers with a 'q' in their last name but not 'qu'
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'