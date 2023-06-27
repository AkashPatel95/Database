/*From the following tables, write a SQL query to find all the orders issued by the salesman 'Paul Adam'.
 Return ord_no, purch_amt, ord_date, customer_id and salesman_id.*/
 
select * from oreder_w3schools7.order_w3schools7_info as o
where o.salesman_id = (select s.salesman_id from salesman.salesman_info as s where s.name='Paul Adam');