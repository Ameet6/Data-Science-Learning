CREATE DATABASE FET;

drop table if exists faculty;
create table faculty(
teacher_id int primary key auto_increment,
teacher_name varchar (25) not null,
destination varchar (30),
department_name varchar (30)
);
drop table if exists data_science;
CREATE TABLE data_science(
student_id int (15)  primary key auto_increment,
student_name varchar (25) not null,
father_name varchar (25),
city varchar (25),
contact_number bigint (15), 
teacher_id int,
foreign key (teacher_id) references faculty(teacher_id)
);

INSERT INTO faculty (teacher_name, destination, department_name)
VALUES
  ('Muhammad Ali', 'Assistant Professor', 'Information Technology'),
  ('Sophia Khan', 'Assistant Professor', 'Data Science'),
  ('Omar Farooq', 'Assistant Professor', 'Software Engineering'),
  ('Ayesha Zahid', 'Teaching Assistant', 'Information Technology'),
  ('Hassan Raza', 'Teaching Assistant', 'Data Science'),
  ('Zainab Ali', 'Teaching Assistant', 'Telecommunication'),
  ('Dr. Ahmed Raza', 'Professor', 'Information Technology'),
  ('Dr. Sofia Javed', 'Professor', 'Data Science'),
  ('Dr. Kamran Ali', 'Professor', 'Electronic'),
  ('Dr. Rabia Bashir', 'Professor', 'Information Technology');
  
  INSERT INTO data_science (student_name, father_name, city, contact_number, teacher_id)
VALUES
  ('Rohan Ali', 'Ali Hassan', 'Karachi', 1234567890, 1),
  ('Ayesha Khan', 'Khan Mohammad', 'Lahore', 9876543210, 2),
  ('Ali Raza', 'Raza Ali', 'Islamabad', 5551234567, 3),
  ('Sadia Javed', 'Javed Iqbal', 'Peshawar', 7654321098, 4),
  ('Hassan Ali', 'Ali Hassan', 'Quetta', 3421567890, 5),
  ('Zainab Siddiqui', 'Siddiqui Ali', 'Multan', 6789456123, 6),
  ('Rabia Bashir', 'Bashir Ahmad', 'Faisalabad', 9012345678, 7),
  ('Kamran Ali', 'Ali Kamran', 'Sialkot', 4567890123, 8),
  ('Sofia Javed', 'Javed Iqbal', 'Gujranwala', 7890123456, 9),
  ('Ahmed Raza', 'Raza Ali', 'Sargodha', 2345678901,1);
  
select * from faculty;
select * from data_science;
