/*Create a table called "orders" with columns for ord_no, purch_amt, ord_date, customer_id, and salesman_id.
 Add a foreign key constraint on the customer_id column, 
referencing the customer_id column in the "customer" table.*/

create table orders(ord_no int, purch_amm double, ord_date varchar(25), customer_id int, salesman_id int, 
foreign key(customer_id)
references customer(customer_id)  );



