-- Get the laptop models that have a speed smaller than the speed of any PC. Result set: type, model, speed. 
SELECT DISTINCT p.type, l.model, l.speed
FROM Product p, Laptop l
WHERE l.speed < (SELECT MIN (speed) FROM PC) AND p.type = 'laptop'
