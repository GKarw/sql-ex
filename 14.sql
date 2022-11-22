SELECT Classes.class,
  Ships.name,
  Classes.country
FROM Classes
JOIN Ships ON Classes.class = Ships.class
WHERE Classes.numGuns >=10
