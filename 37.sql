-- Find classes for which only one ship exists in the database (including the Outcomes table).

SELECT class
FROM
(SELECT  class
FROM Ships
UNION ALL
SELECT DISTINCT class
FROM Classes, Outcomes
WHERE Classes.class = Outcomes.ship
AND ship NOT IN (SELECT name FROM Ships)
) AS all_ships
GROUP BY  class
HAVING COUNT(class) = 1
