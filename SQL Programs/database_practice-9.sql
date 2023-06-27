/* SQL query to locate salespeople live in the city of paris. Return salesperson's name,city*/
show databases;
use salesman;

show tables;
select * from salesman_info;

select name, city from salesman_info where city='paris';