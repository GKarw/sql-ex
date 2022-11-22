-- Find out the average speed of the PCs produced by maker A
SELECT AVG(speed)
FROM PC
JOIN Product ON PC.model = Product.model
WHERE maker = 'A'
