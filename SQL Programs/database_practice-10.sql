/*SQL query to find customers whose grade is 200. return customer_id, cust_name,city,grade,salesman_id*/

create database customer;

create table customer_info(customer_id int, cust_name varchar(50), city varchar(25), grade int, salesman_id int);

insert into customer_info values(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002), (3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100,5003), (3003, 'Jozy Altidor','Moscow', 200, 5007), (3001, 'Brad Guzan', 'London',null ,5005);

select * from customer_info;

select customer_id, city, grade, salesman_id from customer_info where grade=200;