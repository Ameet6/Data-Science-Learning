-- A stored procedure in MySQL is a set of SQL statements 
-- that can be executed repeatedly with a single call. 
create procedure large_salary()
select * from employee_salary
where salary >= 50000;

call large_salary();

create procedure large_salary2()
select * from employee_salary
where salary >= 50000;
select * from employee_salary
where salary >= 10000;

delimiter $$
create procedure large_salary3()
begin
	select * from employee_salary
	where salary >= 50000;
	select * from employee_salary
	where salary >= 10000;
end $$
delimiter;

call large_salary3();

delimiter $$
create procedure large_salary4(employee_id_param int)
begin
    select salary from employee_salary
	where employee_id = employee_id_param;
end $$
delimiter ;

call large_salary4(2);
