create table title(

			title_id varchar(250) not null PRIMARY KEY,
			title varchar(250) not null
);

create table employees(
			emp_no integer PRIMARY KEY,
			emp_title_id varchar(250),
			birth_date timestamp,
			first_name varchar(150) not null,
			last_name varchar(150) not null,
			sex varchar(150) not null,
			hire_date timestamp not null,
			FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
			);


create table salaries(
			emp_no integer,
			salary integer,
			FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
			);			


create table departments(

			dept_no varchar(250) not null PRIMARY KEY,
			dept_name varchar(250) not null
);

create table dept_emp(
			emp_no integer not null,
			dept_no varchar(250) NOT NULL, 
			FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
			FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

create table dept_manager(
			dept_no varchar(250)  NOT NULL,
			emp_no integer NOT NULL,
			FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
			FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
