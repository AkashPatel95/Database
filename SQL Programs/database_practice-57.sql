/*From the following tables write a SQL query 
to display the customer name, customer city, grade, salesman, salesman city. 
The results should be sorted by ascending customer_id.*/

select c.cust_name as "customer name", c.city as "customer city", c.grade,
s.name as "salesman", s.city as "salesman city"
from customer.customer2_info as c 
inner join salesman.salesman_info as s on
c.salesman_id=s.salesman_id 
order by c.customer_id ;

select c.cust_name as "customer name", c.city as "customer city", c.grade,
s.name as "salesman", s.city as "salesman city"
from customer.customer2_info as c
left join salesman.salesman_info as s on
c.salesman_id=s.salesman_id
order by c.customer_id;