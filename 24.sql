-- List the models of any type having the highest price of all products present in the database. 
WITH all_products AS (SELECT model, price FROM PC
UNION
SELECT model, price FROM Laptop
UNION
SELECT model, price FROM Printer)

SELECT model 
FROM all_products
WHERE price = (SELECT MAX(price) FROM all_products)
