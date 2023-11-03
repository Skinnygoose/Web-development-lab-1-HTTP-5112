--YOUR NAME HERE	ASSIGNMENT 4 GROUPING RESULTS
--Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
--A
SELECT MIN(price) FROM `stock_items` 
--B
SELECT MAX(inventory) FROM `stock_items` 

-- 2
--A
SELECT COUNT(id), role
FROM `employees` 
GROUP BY role;
--B
SELECT role,COUNT(phone), COUNT(id)
FROM employees
GROUP BY role
-- 3
--A
SELECT category , COUNT(category)
FROM stock_items 
WHERE category <> "Piscine"
GROUP BY category
--B
SELECT SUM(inventory)AS In_stock, category AS animals 
FROM stock_items
GROUP BY category 
--C
SELECT MAX(price)AS Highest_price, category  
FROM stock_items
GROUP BY category 
ORDER BY MAX(price) DESC

--D
SELECT MAX(price)AS Highest_price, category  
FROM stock_items
GROUP BY category 
HAVING MAX(price) > 50
ORDER BY MAX(price) DESC