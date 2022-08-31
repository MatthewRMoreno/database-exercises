-- concat function
SELECT CONCAT('Hello ', 'Codeup', '!');
-- % is a wildcard
SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';
-- not like returns everything that doesnt match the pattern
/*This selects all first names without a letter 'a' in them*/
SELECT DISTINCT first_name
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT DAYOFMONTH('1990-05-03');
-- Will return 3

SELECT DAY('2017-03-25');
-- Will return 25

SELECT MONTH('2008-02-03');
-- Will return 2

SELECT YEAR('1987-01-01');
-- Will return 1987

-- finding out how many employees were birn in independence day during the 1950s
SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 1959
  AND month(birth_date) = 7
  AND day(birth_date) = 4;

-- now function returns the current time
SELECT NOW();

-- curdate returns the current date with no time info
SELECT CURDATE();

-- curtime return the current time
SELECT CURTIME();

-- UNIX_TIMESTAMP() represents time as an integer outputs # of seconds
SELECT CONCAT(
               'Teaching people to code for ',
               UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
               ' seconds'
           );