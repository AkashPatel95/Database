/* Write a SQL statement to generate a list in ascending order of salespersons
 who work either for one or more customers or have not yet joined any of the customers.*/

select * from salesman.salesman_info as s
right join customer.customer2_info as c on
s.salesman_id=c.salesman_id
order by s.name;