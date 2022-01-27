USE employees;

/*   #2      */
SELECT *
FROM employees
WHERE first_name = 'irena'
   OR first_name = 'Vidya'
   OR first_name = 'maya'
ORDER BY first_name ASC, emp_no DESC;

/*   #3      */
SELECT *
FROM employees
WHERE first_name = 'irena'
   OR first_name = 'Vidya'
   OR first_name = 'maya'
ORDER BY first_name ASC, last_name ASC;

/*   #4    */
SELECT *
FROM employees
WHERE first_name = 'irena'
    OR first_name = 'Vidya'
    OR first_name = 'maya'
ORDER BY last_name ASC, first_name DESC;

/*    #5     */
SELECT *
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e'
ORDER BY emp_no ASC;

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
ORDER BY emp_no ASC;


SELECT *
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
ORDER BY emp_no DESC;