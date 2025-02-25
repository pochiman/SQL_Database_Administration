USE thriftshop;

SELECT * FROM inventory;

INSERT INTO inventory (inventory_id, item_name) VALUES (16, 'hot new product');

DELETE FROM inventory WHERE inventory_id = 16;

Error Code: 1364. Field 'number_in_stock' doesn't have a default value