/* Write a SQL query that displays order number, purchase amount,
 and the achieved and unachieved percentage (%) for those orders that exceed 50% of the target value of 6000.*/
 
 select ord_no, purch_amm, (100*purch_amm)/6000 as 'achieved%',(100*(6000-purch_amm)/6000) as 'unachieved%' from
 order_w3schools7_info where (100*purch_amm)/6000>50;