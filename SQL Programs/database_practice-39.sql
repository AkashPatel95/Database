/*write a SQL query to count the number of orders based on the combination of each order date and salesperson.
Return order date, salesperson id.*/

use oreder_w3schools7;

select ord_date, salesman_id,count(ord_no) from order_w3schools7_info
group by
ord_date,salesman_id;