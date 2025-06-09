-- joins 

-- inner join 
select * from employee_demographics;

select * from employee_salary;

select * from employee_demographics
inner join employee_salary; # not valid

select * from employee_demographics 
inner join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id;

select * from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

select dem.employee_id, age, occupation from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- outer join
select * from employee_demographics as dem
left outer join employee_salary as sal
on dem.employee_id = sal.employee_id;

select * from employee_demographics as dem
right join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- self join 
-- self join is a type of join where a table is joined with itself.
-- This is useful when you want to compare or combine rows within the same table.

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id +1 = emp2.employee_id;

-- joining multiple tables

select * from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id
inner join parks_departments as pd
on sal.dept_id = pd.department_id;

