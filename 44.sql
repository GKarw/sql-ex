-- Find all ship names beginning with the letter R.

SELECT DISTINCT name
FROM (SELECT ship AS name
FROM Outcomes
UNION
SELECT name
FROM Ships) AS B
WHERE name LIKE 'R%'
