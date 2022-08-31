--sort in ascending order by last name
SELECT first_name, last_name
FROM employees
ORDER BY last_name;
-- sort in descending order by last_name
SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC;
--explicitly sort in ascending order
SELECT first_name, last_name
FROM employees
ORDER BY last_name ASC;
--chaining clauses together
SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC, first_name ASC;