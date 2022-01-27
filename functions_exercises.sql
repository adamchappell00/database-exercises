USE employees;

-- #2: LAST NAME "E" QUERIES
SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e'
ORDER BY emp_no ASC;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
ORDER BY emp_no ASC;

-- #3 Employees born on Christmas
SELECT *
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25;

-- #4 Employees born on Christmas and Hired in the 1990's
SELECT *
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25
    AND year(hire_date) BETWEEN 1990 AND 1999;

-- #5 Employees born on Christmas and Hired in the 1990's, Ordered by Oldest Employee with Latest Hire Date
SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date ASC, hire_date DESC;

-- #6 Employees born on Christmas and Hired in the 1990's, Displaying number of days working at company
SELECT DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999;