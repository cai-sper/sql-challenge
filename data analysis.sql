--List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no=s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

--Change column data type to date from varchar
SET datestyle = 'ISO, MDY';
ALTER TABLE employees
ALTER COLUMN hire_date TYPE DATE
USING hire_date::date;

SELECT *
FROM employees
WHERE EXTRACT(YEAR FROM hire_date::date)= 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
JOIN departments as d
ON dm.dept_no=d.dept_no
JOIN employees as e
ON dm.emp_no=e.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN departments as d
ON de.dept_no=d.dept_no
JOIN employees as e
ON de.emp_no=e.emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-- List each employee in the Sales department, including their employee number, last name, and first name.

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).