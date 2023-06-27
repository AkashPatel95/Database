/*From the following table, write a SQL query to find customers who are from the city of New York or have a grade of over 100. 
Return customer_id, cust_name, city, grade, and salesman_id.*/
 show databases;
 use customer;
 
create database customer2;

create table customer2_info(customer_id int, cust_name varchar(20), city varchar(20), grade int, salesman_id int);

insert into customer2_info values(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002), (3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003), (3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', null, 5005);

select * from customer2_info where city='New York' or grade>100;