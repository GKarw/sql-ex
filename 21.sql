-- Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price. 
SELECT maker, MAX(price)
FROM Product
JOIN PC ON Product.model = PC.model
GROUP BY maker
