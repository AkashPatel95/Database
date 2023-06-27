create database salesman;

use salesman;
create table salesman_info(salesman_id int, name varchar(50),city varchar(30), commission float);

insert into salesman_info values(5001,'James Hoong','New York',0.15), (5002,'Nail Knite','Paris',0.13), (5005,'Pit Alex','London',0.11), (5006, 'Mc Lyon','Paris',0.14), (5007,'Paul Adam','Rome',0.13), (5003,'Lauson Hen','San Jose',0.12);
show tables;
select * from salesman_info;