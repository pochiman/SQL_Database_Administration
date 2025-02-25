USE mavenfuzzyfactorymini;

SELECT * FROM orders_mini
WHERE order_id = 9994
;

SELECT * FROM order_items_mini
WHERE order_id = 9994 -- this is the foreign key, which links to the primary key in orders (order_id)
;

SELECT * FROM order_item_refunds_mini;