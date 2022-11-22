-- Find the makers of the cheapest color printers. Result set: maker, price.
SELECT DISTINCT Product.maker, Printer.price
FROM Printer
JOIN Product ON Product.model = Printer.model
WHERE Printer.price = (SELECT MIN(price) FROM Printer WHERE color = 'y') AND Printer.color = 'y'
