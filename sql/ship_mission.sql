/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer How many ships are there?*/


SELECT COUNT(*) FROM ship

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What is the number of ships?*/


SELECT COUNT(*) FROM ship

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to List the name of ships in ascending order of tonnage.*/


SELECT Name 
FROM ship 
ORDER BY Tonnage ASC

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer what are the names of the ships ordered by ascending tonnage?*/


SELECT Name 
FROM ship 
ORDER BY Tonnage ASC

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the type and nationality of ships?*/


SELECT Type, Nationality FROM ship

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the types and nationalities of every ship?*/


SELECT s.Type, s.Nationality
FROM ship s

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to List the name of ships whose nationality is not "United States".*/


SELECT Name 
FROM ship 
WHERE Nationality != 'United States'

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the names of the ships that are not from the United States?*/


SELECT Name 
FROM ship 
WHERE Nationality != 'United States'

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to Show the name of ships whose nationality is either United States or United Kingdom.*/


SELECT Name 
FROM ship 
WHERE Nationality IN ('United States', 'United Kingdom')

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the names of the ships  that are from either the US or the UK?*/


SELECT Name 
FROM ship 
WHERE Nationality IN ('US', 'UK')

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What is the name of the ship with the largest tonnage?*/


SELECT Name 
FROM ship 
ORDER BY Tonnage DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What is the ship with the largest amount of tonnage called?*/


SELECT Name 
FROM ship 
ORDER BY Tonnage DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to Show different types of ships and the number of ships of each type.*/


SELECT Type, COUNT(*) AS 'Number of Ships'
FROM ship
GROUP BY Type

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer For each type, how many ships are there?*/


SELECT Type, COUNT(*) AS 'Number of Ships'
FROM ship
GROUP BY Type

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to Please show the most common type of ships.*/


SELECT Type, COUNT(*) AS Count
FROM ship
GROUP BY Type
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What is the most common type of ships?*/


SELECT Type, COUNT(*) AS Num_Ships
FROM ship
GROUP BY Type
ORDER BY Num_Ships DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to List the nations that have more than two ships.*/


SELECT Nationality 
FROM ship 
GROUP BY Nationality 
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the nations that have more than two ships?*/


SELECT Nationality 
FROM ship 
GROUP BY Nationality 
HAVING COUNT(Ship_ID) > 2

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to Show different types of ships and the average tonnage of ships of each type.*/


SELECT Type, AVG(Tonnage)
FROM ship
GROUP BY Type

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer For each type, what is the average tonnage?*/


SELECT Type, AVG(Tonnage)
FROM ship
GROUP BY Type

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to Show codes and fates of missions, and names of ships involved.*/


SELECT mission.Code, mission.Fate, ship.Name 
FROM mission 
INNER JOIN ship 
ON mission.Ship_ID = ship.Ship_ID

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the mission codes, fates, and names of the ships involved?*/


SELECT mission.Code, mission.Fate, ship.Name 
FROM mission 
INNER JOIN ship 
ON mission.Ship_ID = ship.Ship_ID

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to Show names of ships involved in a mission launched after 1928.*/


SELECT Name 
FROM ship 
INNER JOIN mission 
ON ship.Ship_ID = mission.Ship_ID 
WHERE Launched_Year > 1928

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the names of ships that were involved in a mission launched after 1928?*/


SELECT s.Name 
FROM ship s 
INNER JOIN mission m 
ON s.Ship_ID = m.Ship_ID 
WHERE m.Launched_Year > 1928

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to Show the distinct fate of missions that involve ships with nationality "United States"*/


SELECT DISTINCT Fate 
FROM mission 
INNER JOIN ship 
ON mission.Ship_ID = ship.Ship_ID 
WHERE ship.Nationality = 'United States'

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the different fates of the mission that involved ships from the United States?*/


SELECT DISTINCT Fate 
FROM mission m 
INNER JOIN ship s 
ON m.Ship_ID = s.Ship_ID 
WHERE s.Nationality = 'United States'

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to List the name of ships that are not involved in any mission*/


SELECT Name 
FROM ship 
WHERE Ship_ID NOT IN (SELECT Ship_ID FROM mission)

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the names of the ships that are not involved in any missions?*/


SELECT Name 
FROM ship 
WHERE Ship_ID NOT IN (SELECT Ship_ID FROM mission)

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to Show the types of ships that have both ships with tonnage larger than 6000 and ships with tonnage smaller than 4000.*/


SELECT Type 
FROM ship 
WHERE Tonnage > 6000 
AND Tonnage < 4000

/*Here are Mysql tables, with their properties:

mission(Mission_ID, Ship_ID, Code, Launched_Year, Location, Speed_knots, Fate)
ship(Ship_ID, Name, Type, Nationality, Tonnage)

Create a SQL request to answer What are the types of the ships that have both shiips with tonnage more than 6000 and those with tonnage less than 4000?*/


SELECT Type 
FROM ship 
WHERE Tonnage > 6000 AND Tonnage < 4000

