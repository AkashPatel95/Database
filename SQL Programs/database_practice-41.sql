/*write a SQL query to find all the customers. Sort the result-set in descending order on 3rd field.
 Return customer name, city and grade.  */
 
use customer;
select * from customer2_info;

select cust_name, city, grade from customer2_info
order by
grade desc;