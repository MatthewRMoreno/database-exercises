SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;
-- all managers in the departments
SELECT dept_name, CONCAT(first_name, ' ', last_name) as full_name
FROM employees as e
         INNER JOIN dept_manager as dm ON dm.emp_no = e.emp_no
         INNER JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';
-- managers that are woman
SELECT dept_name, CONCAT(first_name, ' ', last_name) as full_name
FROM employees as e
INNER JOIN dept_manager as dm ON dm.emp_no = e.emp_no
INNER JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';
-- employees working in customer service department title
SELECT title, count(titles.emp_no)
FROM titles
         join dept_emp de on titles.emp_no = de.emp_no
where titles.to_date = '9999-01-01'
  AND dept_no = 'd009'
GROUP BY title
ORDER BY count(titles.emp_no) desc;
-- current salary of managers
SELECT distinct d.dept_name AS Department_Name,
                CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager,
                s.salary AS Salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         LEFT JOIN departments as d
                   ON d.dept_no = dm.dept_no
         LEFT JOIN salaries s on dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
group by d.dept_name;
-- bonus