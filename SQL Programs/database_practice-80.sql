/* From the following table, create a view to count the number of unique customers, 
compute the average and the total purchase amount of customer orders by each date.*/

use oreder_w3schools7;
create or replace view oreder_w3schools7_view as 
select ord_date,count(distinct customer_id),avg(purch_amm) as average, sum(purch_amm) as total from order_w3schools7_info
group by ord_date;

select * from oreder_w3schools7_view;