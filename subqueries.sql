-- subqueries 
select * from employee_demographics;

select * from employee_salary;

select * from employee_demographics
where employee_id in ( select employee_id
 from employee_salary
where dept_id = 1);

select first_name, salary, avg(salary)
from employee_salary
group by first_name, salary; 