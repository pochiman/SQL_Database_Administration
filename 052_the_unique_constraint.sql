USE thriftshop;

SELECT * FROM inventory;

INSERT INTO inventory VALUES
(16, 'fur fox skin', 1);

Error Code: 1062. Duplicate entry 'fur fox skin' for key 'inventory.item_name_UNIQUE'