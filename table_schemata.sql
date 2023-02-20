CREATE TABLE employees (
	emp_no int(10) PRIMARY KEY NOT NULL, 
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
)
;
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL, 
	dept_name VARCHAR
)
;
CREATE TABLE salaries (
	emp_no int NOT NULL, 
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)
;
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL, 
	emp_no int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)
;
CREATE TABLE dept_emp (
	emp_no int NOT NULL, 
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)
;
CREATE TABLE titles (
	title_id varchar PRIMARY KEY NOT NULL, 
	title varchar
)
;
--testing they work
SELECT *
from salaries
;
