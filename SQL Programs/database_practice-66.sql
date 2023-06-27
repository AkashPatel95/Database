/*From the following tables write a SQL query to find the order values greater than the average order value of 10th October 2012. 
Return ord_no, purch_amt, ord_date, customer_id, salesman_id.*/


     
     SELECT
    ord_no,
    purch_amm,
    ord_date,
    customer_id,
    salesman_id
FROM
    oreder_w3schools7.order_w3schools7_info
WHERE
    purch_amm > (
        SELECT AVG(purch_amm)
        FROM oreder_w3schools7.order_w3schools7_info
        WHERE ord_date = '2012-10-10'
    );

