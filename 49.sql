-- Find the names of the ships having a gun caliber of 16 inches (including ships in the Outcomes table). 
SELECT DISTINCT name
FROM Ships
JOIN Classes ON Ships.class = Classes.class
WHERE bore = 16
UNION
SELECT DISTINCT ship as name
FROM Outcomes
JOIN Classes ON Outcomes.ship = Classes.class
WHERE bore = 16
