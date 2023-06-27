/*From the following tables write a SQL query to find those customers
 with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. 
The result should be ordered by ascending customer_id. */

select c.cust_name, c.city as "customer city", c.grade, s.name as "salesman",
s.city as "salesmancity"
from customer.customer2_info as c
inner join salesman.salesman_info as s on
c.salesman_id=s.salesman_id
where c.grade<300
order by c.customer_id;

/*or*/

select c.cust_name, c.city as "customer city", c.grade, s.name as "salesman",
s.city as "salesman city"
from customer.customer2_info as c
right join salesman.salesman_info as s on
c.salesman_id=s.salesman_id
where c.grade<300
order by c.customer_id;

