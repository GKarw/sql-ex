WITH 

future_ships AS (SELECT ship, date 
FROM Outcomes 
JOIN Battles ON Outcomes.battle = Battles.name),

damaged_ships AS (SELECT ship, date
FROM Outcomes
JOIN Battles ON Outcomes.battle = Battles.name
WHERE result = 'damaged')

SELECT DISTINCT future_ships.ship
FROM damaged_ships, future_ships
WHERE (damaged_ships.date < future_ships.date) 
AND future_ships.ship = damaged_ships.ship
