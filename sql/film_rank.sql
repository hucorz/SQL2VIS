/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer How many film are there?*/


SELECT COUNT(*) FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Count the number of films.*/


SELECT COUNT(*) FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to List the distinct director of all films.*/


SELECT DISTINCT Director FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the different film Directors?*/


SELECT DISTINCT Director FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What is the average ticket sales gross in dollars of films?*/


SELECT AVG(Gross_in_dollar)
FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Return the average gross sales in dollars across all films.*/


SELECT AVG(Gross_in_dollar) FROM film

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the low and high estimates of film markets?*/


SELECT fm.Low_Estimate, fm.High_Estimate 
FROM film_market_estimation fm 
INNER JOIN film f ON f.Film_ID = fm.Film_ID 
INNER JOIN market m ON m.Market_ID = fm.Market_ID

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Return the low and high estimates for all film markets.*/


SELECT fme.Low_Estimate, fme.High_Estimate
FROM film_market_estimation fme
JOIN film f ON fme.Film_ID = f.Film_ID
JOIN market m ON fme.Market_ID = m.Market_ID

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the types of film market estimations in year 1995?*/


SELECT DISTINCT Type 
FROM film_market_estimation 
WHERE Year = 1995

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Return the types of film market estimations in 1995.*/


SELECT DISTINCT Type 
FROM film_market_estimation 
WHERE Year = 1995

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to What are the maximum and minimum number of cities in all markets.*/


SELECT MAX(Number_cities) AS Max_Cities, MIN(Number_cities) AS Min_Cities
FROM market

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Return the maximum and minimum number of cities across all markets.*/


SELECT MAX(Number_cities) AS Max_Cities, MIN(Number_cities) AS Min_Cities FROM market

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer How many markets have number of cities smaller than 300?*/


SELECT COUNT(*) 
FROM market 
WHERE Number_cities < 300

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Count the number of markets that have a number of cities lower than 300.*/


SELECT COUNT(*) 
FROM market 
WHERE Number_cities < 300

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to List all countries of markets in ascending alphabetical order.*/


SELECT Country FROM market ORDER BY Country ASC

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the countries for each market, ordered alphabetically?*/


SELECT Country 
FROM market 
ORDER BY Country ASC

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to List all countries of markets in descending order of number of cities.*/


SELECT Country, Number_cities 
FROM market 
ORDER BY Number_cities DESC

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the countries for each market ordered by decreasing number of cities?*/


SELECT Country, Number_cities 
FROM market 
ORDER BY Number_cities DESC

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Please show the titles of films and the types of market estimations.*/


SELECT Title, Type
FROM film
INNER JOIN film_market_estimation
ON film.Film_ID = film_market_estimation.Film_ID

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the titles of films and corresponding types of market estimations?*/


SELECT f.Title, fme.Type
FROM film f
INNER JOIN film_market_estimation fme
ON f.Film_ID = fme.Film_ID

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Show the distinct director of films with market estimation in the year of 1995.*/


SELECT DISTINCT Director 
FROM film 
INNER JOIN film_market_estimation 
ON film.Film_ID = film_market_estimation.Film_ID 
WHERE Year = 1995

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer Who are the different directors of films which had market estimation in 1995?*/


SELECT DISTINCT Director 
FROM film 
INNER JOIN film_market_estimation 
ON film.Film_ID = film_market_estimation.Film_ID 
WHERE film_market_estimation.Year = 1995

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What is the average number of cities of markets with low film market estimate bigger than 10000?*/


SELECT AVG(Number_cities)
FROM market
INNER JOIN film_market_estimation
ON market.Market_ID = film_market_estimation.Market_ID
WHERE Low_Estimate > 10000

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer Give the average number of cities within markets that had a low market estimation larger than 10000?*/


SELECT AVG(Number_cities)
FROM market m
INNER JOIN film_market_estimation fme
ON m.Market_ID = fme.Market_ID
WHERE fme.Low_Estimate > 10000

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Please list the countries and years of film market estimations.*/


SELECT Country, Year
FROM market
INNER JOIN film_market_estimation
ON market.Market_ID = film_market_estimation.Market_ID

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the countries of markets and their corresponding years of market estimation?*/


SELECT m.Country, fme.Year
FROM market m
INNER JOIN film_market_estimation fme
ON m.Market_ID = fme.Market_ID

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Please list the years of film market estimations when the market is in country "Japan" in descending order.*/


SELECT Year 
FROM film_market_estimation 
INNER JOIN market ON film_market_estimation.Market_ID = market.Market_ID 
WHERE Country = 'Japan' 
ORDER BY Year DESC

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the years of film market estimation for the market of Japan, ordered by year descending?*/


SELECT Year 
FROM film_market_estimation 
INNER JOIN market ON film_market_estimation.Market_ID = market.Market_ID 
WHERE market.Country = 'Japan' 
ORDER BY Year DESC

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to List the studios of each film and the number of films produced by that studio.*/


SELECT Studio, COUNT(*) AS Number_of_Films
FROM film
GROUP BY Studio

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer How films are produced by each studio?*/


SELECT Studio, COUNT(Title) AS 'Number of Films'
FROM film
GROUP BY Studio

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to List the name of film studio that have the most number of films.*/


SELECT Studio, COUNT(*) AS Total_Films
FROM film
GROUP BY Studio
ORDER BY Total_Films DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What is the name of teh studio that created the most films?*/


SELECT Studio, COUNT(*) AS Total_Films
FROM film
GROUP BY Studio
ORDER BY Total_Films DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to List the names of studios that have at least two films.*/


SELECT Studio
FROM film
GROUP BY Studio
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the names of studios that have made two or more films?*/


SELECT Studio
FROM film
GROUP BY Studio
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to List the title of films that do not have any market estimation.*/


SELECT Title 
FROM film 
WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_estimation)

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the titles of films that do not have a film market estimation?*/


SELECT Title 
FROM film 
WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_estimation)

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Show the studios that have produced films with director "Nicholas Meyer" and "Walter Hill".*/


SELECT DISTINCT Studio 
FROM film 
WHERE Director IN ('Nicholas Meyer', 'Walter Hill')

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the names of studios that have produced films with both Nicholas Meyer and Walter Hill?*/


SELECT DISTINCT f.Studio 
FROM film f 
INNER JOIN film_market_estimation fme ON f.Film_ID = fme.Film_ID 
WHERE f.Director IN ('Nicholas Meyer', 'Walter Hill') 
GROUP BY f.Studio 
HAVING COUNT(DISTINCT f.Director) = 2

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Find the titles and studios of the films that are produced by some film studios that contained the word "Universal".*/


SELECT Title, Studio 
FROM film 
WHERE Studio LIKE '%Universal%'

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the titles and studios of films that have been produced by a studio whose name contains "Universal"?*/


SELECT Title, Studio
FROM film
WHERE Studio LIKE '%Universal%'

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Show the studios that have not produced films with director "Walter Hill".*/


SELECT Studio
FROM film
WHERE Director != 'Walter Hill'
GROUP BY Studio

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer Which studios have never worked with the director Walter Hill?*/


SELECT DISTINCT Studio
FROM film
WHERE Director != 'Walter Hill'
AND Film_ID NOT IN (SELECT Film_ID FROM film WHERE Director = 'Walter Hill')

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to List the studios which average gross is above 4500000.*/


SELECT Studio, AVG(Gross_in_dollar) AS Average_Gross
FROM film
GROUP BY Studio
HAVING AVG(Gross_in_dollar) > 4500000

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer Which studios have an average gross of over 4500000?*/


SELECT Studio, AVG(Gross_in_dollar) AS Average_Gross
FROM film
GROUP BY Studio
HAVING AVG(Gross_in_dollar) > 4500000

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to What is the title of the film that has the highest high market estimation.*/


SELECT Title 
FROM film 
INNER JOIN film_market_estimation 
ON film.Film_ID = film_market_estimation.Film_ID 
WHERE film_market_estimation.High_Estimate = (SELECT MAX(High_Estimate) FROM film_market_estimation) 
LIMIT 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer Return the title of the film with the highest high estimate?*/


SELECT Title 
FROM film 
INNER JOIN film_market_estimation 
ON film.Film_ID = film_market_estimation.Film_ID 
ORDER BY High_Estimate DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to answer What are the titles and directors of the films were never presented in China?*/


SELECT Title, Director
FROM film
WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_estimation
                      WHERE Market_ID IN (SELECT Market_ID FROM market WHERE Country = 'China')) 

/*Here are Mysql tables, with their properties:

film(Film_ID, Title, Studio, Director, Gross_in_dollar)
market(Market_ID, Country, Number_cities)
film_market_estimation(Estimation_ID, Low_Estimate, High_Estimate, Film_ID, Type, Market_ID, Year)

Create a SQL request to Return the titles and directors of films that were never in the market of China.*/


SELECT Title, Director
FROM film
WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_estimation
                      WHERE Market_ID IN (SELECT Market_ID FROM market WHERE Country = 'China')) 

