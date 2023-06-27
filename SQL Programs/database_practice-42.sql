/* a table called "salesmen" with columns for salesman_id, name, city, and commission. 
Add a primary key constraint on the salesman_id column.*/

show databases;
use salesman;

show tables;
select * from salesman_info;
alter table salesman_info
add primary key(salesman_id);