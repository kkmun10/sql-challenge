--List the employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees e
join salaries s
on e.emp_no = s.salary
;
--List the first name, last name, and hire date for the employees who were hired in 1986
select emp_no, first_name, last_name, hire_date
from employees
where DATE_PART('year',hire_date) = 1986
;
--List the manager of each department along with their department number, department name, employee number, last name, and first name
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from dept_manager m 
join departments d
on d.dept_no = m.dept_no
join employees e
on e.emp_no = m.emp_no
;
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select x.dept_no, d.emp_no, e.first_name, e.last_name, x.dept_name 
from dept_emp d
join employees e
on e.emp_no = d.emp_no
join departments x
on x.dept_no = d.dept_no
;
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name = 'Hercules' AND last_name like 'B%' 
;
--List each employee in the Sales department, including their employee number, last name, and first name
select * 
from departments
;
--sales is d007
select e.emp_no, e.last_name, e.first_name
from employees e 
join dept_emp d
on e.emp_no = d.emp_no
where dept_no = 'd007'
;
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select * from departments ; 
-- development is d005
select e.emp_no, e.last_name, e.first_name, x.dept_name
from employees e 
join dept_emp d
on e.emp_no = d.emp_no
join departments x
on x.dept_no = d.dept_no
where d.dept_no = 'd005' or d.dept_no = 'd007' 
;
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select last_name, count(last_name) as "Name Count"
from employees
group by last_name
order by "Name Count" DESC
;