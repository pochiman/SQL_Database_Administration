USE sloppyjoes;

SELECT * FROM customer_orders;

SELECT * FROM menu_items;

SELECT * FROM staff;


UPDATE customer_orders
SET order_total = 0
WHERE order_id IN (3, 8, 12, 16, 19);