SELECT * FROM employees
-- ( will select all first names with the letter combination 'sus )
SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';
-- ( avoids getting duplicate values from the table )
SELECT DISTINCT first_name
FROM employees
WHERE first_name LIKE '%sus%';
-- ( finds all employees between employee number 10026 and 10082: )
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082;
-- (finds all employees with the lastname that is specified)
SELECT  emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');