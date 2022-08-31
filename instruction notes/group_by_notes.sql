/*Group by follows the same syntax as order by*/
-- only returns specified columns
SELECT DISTINCT first_name
FROM employees;

-- ^will output same as this
SELECT first_name
FROM employees
GROUP BY first_name;

-- can use multiple columns
SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;

-- count return number of non-null expression values
SELECT COUNT(*) FROM employees;

-- Counts all first names that dint have an a in them
SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

-- finding out how many first names do not contain an a
SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

-- will show the 10 most common hire dates
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;