-- limit -- aliasing

select * from employee_demographics
limit 3;
select * from employee_demographics
order by age desc
limit 3;

select * from employee_demographics
order by age desc
limit 2,1;

select first_name as Employee_Name from employee_demographics;
select concat(first_name, ' '  ,last_name) as Employee_Name from employee_demographics;
