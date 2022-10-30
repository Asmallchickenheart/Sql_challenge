select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e 
inner join salaries s
on e.emp_no = s.emp_no

select first_name,last_name,hire_date from employees
where hire_date between '1986-01-01' 
and '1987-01-01 '

select de.dept_no, de.dept_name, d.emp_no,e.last_name, e.first_name
from departments de
inner join dept_manager d
on de.dept_no = d.dept_no
inner join employees e
on e.emp_no = d.emp_no


select de.dept_name, d.emp_no,e.last_name, e.first_name
from departments de
inner join dept_emp d
on de.dept_no = d.dept_no
inner join employees e
on e.emp_no = d.emp_no


select first_name, last_name,sex from employees
where first_name = 'Hercules'
and last_name like 'B%'

select de.dept_name, d.emp_no,e.last_name, e.first_name
from departments de
inner join dept_emp d
on de.dept_no = d.dept_no
inner join employees e
on e.emp_no = d.emp_no
where dept_name = 'Sales'

select de.dept_name, d.emp_no,e.last_name, e.first_name
from departments de
inner join dept_emp d
on de.dept_no = d.dept_no
inner join employees e
on e.emp_no = d.emp_no
where dept_name = 'Sales' or dept_name = 'Development'

SELECT last_name, COUNT(last_name)AS Frequency

FROM employees

GROUP BY last_name

ORDER BY

COUNT(last_name) DESC
