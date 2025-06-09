-- unions
select * from employee_demographics;

select * from employee_salary;

select first_name, last_name, 'old' as label
from employee_demographics
where age > 50
union 
select first_name, last_name, 'Highly paid emp' as label
from employee_salary
where salary > 70000;
