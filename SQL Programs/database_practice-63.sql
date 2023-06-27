/*For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list,
 create a report containing the customer name, city, order number, order date, and purchase amount*/
 
 select c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amm
 from customer.customer2_info as c 
 left join oreder_w3schools7.order_w3schools7_info as o on
 c.customer_id=o.customer_id;