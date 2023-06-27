/* From the following tables, write a SQL query 
that appends strings to the selected fields, 
indicating whether the city of any salesperson is matched with the city of any customer. 
Return salesperson ID, name, city, MATCHED/NO MATCH.*/

select s.salesman_id, s.name, s.city, 'Matched'
from salesman.salesman_info as s
inner join customer.customer2_info as c on
s.city=c.city
union
select s.salesman_id, s.name, s.city, 'No Match'
from salesman.salesman_info as s
left join customer.customer2_info as c on
s.city<>c.city
union
select s.salesman_id, s.name, s.city, 'No Match'
from salesman.salesman_info as s
right join customer.customer2_info as c on
s.city<>c.city;

