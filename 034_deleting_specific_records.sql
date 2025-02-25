USE thriftshop;

SELECT * FROM inventory;

SELECT @@autocommit;

SET autocommit = 1; -- means ON
SET autocommit = 0; -- means OFF
SET autocommit = ON; -- same as 1
SET autocommit = OFF; -- same as 0
-- 1, 0
-- ON, OFF

DELETE FROM inventory
WHERE inventory_id = 7;

ROLLBACK;