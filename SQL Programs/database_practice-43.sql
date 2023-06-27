/*Add a unique constraint on the "name" column of the "salesmen" table
 to ensure that each salesman has a unique name.*/
 
 use salesman;
 select * from salesman_info;

alter table salesman_info
add constraint sa unique(name);