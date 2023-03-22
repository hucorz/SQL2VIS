/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer How many perpetrators are there?*/


SELECT COUNT(Perpetrator_ID) FROM perpetrator

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to List the date of perpetrators in descending order of the number of people killed.*/


SELECT Date, Killed 
FROM perpetrator 
ORDER BY Killed DESC

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to List the number of people injured by perpetrators in ascending order.*/


SELECT SUM(Injured) AS 'Number of People Injured'
FROM perpetrator
GROUP BY Perpetrator_ID
ORDER BY SUM(Injured) ASC

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer What is the average number of people injured by all perpetrators?*/


SELECT AVG(Injured)
FROM perpetrator

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to What is the location of the perpetrator with the largest kills.*/


SELECT Location 
FROM perpetrator 
WHERE Killed = (SELECT MAX(Killed) FROM perpetrator) 
LIMIT 1

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer What are the names of people in ascending order of height?*/


SELECT Name 
FROM people 
ORDER BY Height ASC

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer What are the names of perpetrators?*/


SELECT Name 
FROM people 
INNER JOIN perpetrator 
ON people.People_ID = perpetrator.People_ID

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer What are the names of perpetrators whose country is not "China"?*/


SELECT p.Name 
FROM perpetrator pr 
INNER JOIN people p 
ON pr.People_ID = p.People_ID 
WHERE pr.Country != 'China'

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to What is the name of the perpetrator with the biggest weight.*/


SELECT Name 
FROM perpetrator 
INNER JOIN people ON perpetrator.People_ID = people.People_ID 
ORDER BY Weight DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to What is the total kills of the perpetrators with height more than 1.84.*/


SELECT SUM(Killed) 
FROM perpetrator p 
INNER JOIN people ppl 
ON p.People_ID = ppl.People_ID 
WHERE ppl.Height > 1.84

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer What are the names of perpetrators in country "China" or "Japan"?*/


SELECT p.Name 
FROM perpetrator pr 
INNER JOIN people p 
ON pr.People_ID = p.People_ID 
WHERE pr.Country IN ('China', 'Japan')

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer What are the heights of perpetrators in descending order of the number of people they injured?*/


SELECT p.Height 
FROM perpetrator AS perp 
INNER JOIN people AS p 
ON perp.People_ID = p.People_ID 
ORDER BY perp.Injured DESC

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to What are the countries of perpetrators? Show each country and the corresponding number of perpetrators there.*/


SELECT Country, COUNT(Perpetrator_ID) AS Number_of_Perpetrators
FROM perpetrator
GROUP BY Country

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer What is the country that has the most perpetrators?*/


SELECT Country, COUNT(*) AS Perpetrator_Count
FROM perpetrator
GROUP BY Country
ORDER BY Perpetrator_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer What are the countries that have at least two perpetrators?*/


SELECT Country, COUNT(*) AS Perpetrator_Count
FROM perpetrator
GROUP BY Country
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to List the names of perpetrators in descending order of the year.*/


SELECT Name 
FROM perpetrator 
INNER JOIN people ON perpetrator.People_ID = people.People_ID 
ORDER BY Year DESC

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to List the names of people that are not perpetrators.*/


SELECT Name 
FROM people 
WHERE People_ID NOT IN (SELECT People_ID FROM perpetrator)

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to Show the countries that have both perpetrators with injures more than 50 and perpetrators with injures smaller than 20.*/


SELECT Country 
FROM perpetrator 
WHERE Injured > 50 
AND Country IN (SELECT Country 
                FROM perpetrator 
                WHERE Injured < 20) 
GROUP BY Country

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer How many distinct locations of perpetrators are there?*/


SELECT COUNT(DISTINCT Location) FROM perpetrator

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to Show the date of the tallest perpetrator.*/


SELECT Date 
FROM perpetrator 
INNER JOIN people ON perpetrator.People_ID = people.People_ID 
ORDER BY Height DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

perpetrator(Perpetrator_ID, People_ID, Date, Year, Location, Country, Killed, Injured)
people(People_ID, Name, Height, Weight, Hom)

Create a SQL request to answer In which year did the most recent crime happen?*/


SELECT MAX(Year) 
FROM perpetrator

