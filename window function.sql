/* window functions allow you to perform calculations across a set of rows
 that are related to the current row. 
 They are similar to aggregate functions,
 but instead of grouping rows into a single output row,
 window functions return a value for each row in the result set. */
 
 select * from employee_demographics;
 select * from employee_salary;
 select dem.first_name, dem.last_name, gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.employee_id, dem.first_name, dem.last_name, gender,salary,
row_number() over(partition by gender order by salary desc)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.employee_id, dem.first_name, dem.last_name, gender,salary,
row_number() over(partition by gender order by salary desc) AS row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dens_rank_num
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;