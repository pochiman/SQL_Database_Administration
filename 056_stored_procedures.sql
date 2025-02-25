USE thriftshop;

SELECT * FROM inventory;



-- changing the delimiter
DELIMITER //
-- creating the procedure
CREATE PROCEDURE sp_selectAllInventory()
BEGIN
	SELECT * FROM inventory;
END //
-- changing the delimiter back to the default
-- DELIMITER;




-- calling the procedure that we have created
CALL sp_selectAllInventory();

-- if we later want to DROP the procedure, we can use this...
DROP PROCEDURE sp_selectAllInventory;