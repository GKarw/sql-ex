-- Find the names of the ships with the largest number of guns among all ships having the same displacement (including ships in the Outcomes table). 

WITH all_ships AS (SELECT name, numGuns, displacement
FROM Ships
JOIN Classes ON Ships.class = Classes.class
UNION
SELECT ship AS name, numGuns, displacement
FROM Outcomes
JOIN Classes ON Outcomes.ship = Classes.class)

SELECT all_ships.name
FROM all_ships
JOIN (SELECT all_ships.displacement,
MAX(all_ships.numGuns) AS MaxNumGun
FROM all_ships
GROUP BY all_ships.displacement) AS grouped_ships 
ON all_ships.displacement = grouped_ships.displacement AND all_ships.numGuns = grouped_ships.MaxNumGun
