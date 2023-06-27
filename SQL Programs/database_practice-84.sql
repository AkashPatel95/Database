/*Write a query to retrieve the order number, order date, and a column called "Order Status" 
that categorizes orders as "Delayed" if the difference between the order date and the current date
 is greater than 30 days, 
"On Time" if it's within 30 days, and "Early" if the order date is in the future.*/

use oreder_w3schools7;

select ord_no,ord_date,
case
when datediff(curdate(),ord_date)>30 then 'delayed'
when datediff(curdate(),ord_date)<=30 and datediff(curdate(),ord_date)>=0 then 'on time'
else 'early'
end as "Order Status"
from order_w3schools7_info;