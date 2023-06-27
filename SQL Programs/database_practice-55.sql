/*From the following tables write a SQL query to find the details of an order. 
Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.*/

select o.ord_no, o.ord_date, o.purch_amm, c.cust_name as "customer name",
c.grade, s.name as "salesman", s.commission
from oreder_w3schools7.order_w3schools7_info as o
inner join customer.customer2_info as c on
o.salesman_id=c.salesman_id
inner join salesman.salesman_info as s on
o.salesman_id=s.salesman_id;


