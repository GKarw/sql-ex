-- For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed. 
SELECT DISTINCT	[Product].[maker],
				[Laptop].[speed]
FROM Laptop
JOIN Product ON [Laptop].[model] = [Product].[model]
WHERE ([Laptop].[hd] >= 10)
