/*From the following table, write a SQL query to calculate average price of the items for each company. 
Return average price and company code. */

use item_mast;

select avg(pro_price) as 'average price', pro_com as 'company code' from item_mast_info
group by pro_com;