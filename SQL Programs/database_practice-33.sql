/*From the following table, write a SQL query to find all orders that meet the following conditions. 
Exclude combinations of order date equal to '2012-08-17' 
or customer ID greater than 3005 and purchase amount less than 1000.*/

use oreder_w3schools7;

select * from order_w3schools7_info where not (ord_date='2012-08-17') and not (customer_id>3005) and not(purch_amm<1000);