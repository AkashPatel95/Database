/*write a SQL query to find all the orders. 
Sort the result-set in descending order by ord_date. Return all fields. */

use oreder_w3schools7;

select * from order_w3schools7_info 
order by
ord_date desc;