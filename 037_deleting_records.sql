USE candystore;

SELECT * FROM employees;

SELECT * FROM customer_reviews;

SELECT @@autocommit;

DELETE FROM employees
WHERE employee_id = 4;

COMMIT;

ROLLBACK;

SELECT * FROM customer_reviews;

DELETE FROM customer_reviews
WHERE customer_review_id BETWEEN 1 and 33;

TRUNCATE customer_reviews; -- cannot be rolled back