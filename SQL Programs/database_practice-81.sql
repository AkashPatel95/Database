/* From the following tables, create a view to get the salesperson and customer by name.
 Return order no, purchase amount, salesperson ID, name, customer name.*/
 
 create view viewtable as
 select o.ord_no, o.purch_amm, o.salesman_id, s.name, c.cust_name
 from oreder_w3schools7.order_w3schools7_info as o
 right join salesman.salesman_info as s on
 o.salesman_id=s.salesman_id
right join customer.customer2_info as c on
o.customer_id=c.customer_id;

select * from viewtable;
 
 