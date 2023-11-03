--YOUR NAME HERE	ASSIGNMENT 5 JOINING TABLES
--Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--1 
-- A
SELECT sales.date, stock_items.item
FROM sales
INNER JOIN stock_items ON sales.item=stock_items.id
WHERE stock_items.id = "1014";
-- B
SELECT sales.employee, sales.item,stock_items.category,stock_items.item
FROM sales
INNER JOIN stock_items ON sales.item=stock_items.id
WHERE stock_items.category="Feline";



--2
-- A
SELECT sales.date, sales.employee,employees.first_name,employees.last_name,sales.item
FROM sales
INNER JOIN employees ON sales.employee=employees.id
WHERE sales.employee="111";
-- B
SELECT sales.date,
CONCAT (employees.first_name,' ' ,employees.last_name) AS "Employee name" ,

employees.sin,sales.date,
employees.role,
sales.item
FROM sales
RIGHT JOIN employees ON sales.employee=employees.id
WHERE employees.sin LIKE "258%" OR employees.sin LIKE "456%"OR employees.sin LIKE "753%";

--3
-- A
SELECT sales.date,
employees.first_name,
sales.item
FROM sales
INNER JOIN employees ON sales.employee=employees.id
WHERE sales.date BETWEEN "2021-06-12" AND "2021-06-18";
-- B
SELECT employees.first_name,employees.last_name,COUNT(sales.item)

FROM sales
INNER JOIN employees ON sales.employee=employees.id
GROUP BY employees.first_name,employees.last_name
ORDER BY COUNT(sales.item) DESC
--4
-- A
SELECT employees.first_name AS Sales_person,
stock_items.item,
stock_items.price,
stock_items.category,
s.date,
s.employee  


FROM sales AS s 
INNER JOIN employees ON s.employee=employees.id
INNER JOIN stock_items ON s.item = stock_items.id 
WHERE s.employee = "114"
-- B
