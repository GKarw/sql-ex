-- Get the makers who produce only one product type and more than one model. Output: maker, type. 

SELECT DISTINCT Product.maker, type
FROM Product
JOIN (SELECT maker
FROM Product
GROUP BY maker
HAVING COUNT(DISTINCT type) = 1
AND COUNT(DISTINCT model)>1) AS uniqe_prod
ON uniqe_prod.maker = Product.maker
