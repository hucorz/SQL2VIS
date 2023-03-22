/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show all the locations where no cinema has capacity over 800.*/


SELECT Location 
FROM cinema 
WHERE Capacity <= 800

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show all the locations where some cinemas were opened in both year 2010 and year 2011.*/


SELECT Location 
FROM cinema 
WHERE Openning_year IN (2010, 2011)

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer How many cinema do we have?*/


SELECT COUNT(*) FROM cinema

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Count the number of cinemas.*/


SELECT COUNT(*) FROM cinema

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show name, opening year, and capacity for each cinema.*/


SELECT Name, Opening_year, Capacity 
FROM cinema

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show the cinema name and location for cinemas with capacity above average.*/


SELECT Name, Location 
FROM cinema 
WHERE Capacity > (SELECT AVG(Capacity) FROM cinema)

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer What are all the locations with a cinema?*/


SELECT Location 
FROM cinema 
GROUP BY Location

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Find the distinct locations that has a cinema.*/


SELECT DISTINCT Location 
FROM cinema

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show all the cinema names and opening years in descending order of opening year.*/


SELECT Name, Openning_year FROM cinema ORDER BY Openning_year DESC

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer What are the name and location of the cinema with the largest capacity?*/


SELECT Name, Location 
FROM cinema 
ORDER BY Capacity DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show the average, minimum, and maximum capacity for all the cinemas opened in year 2011 or later.*/


SELECT AVG(Capacity) AS Average_Capacity, MIN(Capacity) AS Minimum_Capacity, MAX(Capacity) AS Maximum_Capacity
FROM cinema
WHERE Openning_year >= 2011

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show each location and the number of cinemas there.*/


SELECT Location, COUNT(Cinema_ID) AS Number_of_Cinemas
FROM cinema
GROUP BY Location

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer What is the location with the most cinemas opened in year 2010 or later?*/


SELECT Location, COUNT(*) AS Num_Cinemas
FROM cinema
WHERE Openning_year >= 2010
GROUP BY Location
ORDER BY Num_Cinemas DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show all the locations with at least two cinemas with capacity above 300.*/


SELECT Location 
FROM cinema 
WHERE Capacity > 300 
GROUP BY Location 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer Which locations have 2 or more cinemas with capacity over 300?*/


SELECT Location 
FROM cinema 
WHERE Capacity > 300 
GROUP BY Location 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show the title and director for all films.*/


SELECT Title, Directed_by FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer What are the title and director of each film?*/


SELECT Title, Directed_by FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show all directors.*/


SELECT DISTINCT Directed_by FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer Who are all the directors?*/


SELECT DISTINCT Directed_by FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to List all directors along with the number of films directed by each director.*/


SELECT Directed_by, COUNT(*) AS Number_of_Films_Directed
FROM film
GROUP BY Directed_by

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer What is total number of show times per dat for each cinema?*/


SELECT c.Name, SUM(s.Show_times_per_day) AS Total_Show_Times_Per_Day
FROM cinema c
INNER JOIN schedule s ON c.Cinema_ID = s.Cinema_ID
GROUP BY c.Name

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer What are the title and maximum price of each film?*/


SELECT Title, MAX(Price)
FROM film
JOIN schedule ON film.Film_ID = schedule.Film_ID
GROUP BY Title

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Give me the title and highest price for each film.*/


SELECT Title, MAX(Price)
FROM film
INNER JOIN schedule
ON film.Film_ID = schedule.Film_ID
GROUP BY Title

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show cinema name, film title, date, and price for each record in schedule.*/


SELECT c.Name, f.Title, s.Date, s.Price 
FROM cinema c 
INNER JOIN schedule s ON c.Cinema_ID = s.Cinema_ID 
INNER JOIN film f ON s.Film_ID = f.Film_ID

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer What are the title and director of the films without any schedule?*/


SELECT f.Title, f.Directed_by
FROM film f
LEFT JOIN schedule s ON f.Film_ID = s.Film_ID
WHERE s.Film_ID IS NULL

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Show director with the largest number of show times in total.*/


SELECT Directed_by, SUM(Show_times_per_day) AS Total_Show_Times
FROM film
INNER JOIN schedule ON film.Film_ID = schedule.Film_ID
GROUP BY Directed_by
ORDER BY Total_Show_Times DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Find the locations that have more than one movie theater with capacity above 300.*/


SELECT Location 
FROM cinema 
WHERE Capacity > 300 
GROUP BY Location 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer In which locations are there more than one movie theater with capacity above 300?*/


SELECT Location 
FROM cinema 
WHERE Capacity > 300 
GROUP BY Location 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to answer How many films have the word 'Dummy' in their titles?*/


SELECT COUNT(*) 
FROM film 
WHERE Title LIKE '%Dummy%'

/*Here are Mysql tables, with their properties:

film(Film_ID, Rank_in_series, Number_in_season, Title, Directed_by, Original_air_date, Production_code)
cinema(Cinema_ID, Name, Openning_year, Capacity, Location)
schedule(Cinema_ID, Film_ID, Date, Show_times_per_day, Price)

Create a SQL request to Count the number of films whose title contains the word 'Dummy'.*/


SELECT COUNT(*) 
FROM film 
WHERE Title LIKE '%Dummy%'

