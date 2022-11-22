-- Find the makers producing at least three distinct models of PCs. Result set: maker, number of PC models.
SELECT maker, COUNT(DISTINCT model) AS num_of_PC_mod
FROM Product
WHERE Product.type = 'PC'
GROUP BY maker
HAVING COUNT(DISTINCT model)> 2
