CREATE SCHEMA toms_marketing_stuff DEFAULT CHARSET utf8mb4;

USE toms_marketing_stuff;

CREATE TABLE publishers (
	publisher_id INT,
    publisher_name VARCHAR(65),
    PRIMARY KEY (publisher_id)
);

SELECT * FROM publishers;

SELECT * FROM publisher_spend;