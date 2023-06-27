/*From the following tables, write a SQL query 
to find all those salespeople and customers who are involved in the inventory management system.
 Return salesperson ID, customer ID.*/
 
 select salesman_id,customer_id from oreder_w3schools7.order_w3schools7_info
 union
 select salesman_id,customer_id from customer.customer2_info;