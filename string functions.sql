-- string function 
select * from employee_demographics;
select length('Ameet');
select first_name, length(first_name) from employee_demographics
order by 2;

select upper('Ameet');
select lower('Ameet');
select first_name, upper(first_name) from employee_demographics;
select first_name, left(first_name,4), right(first_name,4), substring(first_name,3,2) from employee_demographics; 
select * from employee_demographics;
select first_name, replace(first_name, 'a','z') from employee_demographics;
select locate('m' , 'Ameet');
select first_name, locate('Mark', first_name) from employee_demographics;
select first_name, last_name, concat(first_name, ' ', last_name ) as employee_full_name from employee_demographics;