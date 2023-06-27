/* From the following tables write a SQL query to find salespeople who received commissions 
of more than 12 percent from the company. 
Return Customer Name, customer city, Salesman, commission.*/

select c.cust_name as "customer name", c.city as "customer city", s.name as salesman, s.commission
from customer.customer2_info as c
inner join salesman.salesman_info as s on
c.salesman_id=s.salesman_id
and
s.commission>0.12;