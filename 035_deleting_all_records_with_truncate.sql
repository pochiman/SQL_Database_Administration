USE thriftshop;

SELECT * FROM customers;

SELECT @@autocommit;

SET autocommit = OFF;

DELETE FROM customers
WHERE customer_id BETWEEN 1 AND 6;

ROLLBACK;

TRUNCATE TABLE customers; -- cannot be rolled back