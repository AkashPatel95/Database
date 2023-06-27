/*From the following tables, write a SQL query to find those salespeople who earned the maximum commission. 
Return ord_no, purch_amt, ord_date, and salesman_id.*/

select ord_no, purch_amm, ord_date, salesman_id
from oreder_w3schools7.order_w3schools7_info 
where salesman_id in (select salesman_id from salesman.salesman_info where commission in 
(select max(commission) from salesman.salesman_info));