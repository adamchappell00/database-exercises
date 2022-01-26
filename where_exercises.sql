USE employees;

SELECT *
FROM employees
WHERE gender = 'm'
    AND (first_name = 'irena'
    OR first_name = 'Vidya'
    OR first_name = 'maya');


SELECT *
FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
   AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

