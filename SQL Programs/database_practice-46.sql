/*Modify the "customer" table to add a not null constraint on the "cust_name" column, 
ensuring that it always has a value.*/


alter table customer2_info
modify column cust_name varchar(25) not null;