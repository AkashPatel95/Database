/*Create a table called "customer" with columns for customer_id, cust_name, city, grade, and salesman_id.
 Add a foreign key constraint on the salesman_id column, referencing the salesman_id column in the "salesmen" table,
 to establish a relationship between customers and salesmen.*/
 
 create table customer(customer_id int, cust_name varchar(25), city varchar(25), grade int, salesman_id int,
 foreign key(salesman_id)
 references salesman(salesman_id));