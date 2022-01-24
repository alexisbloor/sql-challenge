CREATE TABLE Departments(
    dept_no varchar primary key,
    dept_name varchar
);

CREATE TABLE Titles(
    title_id varchar primary key,
    title varchar
);

CREATE TABLE Employees(
    emp_no int primary key,
    emp_title_id varchar, 
    birth_date date,
    first_name varchar,
    last_name varchar, 
    sex varchar, 
    hire_date date,
    FOREIGN key (title_id) References Titles (title_id)
);

CREATE TABLE Salaries(
    emp_no int primary key,
    salary int,
    FOREIGN key (emp_no) References Employees (emp_no)
);

CREATE TABLE Dept_Emp (
    emp_no int,
    dept_no varchar,
    primary (emp_no, dept_no),
    FOREIGN key (emp_no) References Employees (emp_no),
    FOREIGN key (dept_no) References Departments (dept_no)
)

CREATE TABLE Dept_Manager (
    dept_no varchar,
    emp_no int,
    primary key (dept_no, emp_no),
    FOREIGN key (dept_no) References Departments (dept_no),
    FOREIGN key (emp_no) References Employees (emp_no)
)