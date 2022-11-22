--  For each maker having models in the Laptop table, find out the average screen size of the laptops he produces. Result set: maker, average screen size.
SELECT DISTINCT Product.maker, AVG(Laptop.screen)
FROM Laptop
JOIN Product ON Laptop.model= Product.model
GROUP BY maker
