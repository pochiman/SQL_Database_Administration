USE sloppyjoes;

CALL sp_staffOrdersServed;

DELIMITER //
CREATE PROCEDURE sp_staffOrdersServed()
BEGIN
-- HINT: this is the query you want to imbed in a stored procedure
SELECT
	staff_id,
    COUNT(order_id) AS orders_served
FROM customer_orders
GROUP BY staff_id;
END //

DELIMITER;