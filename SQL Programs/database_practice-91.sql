/*using trigger*/

create database triggers;
use triggers;
create table employee(name varchar(25), occupation varchar(35), working_date varchar(25), working_hours int);

insert into employee values('robin', 'scientist', '2020-10-04', 12), ('warner', 'engineer', '2020-10-04', 10),
('peter', 'actor', '2020-10-04', 13), ('marco', 'doctor', '2020-10-04', 14), ('brayden', 'teacher', '2020-10-04', 12),
('antonio', 'business', '2020-10-04', 11);

delimiter //
create trigger employee_details
before insert on employee
for each row
begin
if new.occupation='scientist' then set new.occupation='doctor';
end if;
end //
delimiter ;

insert into employee values('joe', 'scientist', '2020-10-04', 15);
select * from employee;
 