/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to answer How many churches opened before 1850 are there?*/


SELECT COUNT(*) 
FROM church 
WHERE Open_Date < 1850

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the name, open date, and organizer for all churches.*/


SELECT Name, Open_Date, Organized_by FROM church

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to List all church names in descending order of opening date.*/


SELECT Name 
FROM church 
ORDER BY Open_Date DESC

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the opening year in whcih at least two churches opened.*/


SELECT Open_Date
FROM church
GROUP BY Open_Date
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the organizer and name for churches that opened between 1830 and 1840.*/


SELECT Name, Organized_by 
FROM church 
WHERE Open_Date BETWEEN 1830 AND 1840

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show all opening years and the number of churches that opened in that year.*/


SELECT Open_Date, COUNT(Church_ID) AS Number_of_Churches
FROM church
GROUP BY Open_Date

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the name and opening year for three churches that opened most recently.*/


SELECT Name, Open_Date
FROM church
ORDER BY Open_Date DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to answer How many female people are older than 30 in our record?*/


SELECT COUNT(*) 
FROM people 
WHERE Is_Male = 0 AND Age > 30

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the country where people older than 30 and younger than 25 are from.*/


SELECT Country 
FROM people 
WHERE Age > 30 OR Age < 25

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the minimum, maximum, and average age for all people.*/


SELECT MIN(Age) AS Min_Age, MAX(Age) AS Max_Age, AVG(Age) AS Avg_Age
FROM people

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the name and country for all people whose age is smaller than the average.*/


SELECT Name, Country 
FROM people 
WHERE Age < (SELECT AVG(Age) FROM people)

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the pair of male and female names in all weddings after year 2014*/


SELECT p1.Name AS Male_Name, p2.Name AS Female_Name
FROM people p1
INNER JOIN wedding w ON p1.People_ID = w.Male_ID
INNER JOIN people p2 ON w.Female_ID = p2.People_ID
WHERE w.Year > 2014

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the name and age for all male people who don't have a wedding.*/


SELECT Name, Age 
FROM people 
WHERE Is_Male = 1 
AND People_ID NOT IN (SELECT Male_ID FROM wedding) 
AND People_ID NOT IN (SELECT Female_ID FROM wedding)

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show all church names except for those that had a wedding in year 2015.*/


SELECT Name 
FROM church 
WHERE Church_ID NOT IN (SELECT Church_ID 
                        FROM wedding 
                        WHERE Year = 2015)

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show all church names that have hosted least two weddings.*/


SELECT c.Name 
FROM church c 
INNER JOIN wedding w ON c.Church_ID = w.Church_ID 
GROUP BY c.Name 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the names for all females from Canada having a wedding in year 2016.*/


SELECT p1.Name 
FROM people p1 
INNER JOIN wedding w ON p1.People_ID = w.Female_ID 
INNER JOIN church c ON w.Church_ID = c.Church_ID 
WHERE p1.Country = 'Canada' 
AND w.Year = 2016 
AND p1.Is_Male = 0

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to answer How many weddings are there in year 2016?*/


SELECT COUNT(*) 
FROM wedding 
WHERE Year = 2016

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show the church names for the weddings of all people older than 30.*/


SELECT c.Name 
FROM church c 
INNER JOIN wedding w ON c.Church_ID = w.Church_ID 
INNER JOIN people p ON (p.People_ID = w.Male_ID OR p.People_ID = w.Female_ID) 
WHERE p.Age > 30

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to Show all countries and the number of people from each country.*/


SELECT Country, COUNT(People_ID) AS Number_of_People
FROM people
GROUP BY Country

/*Here are Mysql tables, with their properties:

people(People_ID, Name, Country, Is_Male, Age)
church(Church_ID, Name, Organized_by, Open_Date, Continuation_of)
wedding(Church_ID, Male_ID, Female_ID, Year)

Create a SQL request to answer How many churches have a wedding in year 2016?*/


SELECT COUNT(*) 
FROM church c 
INNER JOIN wedding w 
ON c.Church_ID = w.Church_ID 
WHERE w.Year = 2016

