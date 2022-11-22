-- Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
-- Result set: maker.
SELECT maker
FROM Product
WHERE Product.type = 'PC'

INTERSECT

SELECT maker
FROM Product
WHERE Product.type = 'Printer'

INTERSECT 

SELECT maker
FROM Product
JOIN PC ON PC.model = Product.model
WHERE  ram   = (SELECT MIN(ram) FROM pc) AND speed =(SELECT MAX(speed) FROM pc WHERE ram =(SELECT MIN(ram) FROM pc))
