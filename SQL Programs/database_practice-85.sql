/*Write a query to retrieve the names of customers along with a column called "Purchase Category" 
that categorizes them as "High" if their total purchase amount is greater than 2000,
"Medium" if it is between 1000 and 2000 (inclusive), and "Low" otherwise.*/


select c.cust_name,
case
when sum(purch_amm)>2000 then 'high'
when sum(purch_amm)>=1000 and sum(purch_amm)<=2000 then 'medium'
else 'low'
end as "Purchase Category"
from customer.customer2_info as c
inner join oreder_w3schools7.order_w3schools7_info as o on
c.customer_id=o.customer_id
group by c.cust_name;