-- Get the ships sunk in the North Atlantic battle. Result set: ship. 

SELECT ship
FROM Outcomes
JOIN Battles on Battles.name = Outcomes.battle
WHERE result = 'sunk' AND Battles.name = 'North Atlantic' 
