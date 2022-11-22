-- Find out the average price of PCs and laptops produced by maker A. Result set: one overall average price for all items. 
WITH l_and_pc AS (
SELECT price
FROM Laptop 
JOIN Product ON Product.model = Laptop.model 
WHERE maker = 'A'

UNION ALL

SELECT price
FROM PC
JOIN Product ON Product.model = PC.model
WHERE maker = 'A')

SELECT AVG(price)
FROM l_and_pc
