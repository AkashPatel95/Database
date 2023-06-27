/*From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000.
 Return ord_no, purch_amt, cust_name, city.*/
 
select o.ord_no, o.purch_amm, c.cust_name, c.city
from oreder_w3schools7.order_w3schools7_info as o
inner join customer.customer2_info as c on
o.customer_id=c.customer_id
where purch_amm between 500 and 2000;