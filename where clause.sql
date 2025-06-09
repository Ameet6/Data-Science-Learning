--- where
select * FROM parks_and_recreation.employee_demographics
WHERE age <= 40;

SELECT * FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Ben';
SELECT * FROM parks_and_recreation.employee_salary
WHERE salary = 50000;
SELECT * FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;
SELECT * FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female';
SELECT * FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1980-01-01';

-- AND OR NOT -- LOGICAL OPERATOR
SELECT * FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1980-01-01' AND gender = 'MALE';
 SELECT * FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1980-01-01' OR  gender = 'MALE';
select * from employee_demographics 
where first_name = 'BEN' AND AGE = 38;
select * from employee_demographics 
where (first_name = 'BEN' AND AGE = 38) OR AGE > 40;

-- LIKE STATEMENT -- % _
SELECT * FROM employee_demographics
WHERE first_name LIKE 'AN%' ;
-- Starting from an then has anything after
SELECT * FROM employee_demographics
WHERE first_name LIKE '%er%';
-- starting and ending from anything but between er comes
SELECT * FROM employee_demographics
WHERE first_name LIKE 'a__';
-- starting with a and after a any two characters
SELECT * FROM employee_demographics
WHERE first_name LIKE 'A__%';
-- starting with a after a any two character but after any two character anything after character

