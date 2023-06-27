/*From the following table, write a SQL query to find the details of the customers whose names end with the letter 'n'. 
Return customer_id, cust_name, city, grade, salesman_id.*/

show databases;
use customer2;
show tables;

select * from customer2_info where cust_name like '%n';
