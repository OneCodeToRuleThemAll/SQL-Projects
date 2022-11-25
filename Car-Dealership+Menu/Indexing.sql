DROP INDEX dealer_name_asc,cust_name_asc,final_price_asc,cust_phone_asc;

CREATE INDEX dealer_name_asc ON dealer(dealer_name ASC);
CREATE INDEX cust_name_asc ON customer(cust_name ASC);
CREATE INDEX final_price_asc ON orders(final_price ASC);


SELECT customer_id from customer where cust_name='Quemby Woodward';
SELECT customer_id from orders where final_price='12000';
SELECT dealer_phone from dealer where dealer_name='Wallace Frost';
