USE employees;

-- #1 Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

-- #2 Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

-- #3 Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    )
    AND gender = 'F';

-- BONUS Find all the department names that currently have female managers.
    # GIVE ME THE DEPARTMENT NAME
SELECT dept_name
FROM departments
    # WHERE THE DEPARTMENT NUMBER
WHERE dept_no IN (
    SELECT dept_no
    # HAS A CURRENT MANAGER
    FROM dept_manager
    WHERE to_date > curdate()
        # WHERE THE ID OF THAT MANAGER
        AND emp_no IN (
            #IS FOR AN EMPLOYEE
            SELECT emp_no
            FROM employees
            # THAT HAS A GENDER OF FEMALE
            WHERE gender = 'F'
        )
);
-- BONUS 2 Find the first and last name of the Employee with the Highest Salary
SELECT first_name, last_name
FROM employees
    JOIN salaries AS s ON employees.emp_no = s.emp_no
WHERE to_date > CURDATE()
ORDER BY s.salary DESC
LIMIT 1;