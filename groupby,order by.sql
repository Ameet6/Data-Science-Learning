-- group by 
select * from employee_demographics;


select gender, avg(age)
from employee_demographics
group by gender;

select * from employee_salary;
select occupation, salary from employee_salary
group by occupation, salary;
select occupation, avg(salary), max(salary), min(salary),count(salary) from employee_salary
group by occupation;
-- order by -- sorting result set in asdending -- default (smallest to largest) and descending 
select * from employee_salary
order by first_name;
select * from employee_salary 
order by first_name desc;
select * from employee_demographics 
order by gender, age desc;
-- instead of column name we use column number but better to use column name
select * from employee_demographics 
order by 5, 4 desc;

