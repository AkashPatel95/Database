/*write a SQL query to determine the maximum order amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). 
Return customer id and maximum purchase amount.*/

use oreder_w3schools7;

select customer_id, max(purch_amm) as maximum_purchase_amm from order_w3schools7_info
where customer_id>=3002 and customer_id<=3007
order by 
customer_id;


