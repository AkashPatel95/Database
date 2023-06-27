/* From the following table, create a view for all salespersons. Return salesperson ID, name, and city.  */

create view salesman_view1 as
select salesman_id, name, city from
salesman_info;

select * from salesman_view1;