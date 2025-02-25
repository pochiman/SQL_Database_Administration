USE candystore;

SELECT * FROM employees;

INSERT INTO employees VALUES
(7, 'Charles', 'Munger', '2020-03-15', 'Clerk', 5.0),
(8, 'William', 'Gates', '2020-03-15', 'Clerk', 5.0);

UPDATE employees
SET avg_customer_rating = 4.8
WHERE employee_id = 1;

UPDATE employees
SET avg_customer_rating = 4.6
WHERE employee_id = 2;

UPDATE employees
SET avg_customer_rating = 4.75
WHERE employee_id = 3;

UPDATE employees
SET avg_customer_rating = 4.9
WHERE employee_id = 4;

UPDATE employees
SET avg_customer_rating = 4.75
WHERE employee_id = 5;

UPDATE employees
SET avg_customer_rating = 4.2
WHERE employee_id = 6;