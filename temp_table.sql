
create temporary table temp_table
(f_name varchar(50),
L_name varchar(30),
city varchar(30)
);

insert into temp_table
values("ameet","kumar","mithi");

select * from temp_table;

select * from employee_salary;
create temporary table salary_over_50k
select * from employee_salary
where salary >= 50000;

select * from salary_over_50k;
