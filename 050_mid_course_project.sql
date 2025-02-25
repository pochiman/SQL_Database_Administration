USE mavenmoviesmini;


/*
QUESTION 1
Take a look at the mavenmoviesmini schema.
What do you notice about it? How many tables are there?
What does the data represent? What do you think the current schema?
*/

SELECT * FROM inventory_non_normalized;



/*
QUESTION 2
If you wanted to break out the data from the inventory_non_normalized table into multiple tables, 
how many tables do you think would be ideal? What would you name those tables?
*/

-- inventory (inventory_id, film_id, store_id)
-- film (film_id, title, description, release_year, rental_rate, rating)
-- store (store_id, store_manager_first_name, store_manager_last_name, store_address, store_city, store_district)



SELECT *
FROM mavenmoviesmini.inventory_non_normalized;


/*
QUESTION 3
Based on your answer from question #2, create a new schema with the tables you think will best serve this data set.
You can use SQL code or Workbench's UI tools (whichever you feel more comfortable with).
*/

CREATE SCHEMA mavenmoviesmini_normalized;

USE mavenmoviesmini_normalized;






/*
QUESTION 4
Next, use the data from the original schema to populate the tables in your newly optimized schema 
(TIP: Revisit the video on database normalization again if you get stuck)
*/

INSERT INTO inventory (inventory_id, film_id, store_id)
SELECT DISTINCT inventory_id, film_id, store_id
FROM mavenmoviesmini.inventory_non_normalized;

SELECT * FROM inventory;

INSERT INTO film (film_id, title, description, release_year, rental_rate, rating)
SELECT DISTINCT film_id, title, description, release_year, rental_rate, rating
FROM mavenmoviesmini.inventory_non_normalized;

SELECT * FROM film;

INSERT INTO store (store_id, store_manager_first_name, store_manager_last_name, store_address, store_city, store_district)
SELECT DISTINCT store_id, store_manager_first_name, store_manager_last_name, store_address, store_city, store_district
FROM mavenmoviesmini.inventory_non_normalized;


SELECT * FROM store;

/*
QUESTION 5
Make sure your new tables have the proper primary keys defined and that applicable foreign keys are added.
Add any constraints you think should apply to the data as well (unique, non-NULL, etc.)
*/




/*
QUESTION 6
Finally, after doing all of this technical work, write a brief summary of what you have done, 
in a way that your non-technical client can understand.
Communicate what you did, and why your new schema design is better.
*/