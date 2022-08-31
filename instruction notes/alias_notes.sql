-- use the word 'as' to assign an alias to column or table
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

-- select expression can be given an alias using alias_name, used as the column name and can be used in group by, order by, or having clauses
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;

-- can still use og column alongside the aliases
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

-- previous query
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

-- using alias to improve readability
SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;

-- can also alias a table name
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;
