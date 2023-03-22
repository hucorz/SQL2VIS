/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer How many climbers are there?*/


SELECT COUNT(*) FROM climber

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Count the number of climbers.*/


SELECT COUNT(Climber_ID) FROM climber

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to List the names of climbers in descending order of points.*/


SELECT Name 
FROM climber 
ORDER BY Points DESC

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the names of the climbers, ordered by points descending?*/


SELECT Name 
FROM climber 
ORDER BY Points DESC

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to List the names of climbers whose country is not Switzerland.*/


SELECT Name 
FROM climber 
WHERE Country != 'Switzerland'

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the names of climbers who are not from the country of Switzerland?*/


SELECT Name 
FROM climber 
WHERE Country != 'Switzerland'

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What is the maximum point for climbers whose country is United Kingdom?*/


SELECT MAX(Points) 
FROM climber 
WHERE Country = 'United Kingdom'

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Return the maximum number of points for climbers from the United Kingdom.*/


SELECT MAX(Points) 
FROM climber 
WHERE Country = 'United Kingdom'

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer How many distinct countries are the climbers from?*/


SELECT COUNT(DISTINCT Country) 
FROM climber

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Count the number of different countries that climbers are from.*/


SELECT COUNT(DISTINCT Country) FROM climber

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the names of mountains in ascending alphabetical order?*/


SELECT Name FROM mountain ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Give the names of mountains in alphabetical order.*/


SELECT Name FROM mountain ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the countries of mountains with height bigger than 5000?*/


SELECT Country 
FROM mountain 
WHERE Height > 5000

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Return the countries of the mountains that have a height larger than 5000.*/


SELECT Country 
FROM mountain 
WHERE Height > 5000

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What is the name of the highest mountain?*/


SELECT Name 
FROM mountain 
ORDER BY Height DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Return the name of the mountain with the greatest height.*/


SELECT Name 
FROM mountain 
ORDER BY Height DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to List the distinct ranges of the mountains with the top 3 prominence.*/


SELECT DISTINCT Range, Prominence 
FROM mountain 
ORDER BY Prominence DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the different ranges of the 3 mountains with the highest prominence?*/


SELECT DISTINCT Range 
FROM mountain 
ORDER BY Prominence DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Show names of climbers and the names of mountains they climb.*/


SELECT c.Name AS Climber_Name, m.Name AS Mountain_Name
FROM climber c
INNER JOIN mountain m ON c.Mountain_ID = m.Mountain_ID

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the names of climbers and the corresponding names of mountains that they climb?*/


SELECT c.Name AS Climber_Name, m.Name AS Mountain_Name
FROM climber c
INNER JOIN mountain m ON c.Mountain_ID = m.Mountain_ID

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Show the names of climbers and the heights of mountains they climb.*/


SELECT c.Name AS Climber_Name, m.Height AS Mountain_Height
FROM climber c
INNER JOIN mountain m ON c.Mountain_ID = m.Mountain_ID

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the names of climbers and the corresponding heights of the mountains that they climb?*/


SELECT c.Name, m.Height
FROM climber c
INNER JOIN mountain m ON c.Mountain_ID = m.Mountain_ID

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Show the height of the mountain climbed by the climber with the maximum points.*/


SELECT m.Height 
FROM mountain m 
INNER JOIN climber c 
ON m.Mountain_ID = c.Mountain_ID 
WHERE c.Points = (SELECT MAX(Points) FROM climber) 

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What is the height of the mountain climbined by the climbing who had the most points?*/


SELECT m.Height 
FROM mountain m 
INNER JOIN climber c 
ON m.Mountain_ID = c.Mountain_ID 
WHERE c.Points = (SELECT MAX(Points) FROM climber) 

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Show the distinct names of mountains climbed by climbers from country "West Germany".*/


SELECT DISTINCT Name 
FROM mountain 
INNER JOIN climber 
ON mountain.Mountain_ID = climber.Mountain_ID 
WHERE climber.Country = 'West Germany'

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the different names of mountains ascended by climbers from the country of West Germany?*/


SELECT Name 
FROM mountain 
INNER JOIN climber 
ON mountain.Mountain_ID = climber.Mountain_ID 
WHERE climber.Country = 'West Germany'

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Show the times used by climbers to climb mountains in Country Uganda.*/


SELECT c.Time 
FROM climber c 
INNER JOIN mountain m ON c.Mountain_ID = m.Mountain_ID 
WHERE m.Country = 'Uganda'

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the times used by climbers who climbed mountains in the country of Uganda?*/


SELECT Time 
FROM climber 
WHERE Country = 'Uganda' 
AND Mountain_ID IN (SELECT Mountain_ID FROM mountain WHERE Country = 'Uganda')

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Please show the countries and the number of climbers from each country.*/


SELECT Country, COUNT(Climber_ID) AS Number_of_Climbers
FROM climber
GROUP BY Country

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer How many climbers are from each country?*/


SELECT Country, COUNT(Climber_ID) AS Number_of_Climbers
FROM climber
GROUP BY Country

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to List the countries that have more than one mountain.*/


SELECT Country 
FROM mountain 
GROUP BY Country 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer Which countries have more than one mountain?*/


SELECT Country 
FROM mountain 
GROUP BY Country 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to List the names of mountains that do not have any climber.*/


SELECT Name 
FROM mountain 
WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber)

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the names of countains that no climber has climbed?*/


SELECT Name 
FROM mountain 
WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber)

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Show the countries that have mountains with height more than 5600 stories and mountains with height less than 5200.*/


SELECT DISTINCT Country 
FROM mountain 
WHERE Height > 5600 OR Height < 5200

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the countries that have both mountains that are higher than 5600 and lower than 5200?*/


SELECT DISTINCT Country 
FROM mountain 
WHERE Height > 5600 OR Height < 5200

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Show the range that has the most number of mountains.*/


SELECT Range, COUNT(*) AS Num_Mountains
FROM mountain
GROUP BY Range
ORDER BY Num_Mountains DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer Which range contains the most mountains?*/


SELECT Range, COUNT(*) AS Num_Mountains
FROM mountain
GROUP BY Range
ORDER BY Num_Mountains DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to Show the names of mountains with height more than 5000 or prominence more than 1000.*/


SELECT Name 
FROM mountain 
WHERE Height > 5000 OR Prominence > 1000

/*Here are Mysql tables, with their properties:

mountain(Mountain_ID, Name, Height, Prominence, Range, Country)
climber(Climber_ID, Name, Country, Time, Points, Mountain_ID)

Create a SQL request to answer What are the names of mountains that have a height of over 5000 or a prominence of over 1000?*/


SELECT Name 
FROM mountain 
WHERE Height > 5000 OR Prominence > 1000

