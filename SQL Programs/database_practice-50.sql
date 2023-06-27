/*From the following tables write a SQL query to find the salesperson and customer
 who reside in the same city.
 Return Salesman, cust_name and city.*/

select s.name as salesman, c.cust_name, s.city
from salesman.salesman_info as s 
inner join
customer.customer2_info as c on
s.city=c.city;

