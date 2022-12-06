-- Find all ship names consisting of three or more words (e.g., King George V).
-- Consider the words in ship names to be separated by single spaces, and the ship names to have no leading or trailing spaces. 

SELECT DISTINCT name
FROM (SELECT ship AS name
FROM Outcomes
UNION
SELECT name
FROM Ships) AS B
WHERE name LIKE '% % %'
