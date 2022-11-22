-- Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.
SELECT DISTINCT Product.maker
FROM Product
JOIN PC ON Product.model = PC.model
WHERE PC.speed >= 450
