USE sloppyjoes;



DROP TRIGGER IF EXISTS updateOrdersServed;

CREATE TRIGGER updateOrdersServed
AFTER INSERT ON customer_orders
FOR EACH ROW
	UPDATE staff
		SET orders_served = orders_served + 1
        WHERE staff.staff_id = NEW.staff_id;


-- use this to see the # of orders_served before updates
SELECT * FROM staff;

-- then, create your trigger
-- [[see above]]

-- then, insert these 4 records into customer_orders
INSERT INTO customer_orders VALUES
(21, 1, 10.98),
(22, 2, 5.99),
(23, 2, 7.99),
(24, 2, 12.97);

-- finally, query the staff table again
-- if you did this right, orders_served has increased
SELECT * FROM staff;