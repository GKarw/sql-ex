-- Find the battles in which Kongo-class ships from the Ships table were engaged. 
SELECT DISTINCT battle
FROM Outcomes
LEFT JOIN Ships ON Outcomes.ship = Ships.name
WHERE Ships.class = 'Kongo'
