/*From the following tables, write a SQL query to find distinct salespeople and their cities. 
Return salesperson ID and city.*/

select salesman_id, city from salesman.salesman_info
union
select salesman_id,city from customer.customer2_info;