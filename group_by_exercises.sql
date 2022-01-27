USE employees;

-- #2 Unique Titles
SELECT DISTINCT title FROM titles;

-- #3 Starts with and Ends with 'E' Grouped by Last Name
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY last_name;

-- #4 Unique Combinations of First and Last Names where the Last name
-- starts and ends with 'E'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

-- #5 Unique last names with a 'q' but not 'qu'
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- #6 last names 'q' not 'qu' with Count
SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- #7 Irena,Vidya,Maya Name Query with a count of each Gender with
-- those names
SELECT COUNT(gender), gender
FROM employees
WHERE first_name = 'irena'
   OR first_name = 'Vidya'
   OR first_name = 'maya'
GROUP BY gender;