/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer How many artists do we have?*/


SELECT COUNT(*) FROM artist

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Count the number of artists.*/


SELECT COUNT(Artist_ID) FROM artist

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show all artist name, age, and country ordered by the yeared they joined.*/


SELECT Name, Age, Country 
FROM artist 
ORDER BY Year_Join ASC

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are the names, ages, and countries of artists, sorted by the year they joined?*/


SELECT Name, Age, Country FROM artist ORDER BY Year_Join

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are all distinct country for artists?*/


SELECT DISTINCT Country FROM artist

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Return the different countries for artists.*/


SELECT DISTINCT Country FROM artist

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show all artist names and the year joined who are not from United States.*/


SELECT Name, Year_Join 
FROM artist 
WHERE Country != 'United States'

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are the names and year of joining for artists that do not have the country "United States"?*/


SELECT Name, Year_Join 
FROM artist 
WHERE Country != 'United States'

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer How many artists are above age 46 and joined after 1990?*/


SELECT COUNT(*) 
FROM artist 
WHERE Age > 46 AND Year_Join > 1990

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Count the number of artists who are older than 46 and joined after 1990.*/


SELECT COUNT(*) 
FROM artist 
WHERE Age > 46 AND Year_Join > 1990

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to What is the average and minimum age of all artists from United States.*/


SELECT AVG(Age) AS Average_Age, MIN(Age) AS Minimum_Age
FROM artist
WHERE Country = 'United States'

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Return the average and minimum ages across artists from the United States.*/


SELECT AVG(Age) AS Average_Age, MIN(Age) AS Minimum_Age
FROM artist
WHERE Country = 'United States'

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What is the name of the artist who joined latest?*/


SELECT Name 
FROM artist 
ORDER BY Year_Join DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Return the name of the artist who has the latest join year.*/


SELECT Name 
FROM artist 
ORDER BY Year_Join DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer How many exhibition are there in year 2005 or after?*/


SELECT COUNT(*) 
FROM exhibition 
WHERE Year >= 2005

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Count the number of exhibitions that happened in or after 2005.*/


SELECT COUNT(*) 
FROM exhibition 
WHERE Year >= 2005

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show theme and year for all exhibitions with ticket prices lower than 15.*/


SELECT Theme, Year 
FROM exhibition 
WHERE Ticket_Price < 15

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are the theme and year for all exhibitions that have a ticket price under 15?*/


SELECT Theme, Year 
FROM exhibition 
WHERE Ticket_Price < 15

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show all artist names and the number of exhibitions for each artist.*/


SELECT a.Name, COUNT(e.Exhibition_ID) AS 'Number of Exhibitions'
FROM artist a
INNER JOIN exhibition e
ON a.Artist_ID = e.Artist_ID
GROUP BY a.Name

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer How many exhibitions has each artist had?*/


SELECT a.Name, COUNT(e.Exhibition_ID) AS 'Number of Exhibitions'
FROM artist a
INNER JOIN exhibition e
ON a.Artist_ID = e.Artist_ID
GROUP BY a.Name

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What is the name and country for the artist with most number of exhibitions?*/


SELECT Name, Country 
FROM artist 
WHERE Artist_ID = (SELECT Artist_ID 
                   FROM exhibition 
                   GROUP BY Artist_ID 
                   ORDER BY COUNT(*) DESC 
                   LIMIT 1)

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Return the name and country corresponding to the artist who has had the most exhibitions.*/


SELECT Name, Country 
FROM artist 
INNER JOIN exhibition 
ON artist.Artist_ID = exhibition.Artist_ID 
GROUP BY artist.Artist_ID 
ORDER BY COUNT(exhibition.Exhibition_ID) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show names for artists without any exhibition.*/


SELECT Name 
FROM artist 
WHERE Artist_ID NOT IN (SELECT Artist_ID FROM exhibition)

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are the names of artists that have not had any exhibitions?*/


SELECT Name 
FROM artist 
WHERE Artist_ID NOT IN (SELECT Artist_ID FROM exhibition)

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What is the theme and artist name for the exhibition with a ticket price higher than the average?*/


SELECT e.Theme, a.Name 
FROM exhibition e 
INNER JOIN artist a 
ON e.Artist_ID = a.Artist_ID 
WHERE e.Ticket_Price > (SELECT AVG(Ticket_Price) FROM exhibition)

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Return the names of artists and the themes of their exhibitions that had a ticket price higher than average.*/


SELECT a.Name, e.Theme 
FROM artist a 
INNER JOIN exhibition e 
ON a.Artist_ID = e.Artist_ID 
WHERE e.Ticket_Price > (SELECT AVG(Ticket_Price) FROM exhibition) 

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show the average, minimum, and maximum ticket prices for exhibitions for all years before 2009.*/


SELECT AVG(Ticket_Price) AS Average_Ticket_Price, MIN(Ticket_Price) AS Minimum_Ticket_Price, MAX(Ticket_Price) AS Maximum_Ticket_Price
FROM exhibition
WHERE Year < 2009

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are the average, minimum, and maximum ticket prices for exhibitions that happened prior to 2009?*/


SELECT AVG(Ticket_Price) AS Average_Ticket_Price, MIN(Ticket_Price) AS Minimum_Ticket_Price, MAX(Ticket_Price) AS Maximum_Ticket_Price
FROM exhibition
WHERE Year < 2009

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show theme and year for all exhibitions in an descending order of ticket price.*/


SELECT Theme, Year 
FROM exhibition 
ORDER BY Ticket_Price DESC

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are the themes and years for exhibitions, sorted by ticket price descending?*/


SELECT Theme, Year, Ticket_Price 
FROM exhibition 
ORDER BY Ticket_Price DESC

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What is the theme, date, and attendance for the exhibition in year 2004?*/


SELECT Theme, Date, Attendance 
FROM exhibition 
INNER JOIN exhibition_record 
ON exhibition.Exhibition_ID = exhibition_record.Exhibition_ID 
WHERE exhibition.Year = 2004

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Return the themes, dates, and attendance for exhibitions that happened in 2004.*/


SELECT e.Theme, er.Date, er.Attendance
FROM exhibition e
INNER JOIN exhibition_record er
ON e.Exhibition_ID = er.Exhibition_ID
WHERE e.Year = 2004

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show all artist names who didn't have an exhibition in 2004.*/


SELECT Name 
FROM artist 
WHERE Artist_ID NOT IN (SELECT Artist_ID 
                        FROM exhibition 
                        WHERE Year = 2004)

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are the names of artists who did not have an exhibition in 2004?*/


SELECT Name 
FROM artist 
WHERE Artist_ID NOT IN (SELECT Artist_ID 
                        FROM exhibition 
                        WHERE Year = 2004)

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show the theme for exhibitions with both records of an attendance below 100 and above 500.*/


SELECT Theme 
FROM exhibition 
INNER JOIN exhibition_record 
ON exhibition.Exhibition_ID = exhibition_record.Exhibition_ID 
WHERE Attendance < 100 OR Attendance > 500

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer Which themes have had corresponding exhibitions that have had attendance both below 100 and above 500?*/


SELECT Theme 
FROM exhibition 
INNER JOIN exhibition_record 
ON exhibition.Exhibition_ID = exhibition_record.Exhibition_ID 
WHERE Attendance < 100 OR Attendance > 500

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer How many exhibitions have a attendance more than 100 or have a ticket price below 10?*/


SELECT COUNT(*) 
FROM exhibition 
WHERE Attendance > 100 OR Ticket_Price < 10

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Count the number of exhibitions that have had an attendnance of over 100 or a ticket prices under 10.*/


SELECT COUNT(*) 
FROM exhibition 
WHERE Attendance > 100 OR Ticket_Price < 10

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to Show all artist names with an average exhibition attendance over 200.*/


SELECT Name 
FROM artist 
INNER JOIN exhibition 
ON artist.Artist_ID = exhibition.Artist_ID 
INNER JOIN exhibition_record 
ON exhibition.Exhibition_ID = exhibition_record.Exhibition_ID 
GROUP BY Name 
HAVING AVG(Attendance) > 200

/*Here are Mysql tables, with their properties:

artist(Artist_ID, Name, Country, Year_Join, Age)
exhibition(Exhibition_ID, Year, Theme, Artist_ID, Ticket_Price)
exhibition_record(Exhibition_ID, Date, Attendance)

Create a SQL request to answer What are the names of artist whose exhibitions draw over 200 attendees on average?*/


SELECT a.Name 
FROM artist a 
INNER JOIN exhibition e ON a.Artist_ID = e.Artist_ID 
INNER JOIN exhibition_record er ON e.Exhibition_ID = er.Exhibition_ID 
GROUP BY a.Name 
HAVING AVG(er.Attendance) > 200

