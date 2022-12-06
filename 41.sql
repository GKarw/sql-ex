-- For each maker who has models at least in one of the tables PC, Laptop, or Printer, determine the maximum price for his products.
-- Output: maker; if there are NULL values among the prices for the products of a given maker, display NULL for this maker, otherwise, the maximum price.

SELECT maker, 
CASE 
WHEN SUM(CASE 
WHEN price IS NULL THEN 1
ELSE 0
END) > 0 THEN NULL
ELSE MAX(price)
END AS price
FROM (
SELECT maker, price
FROM Product
JOIN PC on PC.model = Product.model
UNION ALL
SELECT maker, price
FROM Product
JOIN Laptop on Laptop.model = Product.model
UNION ALL
SELECT maker, price
FROM Product
JOIN Printer on Printer.model = Product.model) AS Prod
GROUP BY maker
