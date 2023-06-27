/*Add a check constraint on the "purch_amt" column of the "orders" table
 to ensure that the purchase amount is greater than 0.*/
 show databases;
use oreder_w3schools7;

select * from order_w3schools7_info;

alter table order_w3schools7_info
add constraint ord
check(purch_amm>0);
