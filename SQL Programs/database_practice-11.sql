/* SQL query to find orders that are delivered by a salesperson with ID 5001
return ord_no, ord_date, purch_amm*/


show tables;



select ord_no, ord_date, purch_amm from order_w3schools7_info where salesman_id=5001;