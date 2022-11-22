-- Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher. Result set: maker 
SELECT DISTINCT maker 
FROM Product
JOIN PC ON PC.model = Product.model
WHERE PC.speed >= 750 
INTERSECT 
SELECT DISTINCT maker 
FROM Product
JOIN Laptop ON Laptop.model = Product.model
WHERE Laptop.speed >= 750
