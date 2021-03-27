DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

------------------------------Employees
CREATE TABLE employees(
    emp_no INT,
    emp_title VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE,
	PRIMARY KEY (emp_no)
);
SELECT * FROM employees

--------------------------------Departments
CREATE TABLE departments(
    dept_no VARCHAR,
    dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);
SELECT * FROM departments

--------------------------------Department Manager
CREATE TABLE dept_manager(
    dept_no VARCHAR,
    emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager

--------------------------------Salaries
CREATE TABLE salaries(
    emp_no INT,
    salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries

--------------------------------Titles
CREATE TABLE titles(
    title_id VARCHAR,
    title VARCHAR
);
SELECT * FROM titles

--------------------------------Department Employees
CREATE TABLE dept_emp(
    emp_no INT,
    dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_emp
