/*From the following tables, write a SQL query to find those salespeople
 who live in the same city where the customer lives as well as 
 those who do not have customers in their cities by indicating 'NO MATCH'.
 Sort the result set on 2nd column (i.e. name) in descending order. 
Return salesperson ID, name, customer name, commission.*/

select  s.salesman_id, s.name, c.cust_name, s.commission
from salesman.salesman_info as s
left join customer.customer2_info as c on
s.city=c.city


union
select s.salesman_id, s.name, 'No Match', s.commission
from salesman.salesman_info as s
left join customer.customer2_info as c on
s.city<>c.city
order by 2 desc;




