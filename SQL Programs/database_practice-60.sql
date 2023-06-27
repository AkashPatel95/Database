/*SQL statement to generate a report with customer name, city, order number, order date, order amount, 
salesperson name, and commission to determine if any of the existing customers have not placed orders
 or if they have placed orders through their salesman or by themselves.*/
select c.cust_name as "customer name", c.city, o.ord_no,o.purch_amm as "order ammount",
s.name as "salesperson name", s.commission
from customer.customer2_info as c
left join oreder_w3schools7.order_w3schools7_info as o on
c.customer_id=o.customer_id
left join salesman.salesman_info as s on
o.salesman_id=s.salesman_id;
