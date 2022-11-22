-- Find the makers producing PCs but not laptops. 
SELECT DISTINCT Product.maker
FROM Product
WHERE maker NOT IN (SELECT DISTINCT Product.maker
FROM Product
WHERE type = 'Laptop') AND (type = 'PC')
