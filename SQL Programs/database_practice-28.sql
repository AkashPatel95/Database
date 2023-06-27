/*From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. 
Order the result by product price in descending, 
then product name in ascending. Return pro_name and pro_price.*/

use item_mast;
show tables;

select * from item_mast_info;

select pro_name, pro_price from item_mast_info where pro_price>=250
order by 
pro_price desc,
pro_name asc;
