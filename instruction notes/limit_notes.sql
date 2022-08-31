-- limit sets a limit of 10 clauses
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
    LIMIT 10;
--offset tells SQL which row to start with
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
    LIMIT 25 OFFSET 50;