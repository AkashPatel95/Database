/*From the following table, create a view to find the salesperson 
  who handles a customer who makes the highest order of the day.
 Return order date, salesperson ID, name.*/
 
 create or replace view viewtable2 as
 select o.ord_date, s.salesman_id, s.name from salesman.salesman_info as s
 inner join oreder_w3schools7.order_w3schools7_info as o on
 s.salesman_id = o.salesman_id
 where o.purch_amm in (select max(purch_amm) from oreder_w3schools7.order_w3schools7_info
 group by ord_date);
 
 
