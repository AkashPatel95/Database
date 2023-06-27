/* From the following tables, 
write a SQL query to find all salespeople and customers located in the city of London.*/

select name from salesman.salesman_info
where city='london'
union
select cust_name from customer.customer2_info
where city='london';