-- find the titles
SELECT DISTINCT title
from titles;

-- find query for employees
SELECT last_name
FROM employees
WHERE last_name LIKE '%e'
  and last_name LIKE 'e%'
GROUP BY last_name;

-- update to previous query
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE '%e'
  and last_name LIKE 'e%'
GROUP BY last_name, first_name;

-- names with 'q' but not 'qu'
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

-- add a count to make it easier to find employees whose name is shared
SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*);

-- update query
SELECT COUNT(*), gender
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
    GROUP BY gender = 'M' DESC ;