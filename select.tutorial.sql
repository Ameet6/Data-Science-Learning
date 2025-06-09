SELECT * FROM parks_and_recreation.employee_demographics;

SELECT employee_id, first_name,age, age+ 5 FROM parks_and_recreation.employee_demographics;

SELECT distinct first_name, gender FROM parks_and_recreation.employee_demographics;
SELECT employee_id, first_name,age, (age + 5) * 10 FROM parks_and_recreation.employee_demographics;
#PEMDAS