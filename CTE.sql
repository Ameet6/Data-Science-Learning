-- CTE common table expression
-- a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement.

select gender, avg(salary), max(salary), min(salary), count(salary)
from employee_demographics dem
join employee_salary sal 
on dem.employee_id = sal.employee_id
group by gender;

with cte_example as
(
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal , count(salary) count_sal
from employee_demographics dem
join employee_salary sal 
on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal) from cte_example;