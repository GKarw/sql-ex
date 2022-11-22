-- Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
-- Result set: maker, average HDD capacity.

SELECT maker, AVG(hd)
FROM Product
JOIN PC ON PC.model = Product.model
WHERE maker IN(
SELECT maker
FROM Product
WHERE Product.type = 'Printer')
GROUP BY maker
