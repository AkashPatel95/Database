/*Write a query to calculate the total price of each order in the "Order_w3schools7_info" table. 
Include the order number and a column called "Order Status" that categorizes the orders as "High"
 if the total price is greater than 1000, 
"Medium" if the total price is between 500 and 1000 (inclusive), and "Low" otherwise.*/

use oreder_w3schools7;
select * from order_w3schools7_info;

select ord_no,
case
when sum(purch_amm)>1000 then 'high'
when sum(purch_amm)>=500 and sum(purch_amm<=1000) then 'medium'
else 'low'
end as "Order Status"
from order_w3schools7_info
group by ord_no;