/*From the following table, create a view that counts the number of customers in each grade*/

use customer;
create view customer_view as 
select count(customer_id), grade from customer2_info
group by grade;

select * from customer_view;