USE employees;

# #2 Show Each Dept Name with the Name of the Current Manager
SELECT d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ',e.last_name) AS 'Department Manager'
FROM employees AS e
    JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
    JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# All Departments Currently Managed By Women
SELECT d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ',e.last_name) AS 'Department Manager'
FROM employees AS e
    JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
    JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
    AND e.gender = 'F'
ORDER BY d.dept_name;

# Current Titles of Employees Currently Working in Customer Service Department
SELECT title, COUNT(title)
FROM employees AS e
    JOIN dept_emp AS de ON de.emp_no = e.emp_no
    JOIN titles AS t ON t.emp_no = e.emp_no
WHERE t.to_date = '9999-01-01'
    AND de.to_date = '9999-01-01'
    AND dept_no = 'd009'
GROUP BY title;

# Current Salary of All Current Managers
SELECT d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ',e.last_name) AS 'Department Manager',
    s.salary AS 'Salary'
FROM employees AS e
    JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
    JOIN departments AS d ON d.dept_no = dm.dept_no
    JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
    AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;
