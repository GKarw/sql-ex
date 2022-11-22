-- For the ships in the Ships table that have at least 10 guns, get the class, name, and country

SELECT Classes.class,
  Ships.name,
  Classes.country
FROM Classes
JOIN Ships ON Classes.class = Ships.class
WHERE Classes.numGuns >=10
