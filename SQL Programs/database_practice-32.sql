/* From the following table, write a SQL query to find details of all orders with a purchase amount less than 200 
or exclude orders with an order date greater than or equal to '2012-02-10' and a customer ID less than 3009. 
Return ord_no, purch_amt, ord_date, customer_id and salesman_id*/

show databases;

use oreder_w3schools7;
show tables;

select * from order_w3schools7_info where ( purch_amm<200 or not (ord_date>='2012-02-10') and customer_id<3009);



