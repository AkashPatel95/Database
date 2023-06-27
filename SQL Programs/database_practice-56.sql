/*Write a SQL statement to join the tables salesman, 
customer and orders so that the same column of each table appears once and only the relational rows are returned. */

select * from oreder_w3schools7.order_w3schools7_info as o
inner join customer.customer2_info as c on o.salesman_id=c.salesman_id
inner join salesman.salesman_info as s on o.salesman_id=s.salesman_id; 