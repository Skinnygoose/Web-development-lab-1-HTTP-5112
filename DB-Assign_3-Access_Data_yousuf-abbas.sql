--YOUR NAME HERE	ASSIGNMENT 3 REFINING DATA
--Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
--A
SELECT first_name , last_name FROM employees WHERE role = "Manager" OR role = "Assistant";
--B
SELECT * FROM `stock_items` WHERE category = "piscine" AND inventory <= 24;

-- 2
--A
SELECT * FROM `stock_items` WHERE item LIKE "%cage";
--B
SELECT  first_name  FROM `employees` WHERE first_name LIKE "f%"

-- 3
--A
SELECT * FROM `stock_items` WHERE  id BETWEEN 1010 AND 101
--B
SELECT * FROM `stock_items` WHERE  price BETWEEN 10 AND 20;

-- 4
--A
SELECT  first_name , last_name , phone , role FROM `employees` ORDER BY last_name ASC
--B

SELECT  id , item , price , inventory  FROM `stock_items` WHERE inventory > 20 AND category = "Murine"
ORDER BY price DESC