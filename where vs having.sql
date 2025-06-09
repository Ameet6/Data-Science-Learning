-- having vs where
/* WHERE Clause
1. Used to filter rows based on conditions.
2. Applied before grouping (GROUP BY).
3. Cannot use aggregate functions (e.g., SUM, AVG).

HAVING Clause
1. Used to filter groups based on conditions.
2. Applied after grouping (GROUP BY).
3. Can use aggregate functions */


select gender, avg(age)  from employee_demographics
group by gender
having avg(age) > 40;
-- The GROUP BY clause groups rows that have the same values in one or more columns
select * from employee_salary;
select occupation, avg(salary) from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 70000;
