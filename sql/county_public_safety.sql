/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer How many counties are there?*/


SELECT COUNT(*) FROM county_public_safety

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Count the number of countries.*/


SELECT COUNT(*) FROM county_public_safety

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to List the names of counties in descending order of population.*/


SELECT Name 
FROM county_public_safety 
ORDER BY Population DESC

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the names of the counties of public safety, ordered by population descending?*/


SELECT Name 
FROM county_public_safety 
ORDER BY Population DESC

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to List the distinct police forces of counties whose location is not on east side.*/


SELECT DISTINCT Police_force 
FROM county_public_safety 
WHERE Location NOT LIKE '%East%'

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the different police forces of counties that are not located in the East?*/


SELECT Police_force 
FROM county_public_safety 
WHERE Location NOT LIKE '%East%'

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the minimum and maximum crime rate of counties?*/


SELECT MIN(Crime_rate) AS 'Minimum Crime Rate', MAX(Crime_rate) AS 'Maximum Crime Rate' 
FROM county_public_safety

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Return the minimum and maximum crime rates across all counties.*/


SELECT MIN(Crime_rate) AS Min_Crime_Rate, MAX(Crime_rate) AS Max_Crime_Rate
FROM county_public_safety

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show the crime rates of counties in ascending order of number of police officers.*/


SELECT Name, Police_officers, Crime_rate 
FROM county_public_safety 
ORDER BY Police_officers ASC

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the crime rates of counties sorted by number of offices ascending?*/


SELECT Name, Police_officers, Crime_rate 
FROM county_public_safety 
ORDER BY Police_officers ASC

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the names of cities in ascending alphabetical order?*/


SELECT Name 
FROM city 
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Return the names of cities, ordered alphabetically.*/


SELECT Name FROM city ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the percentage of hispanics in cities with the black percentage higher than 10?*/


SELECT City.Name, (Hispanic/ (White + Black + Amerindian + Asian + Multiracial + Hispanic)) * 100 AS 'Percentage of Hispanics'
FROM City
INNER JOIN county_public_safety
ON City.County_ID = county_public_safety.County_ID
WHERE Black > 10

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Return the hispanic percentage for cities in which the black percentage is greater than 10.*/


SELECT City.Name, (City.Hispanic / (City.White + City.Black + City.Amerindian + City.Asian + City.Multiracial + City.Hispanic)) * 100 AS 'Hispanic Percentage'
FROM City
INNER JOIN County_Public_Safety ON City.County_ID = County_Public_Safety.County_ID
WHERE City.Black > 10

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to List the name of the county with the largest population.*/


SELECT Name 
FROM county_public_safety 
ORDER BY Population DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What is the name of the county with the greatest population?*/


SELECT Name 
FROM county_public_safety 
ORDER BY Population DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to List the names of the city with the top 5 white percentages.*/


SELECT Name 
FROM city 
ORDER BY White DESC 
LIMIT 5

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the names of the five cities with the greatest proportion of white people?*/


SELECT c.Name 
FROM city c 
INNER JOIN county_public_safety cs ON c.County_ID = cs.County_ID 
ORDER BY c.White/cs.Population DESC 
LIMIT 5

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show names of cities and names of counties they are in.*/


SELECT c.Name AS City_Name, cp.Name AS County_Name
FROM city c
INNER JOIN county_public_safety cp ON c.County_ID = cp.County_ID

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the names of cities, as well as the names of the counties they correspond to?*/


SELECT c.Name AS City_Name, cp.Name AS County_Name
FROM city c
INNER JOIN county_public_safety cp ON c.County_ID = cp.County_ID

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show white percentages of cities and the crime rates of counties they are in.*/


SELECT c.Name AS City, c.White, cp.Crime_rate 
FROM city c 
INNER JOIN county_public_safety cp ON c.County_ID = cp.County_ID 
WHERE c.White > 0

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the white percentages of cities, and the corresponding crime rates of the counties they correspond to?*/


SELECT c.Name AS City_Name, c.White, cp.Crime_rate 
FROM city c 
INNER JOIN county_public_safety cp ON c.County_ID = cp.County_ID 
WHERE c.White IS NOT NULL

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show the name of cities in the county that has the largest number of police officers.*/


SELECT c.Name 
FROM county_public_safety cps 
INNER JOIN city c ON cps.County_ID = c.County_ID 
WHERE cps.Police_officers = (SELECT MAX(Police_officers) FROM county_public_safety) 
ORDER BY c.Name

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the names of cities that are in the county with the most police officers?*/


SELECT c.Name 
FROM county_public_safety cps 
INNER JOIN city c ON cps.County_ID = c.County_ID 
WHERE cps.Police_officers = (SELECT MAX(Police_officers) FROM county_public_safety) 
ORDER BY c.Name

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show the number of cities in counties that have a population more than 20000.*/


SELECT COUNT(c.City_ID) 
FROM county_public_safety cps 
INNER JOIN city c ON cps.County_ID = c.County_ID 
WHERE cps.Population > 20000

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer How many cities are in counties that have populations of over 20000?*/


SELECT COUNT(*) 
FROM city 
INNER JOIN county_public_safety 
ON city.County_ID = county_public_safety.County_ID 
WHERE county_public_safety.Population > 20000

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show the crime rate of counties with a city having white percentage more than 90.*/


SELECT cps.Name, cps.Crime_rate 
FROM county_public_safety cps 
INNER JOIN city c ON cps.County_ID = c.County_ID 
WHERE c.White > 90

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the crime rates of counties that contain cities that have white percentages of over 90?*/


SELECT cps.Crime_rate 
FROM county_public_safety cps 
INNER JOIN city c ON cps.County_ID = c.County_ID 
WHERE c.White > 90

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Please show the police forces and the number of counties with each police force.*/


SELECT Police_force, COUNT(*) AS 'Number of Counties'
FROM county_public_safety
GROUP BY Police_force

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer How many counties correspond to each police force?*/


SELECT Police_force, COUNT(*) AS 'Number of Counties'
FROM county_public_safety
GROUP BY Police_force

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What is the location shared by most counties?*/


SELECT Location, COUNT(*) AS Count 
FROM county_public_safety 
GROUP BY Location 
ORDER BY Count DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer Which location has the most corresponding counties?*/


SELECT Location, COUNT(*) AS 'Number of Counties'
FROM county_public_safety
GROUP BY Location
ORDER BY 'Number of Counties' DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to List the names of counties that do not have any cities.*/


SELECT Name 
FROM county_public_safety 
WHERE County_ID NOT IN (SELECT County_ID FROM city)

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the names of counties that do not contain any cities?*/


SELECT Name 
FROM county_public_safety 
WHERE County_ID NOT IN (SELECT County_ID FROM city)

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show the police force shared by counties with location on the east and west.*/


SELECT County_ID, Name, Police_force, Location 
FROM county_public_safety 
WHERE Location IN ('East', 'West')

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer Which police forces operate in both counties that are located in the East and in the West?*/


SELECT Police_force 
FROM county_public_safety 
WHERE Location IN ('East', 'West') 
GROUP BY Police_force 
HAVING COUNT(DISTINCT County_ID) = 2

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show the names of cities in counties that have a crime rate less than 100.*/


SELECT c.Name 
FROM county_public_safety cps 
INNER JOIN city c 
ON cps.County_ID = c.County_ID 
WHERE cps.Crime_rate < 100

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the names of cities that are in counties that have a crime rate below 100?*/


SELECT c.Name 
FROM city c 
INNER JOIN county_public_safety cs 
ON c.County_ID = cs.County_ID 
WHERE cs.Crime_rate < 100

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to Show the case burden of counties in descending order of population.*/


SELECT Name, Population, Case_burden
FROM county_public_safety
ORDER BY Population DESC

/*Here are Mysql tables, with their properties:

county_public_safety(County_ID, Name, Population, Police_officers, Residents_per_officer, Case_burden, Crime_rate, Police_force, Location)
city(City_ID, County_ID, Name, White, Black, Amerindian, Asian, Multiracial, Hispanic)

Create a SQL request to answer What are the case burdens of counties, ordered descending by population?*/


SELECT Name, Population, Case_burden
FROM county_public_safety
ORDER BY Population DESC

