/*write a SQL query to find the highest purchase amount ordered by each customer on a particular date. 
Return, order date and highest purchase amount.*/

use oreder_w3schools7;

select * from order_w3schools7_info;

select customer_id,ord_date,max(purch_amm) as highest_purchase_ammount from order_w3schools7_info
group by
ord_date,customer_id;
