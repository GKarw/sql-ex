-- Using Product table, find out the number of makers who produce only one model. 

WITH qty_maker AS(SELECT COUNT(DISTINCT model) AS qty, 
maker
FROM Product 
GROUP BY maker)

SELECT COUNT(qty)
FROM qty_maker
WHERE qty = 1
