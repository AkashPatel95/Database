/*write a SQL query to find all the customers. 
Sort the result-set by customer_id. Return cust_name, city, grade. */


use customer;

show tables;
select * from customer2_info;

select cust_name,city,grade from customer2_info 
order by
customer_id;
