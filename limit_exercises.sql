USE employees
-- List the first 10 distinct last names in descending order
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;
-- display top 5 salaries and display employee #
SELECT emp_no
FROM salaries
    ORDER BY salary desc
LIMIT 5;
-- update to previous
select emp_no
from salaries
order by salary desc
    limit 5 offset 45;