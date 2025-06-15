-- case statement
select * from employee_demographics;
select first_name, last_name,
case
when age <= 30 then 'young'
when age between 31 and 50 then 'old'
end as age_bracket
from employee_demographics;

select * from employee_salary;
select first_name, last_name, salary, 
case
when salary < 50000 then salary + (salary * 0.05)
when salary > 50000 then salary + (salary * 0.07)
end as new_salary,  
case
when dept_id = 6 then salary * 0.10 
end as bonus
from employee_salary;