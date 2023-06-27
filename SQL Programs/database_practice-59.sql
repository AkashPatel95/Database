/*Write a SQL statement to make a report with customer name, city, order number, order date, and order amount 
in ascending order according to the order date 
to determine whether any of the existing customers have placed an order or not.*/

select distinct c.cust_name as "customer name", c.city, o.ord_no as "order number", o.ord_date as "order date",
o.purch_amm as "order ammount"
from oreder_w3schools7.order_w3schools7_info as o
left join customer.customer2_info as c on
o.customer_id=c.customer_id
order by o.ord_date;