-- For each ship that participated in the Battle of Guadalcanal, get its name, displacement, and the number of guns. 

SELECT DISTINCT ship, displacement, numGuns
FROM Classes
LEFT JOIN Ships ON Classes.class = Ships.class
RIGHT JOIN Outcomes ON Classes.class = Outcomes.ship OR Ships.name = Outcomes.ship
WHERE battle = 'Guadalcanal'
