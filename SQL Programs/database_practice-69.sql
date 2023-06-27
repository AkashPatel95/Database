/*From the following tables write a SQL query to count the number of customers 
with grades above the average in New York City. Return grade and count. */

select grade, count(customer_id) from customer.customer2_info
group by grade
having grade>(select avg(grade) from customer.customer2_info where city='New York');