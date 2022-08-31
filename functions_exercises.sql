-- 2.
select concat_ws(' ', first_name, last_name) as full_name
from employees
where last_name like 'e%'
  and last_name like '%e';

-- 3.
select *
from employees
where month(birth_date) = 12
  and day(birth_date) = 25;

-- 4.
select *
from employees
where month(birth_date) = 12
  and day(birth_date) = 25
  and year(hire_date) between 1990 and 1999;

-- 5.
select *
from employees
where month(birth_date) = 12
  and day(birth_date) = 25
  and year(hire_date) between 1990 and 1999
order by birth_date, hire_date desc;

-- 6
select *, datediff(now(), hire_date) as hire_days
from employees
where month(birth_date) = 12
  and day(birth_date) = 25
  and year(hire_date) between 1990 and 1999;