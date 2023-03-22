/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer How many farms are there?*/


SELECT COUNT(*) FROM farm

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Count the number of farms.*/


SELECT COUNT(*) FROM farm

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to List the total number of horses on farms in ascending order.*/


SELECT Total_Horses 
FROM farm 
ORDER BY Total_Horses ASC

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What is the total horses record for each farm, sorted ascending?*/


SELECT Farm_ID, SUM(Total_Horses) AS Total_Horses_Record
FROM farm
GROUP BY Farm_ID
ORDER BY Total_Horses_Record ASC

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the hosts of competitions whose theme is not "Aliens"?*/


SELECT Hosts 
FROM farm_competition 
WHERE Theme != 'Aliens'

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer Return the hosts of competitions for which the theme is not Aliens?*/


SELECT Hosts 
FROM farm_competition 
WHERE Theme != 'Aliens'

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the themes of farm competitions sorted by year in ascending order?*/


SELECT Theme, Year 
FROM farm_competition 
ORDER BY Year ASC

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Return the themes of farm competitions, sorted by year ascending.*/


SELECT Theme, Year 
FROM farm_competition 
ORDER BY Year ASC

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What is the average number of working horses of farms with more than 5000 total number of horses?*/


SELECT AVG(Working_Horses)
FROM farm
WHERE Total_Horses > 5000

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Give the average number of working horses on farms with more than 5000 total horses.*/


SELECT AVG(Working_Horses)
FROM farm
WHERE Total_Horses > 5000

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to What are the maximum and minimum number of cows across all farms.*/


SELECT MAX(Total_Cattle) AS Max_Cows, MIN(Total_Cattle) AS Min_Cows
FROM farm

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Return the maximum and minimum number of cows across all farms.*/


SELECT MAX(Total_Cattle) AS Max_Cows, MIN(Total_Cattle) AS Min_Cows
FROM farm

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer How many different statuses do cities have?*/


SELECT COUNT(DISTINCT Status) FROM city

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Count the number of different statuses.*/


SELECT COUNT(DISTINCT Status) FROM city

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to List official names of cities in descending order of population.*/


SELECT Official_Name 
FROM city 
ORDER BY Population DESC

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the official names of cities, ordered descending by population?*/


SELECT Official_Name 
FROM city 
ORDER BY Population DESC

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to List the official name and status of the city with the largest population.*/


SELECT Official_Name, Status 
FROM city 
ORDER BY Population DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What is the official name and status of the city with the most residents?*/


SELECT Official_Name, Status 
FROM city 
ORDER BY Population DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Show the years and the official names of the host cities of competitions.*/


SELECT Year, Official_Name 
FROM farm_competition 
INNER JOIN city 
ON farm_competition.Host_city_ID = city.City_ID

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Give the years and official names of the cities of each competition.*/


SELECT c.Year, ci.Official_Name
FROM competition_record cr
INNER JOIN farm_competition c ON cr.Competition_ID = c.Competition_ID
INNER JOIN city ci ON c.Host_city_ID = ci.City_ID

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Show the official names of the cities that have hosted more than one competition.*/


SELECT Official_Name 
FROM city 
INNER JOIN farm_competition 
ON city.City_ID = farm_competition.Host_city_ID 
GROUP BY Official_Name 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the official names of cities that have hosted more than one competition?*/


SELECT Official_Name 
FROM city 
INNER JOIN farm_competition 
ON city.City_ID = farm_competition.Host_city_ID 
GROUP BY Official_Name 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Show the status of the city that has hosted the greatest number of competitions.*/


SELECT Official_Name, Status 
FROM city 
INNER JOIN farm_competition 
ON city.City_ID = farm_competition.Host_city_ID 
GROUP BY Official_Name 
ORDER BY COUNT(Competition_ID) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What is the status of the city that has hosted the most competitions?*/


SELECT c.Status 
FROM city c 
INNER JOIN farm_competition fc ON c.City_ID = fc.Host_city_ID 
GROUP BY c.Status 
ORDER BY COUNT(fc.Competition_ID) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Please show the themes of competitions with host cities having populations larger than 1000.*/


SELECT Theme 
FROM farm_competition 
INNER JOIN city 
ON farm_competition.Host_city_ID = city.City_ID 
WHERE Population > 1000

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the themes of competitions that have corresponding host cities with more than 1000 residents?*/


SELECT Theme 
FROM farm_competition 
INNER JOIN city 
ON farm_competition.Host_city_ID = city.City_ID 
WHERE Population > 1000

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Please show the different statuses of cities and the average population of cities with each status.*/


SELECT Status, AVG(Population)
FROM city
GROUP BY Status

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the statuses and average populations of each city?*/


SELECT Official_Name, Status, AVG(Population)
FROM city
GROUP BY Official_Name, Status

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Please show the different statuses, ordered by the number of cities that have each.*/


SELECT Status, COUNT(*) AS Number_of_Cities
FROM city
GROUP BY Status
ORDER BY Number_of_Cities DESC

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Return the different statuses of cities, ascending by frequency.*/


SELECT Status, COUNT(*) AS Frequency 
FROM city 
GROUP BY Status 
ORDER BY Frequency ASC

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to List the most common type of Status across cities.*/


SELECT Status, COUNT(*) AS Count
FROM city
GROUP BY Status
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What is the most common status across all cities?*/


SELECT Status, COUNT(*) AS Count
FROM city
GROUP BY Status
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to List the official names of cities that have not held any competition.*/


SELECT Official_Name 
FROM city 
WHERE City_ID NOT IN (SELECT Host_city_ID 
                      FROM farm_competition)

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the official names of cities that have not hosted a farm competition?*/


SELECT Official_Name 
FROM city 
WHERE City_ID NOT IN (SELECT Host_city_ID 
                      FROM farm_competition)

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Show the status shared by cities with population bigger than 1500 and smaller than 500.*/


SELECT Status 
FROM city 
WHERE Population > 1500 AND Population < 500

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer Which statuses correspond to both cities that have a population over 1500 and cities that have a population lower than 500?*/


SELECT Status 
FROM city 
WHERE Population > 1500 OR Population < 500

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Find the official names of cities with population bigger than 1500 or smaller than 500.*/


SELECT Official_Name 
FROM city 
WHERE Population > 1500 OR Population < 500

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the official names of cities that have population over 1500 or less than 500?*/


SELECT Official_Name 
FROM city 
WHERE Population > 1500 OR Population < 500

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to Show the census ranking of cities whose status are not "Village".*/


SELECT Official_Name, Census_Ranking 
FROM city 
WHERE Status != 'Village'

/*Here are Mysql tables, with their properties:

city(City_ID, Official_Name, Status, Area_km_2, Population, Census_Ranking)
farm(Farm_ID, Year, Total_Horses, Working_Horses, Total_Cattle, Oxen, Bulls, Cows, Pigs, Sheep_and_Goats)
farm_competition(Competition_ID, Year, Theme, Host_city_ID, Hosts)
competition_record(Competition_ID, Farm_ID, Rank)

Create a SQL request to answer What are the census rankings of cities that do not have the status "Village"?*/


SELECT c.Census_Ranking 
FROM city c 
WHERE c.Status != 'Village'

