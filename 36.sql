-- List the names of lead ships in the database (including the Outcomes table).

ELECT DISTINCT name
FROM (SELECT name
FROM ships
WHERE name = class
UNION
SELECT ship AS name
FROM Outcomes
 WHERE ship IN (SELECT class FROM Classes)
) AS lead_ships
