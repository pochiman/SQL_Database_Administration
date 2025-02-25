USE thriftshop;

SELECT * FROM customer_purchases;

ALTER TABLE customer_purchases
DROP COLUMN customer_id;

ALTER TABLE customer_purchases
ADD COLUMN purchase_amount DECIMAL(10,2) AFTER customer_purchase_id;

-- ALTER TABLE customer_purchases
-- ADD COLUMN purchase_amount_two DECIMAL(10,2);

-- ALTER TABLE customer_purchases
-- DROP COLUMN purchase_amount_two;

SELECT * FROM customer_purchases;