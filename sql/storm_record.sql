/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer How many regions do we have?*/


SELECT COUNT(*) FROM region

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Count the number of regions.*/


SELECT COUNT(Region_id) FROM region

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show all region code and region name sorted by the codes.*/


SELECT Region_code, Region_name
FROM region
ORDER BY Region_code ASC

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the codes and names for all regions, sorted by codes?*/


SELECT Region_code, Region_name
FROM region
ORDER BY Region_code

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to List all region names in alphabetical order.*/


SELECT Region_name 
FROM region 
ORDER BY Region_name ASC

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of the regions in alphabetical order?*/


SELECT Region_name 
FROM region 
ORDER BY Region_name ASC

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show names for all regions except for Denmark.*/


SELECT Region_name 
FROM region 
WHERE Region_name != 'Denmark'

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Return the names of all regions other than Denmark.*/


SELECT Region_name 
FROM region 
WHERE Region_name != 'Denmark'

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer How many storms had death records?*/


SELECT COUNT(*) 
FROM storm 
WHERE Number_Deaths > 0

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Count the number of storms in which at least 1 person died.*/


SELECT COUNT(*) 
FROM storm 
WHERE Number_Deaths > 0

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to List name, dates active, and number of deaths for all storms with at least 1 death.*/


SELECT Name, Dates_active, Number_Deaths 
FROM storm 
WHERE Number_Deaths > 0

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names, dates active, and number of deaths for storms that had 1 or more death?*/


SELECT Name, Dates_active, Number_Deaths 
FROM storm 
WHERE Number_Deaths > 0

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show the average and maximum damage for all storms with max speed higher than 1000.*/


SELECT AVG(Damage_millions_USD) AS Average_Damage, MAX(Damage_millions_USD) AS Maximum_Damage
FROM storm
WHERE Max_speed > 1000

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What is the average and maximum damage in millions for storms that had a max speed over 1000?*/


SELECT AVG(Damage_millions_USD), MAX(Damage_millions_USD)
FROM storm
WHERE Max_speed > 1000

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What is the total number of deaths and damage for all storms with a max speed greater than the average?*/


SELECT SUM(Number_Deaths) AS Total_Deaths, SUM(Damage_millions_USD) AS Total_Damage
FROM storm
WHERE Max_speed > (SELECT AVG(Max_speed) FROM storm)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Return the total number of deaths and total damange in millions for storms that had a max speed greater than the average.*/


SELECT SUM(Number_Deaths) AS Total_Deaths, SUM(Damage_millions_USD) AS Total_Damage_Millions
FROM storm
WHERE Max_speed > (SELECT AVG(Max_speed) FROM storm)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to List name and damage for all storms in a descending order of max speed.*/


SELECT Name, Damage_millions_USD 
FROM storm 
ORDER BY Max_speed DESC

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names and damage in millions for storms, ordered by their max speeds descending?*/


SELECT Name, Damage_millions_USD 
FROM storm 
ORDER BY Max_speed DESC

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer How many regions are affected?*/


SELECT COUNT(DISTINCT Region_id) 
FROM affected_region

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Count the number of different affected regions.*/


SELECT COUNT(DISTINCT Region_id) 
FROM affected_region

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show the name for regions not affected.*/


SELECT Region_name 
FROM region 
WHERE Region_id NOT IN (SELECT Region_id FROM affected_region)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of regions that were not affected?*/


SELECT Region_name
FROM region
WHERE Region_id NOT IN (SELECT Region_id FROM affected_region)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show the name for regions and the number of storms for each region.*/


SELECT Region_name, COUNT(Storm_ID) AS Number_of_storms
FROM region
JOIN affected_region ON region.Region_id = affected_region.Region_id
GROUP BY Region_name

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer How many storms occured in each region?*/


SELECT region.Region_name, COUNT(*) AS 'Number of Storms'
FROM storm
INNER JOIN affected_region ON storm.Storm_ID = affected_region.Storm_ID
INNER JOIN region ON affected_region.Region_id = region.Region_id
GROUP BY region.Region_name

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to List the name for storms and the number of affected regions for each storm.*/


SELECT s.Name, COUNT(ar.Region_id) AS Number_of_Affected_Regions
FROM storm s
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID
GROUP BY s.Name

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer How many regions were affected by each storm?*/


SELECT s.Name, COUNT(ar.Region_id) AS 'Number of Regions Affected'
FROM storm s
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID
GROUP BY s.Name

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What is the storm name and max speed which affected the greatest number of regions?*/


SELECT Name, Max_speed
FROM storm s
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID
INNER JOIN region r ON ar.Region_id = r.Region_id
GROUP BY Name, Max_speed
ORDER BY COUNT(r.Region_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Return the name and max speed of the storm that affected the most regions.*/


SELECT Name, Max_speed 
FROM storm s 
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID 
INNER JOIN region r ON ar.Region_id = r.Region_id 
GROUP BY s.Storm_ID 
ORDER BY COUNT(r.Region_id) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show the name of storms which don't have affected region in record.*/


SELECT Name 
FROM storm 
WHERE Storm_ID NOT IN (SELECT Storm_ID FROM affected_region)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of storms that did not affect any regions?*/


SELECT Name 
FROM storm 
WHERE Storm_ID NOT IN (SELECT Storm_ID FROM affected_region)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show storm name with at least two regions and 10 cities affected.*/


SELECT s.Name 
FROM storm s 
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID 
INNER JOIN region r ON ar.Region_id = r.Region_id 
GROUP BY s.Name 
HAVING COUNT(DISTINCT r.Region_name) >= 2 
AND SUM(ar.Number_city_affected) >= 10

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of storms that both affected two or more regions and affected a total of 10 or more cities?*/


SELECT s.Name 
FROM storm s 
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID 
INNER JOIN region r ON ar.Region_id = r.Region_id 
GROUP BY s.Name 
HAVING COUNT(DISTINCT r.Region_id) >= 2 
AND SUM(ar.Number_city_affected) >= 10

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show all storm names except for those with at least two affected regions.*/


SELECT Name 
FROM storm 
WHERE Storm_ID NOT IN (SELECT Storm_ID 
                       FROM affected_region 
                       GROUP BY Storm_ID 
                       HAVING COUNT(*) >= 2)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of storms that did not affect two or more regions?*/


SELECT Name 
FROM storm 
WHERE Storm_ID NOT IN (SELECT Storm_ID 
                       FROM affected_region 
                       GROUP BY Storm_ID 
                       HAVING COUNT(*) >= 2)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the region names affected by the storm with a number of deaths of least 10?*/


SELECT Region_name 
FROM region 
INNER JOIN affected_region ON region.Region_id = affected_region.Region_id 
INNER JOIN storm ON affected_region.Storm_ID = storm.Storm_ID 
WHERE storm.Number_Deaths >= 10

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Return the names of the regions affected by storms that had a death count of at least 10.*/


SELECT Region_name 
FROM region 
INNER JOIN affected_region ON region.Region_id = affected_region.Region_id 
INNER JOIN storm ON affected_region.Storm_ID = storm.Storm_ID 
WHERE storm.Number_Deaths >= 10

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show all storm names affecting region "Denmark".*/


SELECT s.Name 
FROM storm s 
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID 
INNER JOIN region r ON ar.Region_id = r.Region_id 
WHERE r.Region_name = 'Denmark'

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of the storms that affected Denmark?*/


SELECT s.Name 
FROM storm s 
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID 
INNER JOIN region r ON ar.Region_id = r.Region_id 
WHERE r.Region_name = 'Denmark'

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Show the region name with at least two storms.*/


SELECT Region_name 
FROM region 
INNER JOIN affected_region ON region.Region_id = affected_region.Region_id 
GROUP BY Region_name 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of regions with two or more storms?*/


SELECT Region_name 
FROM region 
INNER JOIN affected_region 
ON region.Region_id = affected_region.Region_id 
GROUP BY Region_name 
HAVING COUNT(Storm_ID) >= 2

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Find the names of the regions which were affected by the storm that killed the greatest number of people.*/


SELECT Region_name 
FROM region 
INNER JOIN affected_region ON region.Region_id = affected_region.Region_id 
INNER JOIN storm ON affected_region.Storm_ID = storm.Storm_ID 
WHERE storm.Number_Deaths = (SELECT MAX(Number_Deaths) FROM storm)

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of regions that were affected by the storm in which the most people died?*/


SELECT Region_name 
FROM region 
INNER JOIN affected_region ON region.Region_id = affected_region.Region_id 
INNER JOIN storm ON affected_region.Storm_ID = storm.Storm_ID 
WHERE storm.Number_Deaths = (SELECT MAX(Number_Deaths) FROM storm) 
GROUP BY Region_name

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to Find the name of the storm that affected both Afghanistan and Albania regions.*/


SELECT s.Name 
FROM storm s 
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID 
INNER JOIN region r ON ar.Region_id = r.Region_id 
WHERE r.Region_name IN ('Afghanistan', 'Albania')

/*Here are Mysql tables, with their properties:

storm(Storm_ID, Name, Dates_active, Max_speed, Damage_millions_USD, Number_Deaths)
region(Region_id, Region_code, Region_name)
affected_region(Region_id, Storm_ID, Number_city_affected)

Create a SQL request to answer What are the names of the storms that affected both the regions of Afghanistan and Albania?*/


SELECT s.Name 
FROM storm s 
INNER JOIN affected_region ar ON s.Storm_ID = ar.Storm_ID 
INNER JOIN region r ON ar.Region_id = r.Region_id 
WHERE r.Region_name IN ('Afghanistan', 'Albania')

