-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
from Employees
join Salaries on Employees.emp_no = Salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select Employees.first_name, Employees.last_name, Employees.hire_date
from Employees
where  hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_no, Departments.dept_name
from Employees
inner join Dept_Manager on Employees.emp_no = Dept_Manager.emp_no
inner join Departments On Dept_Manager.dept_no = Departments.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees
inner join Dept_Emp On Employees.emp_no = Dept_Emp.emp_no
inner join Departments On Dept_Emp.dept_no = Departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select Employees.last_name, Employees.first_name, Employees.sex 
from Employees
where first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees
inner join Dept_Emp on Employees.emp_no = Dept_Emp.emp_no
inner join Departments on Dept_Emp.dept_no = Departments.dept_no
where Departments.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees
inner join Dept_Emp on Employees.emp_no = Dept_Emp.emp_no
inner join Departments on Dept_Emp.dept_no = Departments.dept_no
where Departments.dept_name = 'Sales' or Departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "Frequency"
from Employees
Group by last_name
Order by "Frequency" DESC;