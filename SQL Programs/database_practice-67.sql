/*From the following tables, write a SQL query to find all the orders generated in New York city. 
Return ord_no, purch_amt, ord_date, customer_id and salesman_id.*/

select * from oreder_w3schools7.order_w3schools7_info
where salesman_id = (select salesman_id from salesman.salesman_info
where city='new york');