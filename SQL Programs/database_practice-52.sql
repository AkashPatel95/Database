/* From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. 
Return Customer Name, city, Salesman, commission.*/

select c.cust_name as customer_name, c.city, s.name as salesman, s.commission
from customer.customer2_info as c
inner join salesman.salesman_info as s on
c.salesman_id=s.salesman_id;