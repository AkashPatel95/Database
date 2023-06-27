/*From the following table, create a view to locate the salespeople in the city 'New York'.*/

create view salesman_view2 as 
select * from salesman_info
where city='new york';

select * from salesman_view2;