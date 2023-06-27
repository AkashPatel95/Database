/*From the following table, create a view for those salespeople who belong to the city of New York.*/

use salesman;
create view salesman_view as
select * from salesman_info
where city='new york';

select * from salesman_view;