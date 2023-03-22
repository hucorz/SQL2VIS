/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer How many companies are there?*/


SELECT COUNT(*) FROM Companies

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Count the number of companies.*/


SELECT COUNT(*) FROM Companies

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to List the names of companies in descending order of market value.*/


SELECT Companies.name 
FROM Companies 
ORDER BY Market_Value_billion DESC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Sort the company names in descending order of the company's market value.*/


SELECT Companies.name 
FROM Companies 
ORDER BY Companies.Market_Value_billion DESC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer What are the names of companies whose headquarters are not "USA"?*/


SELECT Companies.name 
FROM Companies 
WHERE Companies.Headquarters != 'USA'

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Find the names of the companies whose headquarters are not located in "USA".*/


SELECT Companies.name 
FROM Companies 
WHERE Companies.Headquarters != 'USA'

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer What are the name and assets of each company, sorted in ascending order of company name?*/


SELECT Companies.name, Companies.Assets_billion
FROM Companies
ORDER BY Companies.name ASC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to List the name and assets of each company in ascending order of company name.*/


SELECT Companies.name, Companies.Assets_billion
FROM Companies
ORDER BY Companies.name ASC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer What are the average profits of companies?*/


SELECT AVG(Profits_billion)
FROM Companies

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Compute the average profits companies make.*/


SELECT AVG(Profits_billion)
FROM Companies

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to What are the maximum and minimum sales of the companies whose industries are not "Banking".*/


SELECT MAX(Sales_billion), MIN(Sales_billion) 
FROM Companies 
WHERE Industry != 'Banking'

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Find the maximum and minimum sales of the companies that are not in the "Banking" industry.*/


SELECT MAX(Sales_billion), MIN(Sales_billion)
FROM Companies
WHERE Industry != 'Banking'

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer How many different industries are the companies in?*/


SELECT COUNT(DISTINCT Industry) 
FROM Companies

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Count the number of distinct company industries.*/


SELECT COUNT(DISTINCT Industry) FROM Companies

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to List the names of buildings in descending order of building height.*/


SELECT name 
FROM buildings 
ORDER BY Height DESC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer What are the names of buildings sorted in descending order of building height?*/


SELECT name 
FROM buildings 
ORDER BY Height DESC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Find the stories of the building with the largest height.*/


SELECT Stories 
FROM buildings 
ORDER BY Height DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer What is the stories of highest building?*/


SELECT MAX(Stories) FROM buildings

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to List the name of a building along with the name of a company whose office is in the building.*/


SELECT buildings.name, Companies.name
FROM buildings
INNER JOIN Office_locations ON buildings.id = Office_locations.building_id
INNER JOIN Companies ON Office_locations.company_id = Companies.id

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to For each company, return the company name and the name of the building its office is located in.*/


SELECT Companies.name, buildings.name
FROM Companies
INNER JOIN Office_locations ON Companies.id = Office_locations.company_id
INNER JOIN buildings ON Office_locations.building_id = buildings.id

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Show the names of the buildings that have more than one company offices.*/


SELECT b.name 
FROM buildings b 
INNER JOIN office_locations o 
ON b.id = o.building_id 
GROUP BY b.name 
HAVING COUNT(o.company_id) > 1

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Which buildings have more than one company offices? Give me the building names.*/


SELECT b.name 
FROM buildings b 
INNER JOIN office_locations o 
ON b.id = o.building_id 
GROUP BY b.name 
HAVING COUNT(o.company_id) > 1

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Show the name of the building that has the most company offices.*/


SELECT b.name 
FROM buildings b 
INNER JOIN office_locations o 
ON b.id = o.building_id 
GROUP BY b.name 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Which building has the largest number of company offices? Give me the building name.*/


SELECT b.name 
FROM buildings b 
INNER JOIN office_locations o 
ON b.id = o.building_id 
GROUP BY b.name 
ORDER BY COUNT(o.company_id) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Please show the names of the buildings whose status is "on-hold", in ascending order of stories.*/


SELECT name 
FROM buildings 
WHERE Status = 'on-hold' 
ORDER BY Stories ASC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Find the names of the buildings in "on-hold" status, and sort them in ascending order of building stories.*/


SELECT name 
FROM buildings 
WHERE Status = 'on-hold' 
ORDER BY Stories ASC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Please show each industry and the corresponding number of companies in that industry.*/


SELECT Industry, COUNT(*) AS 'Number of Companies'
FROM Companies
GROUP BY Industry

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer Whah are the name of each industry and the number of companies in that industry?*/


SELECT Industry, COUNT(*) AS 'Number of Companies'
FROM Companies
GROUP BY Industry

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Please show the industries of companies in descending order of the number of companies.*/


SELECT Industry, COUNT(*) AS Number_of_Companies
FROM Companies
GROUP BY Industry
ORDER BY Number_of_Companies DESC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Sort all the industries in descending order of the count of companies in each industry*/


SELECT Industry, COUNT(*) AS Company_Count
FROM Companies
GROUP BY Industry
ORDER BY Company_Count DESC

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to List the industry shared by the most companies.*/


SELECT Industry, COUNT(*) AS Number_of_Companies
FROM Companies
GROUP BY Industry
ORDER BY Number_of_Companies DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer Which industry has the most companies?*/


SELECT Industry, COUNT(*) AS Company_Count
FROM Companies
GROUP BY Industry
ORDER BY Company_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to List the names of buildings that have no company office.*/


SELECT b.name 
FROM buildings b 
LEFT JOIN office_locations o 
ON b.id = o.building_id 
WHERE o.company_id IS NULL

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Which buildings do not have any company office? Give me the building names.*/


SELECT b.name 
FROM buildings b 
LEFT JOIN office_locations o 
ON b.id = o.building_id 
WHERE o.company_id IS NULL

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Show the industries shared by companies whose headquarters are "USA" and companies whose headquarters are "China".*/


SELECT Industry 
FROM Companies 
WHERE Headquarters IN ('USA', 'China') 
GROUP BY Industry 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer Which industries have both companies with headquarter in "USA" and companies with headquarter in "China"?*/


SELECT DISTINCT Industry 
FROM Companies 
WHERE Headquarters IN ('USA', 'China')

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Find the number of companies whose industry is "Banking" or "Conglomerate",*/
 and have moved into a building with more than 10 stories

SELECT COUNT(*) 
FROM Companies c 
INNER JOIN Office_locations o 
ON c.id = o.company_id 
INNER JOIN buildings b 
ON o.building_id = b.id 
WHERE c.Industry IN ('Banking', 'Conglomerate') 
AND b.Stories > 10

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer How many companies are in either "Banking" industry or "Conglomerate" industry?*/


SELECT COUNT(*) 
FROM Companies 
WHERE Industry IN ('Banking', 'Conglomerate')

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to Show the headquarters shared by more than two companies.*/


SELECT c1.Headquarters
FROM Companies c1
INNER JOIN Office_locations o1 ON c1.id = o1.company_id
INNER JOIN Office_locations o2 ON o1.building_id = o2.building_id
INNER JOIN Companies c2 ON o2.company_id = c2.id
WHERE c1.Headquarters = c2.Headquarters
GROUP BY c1.Headquarters
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

buildings(id, name, City, Height, Stories, Status)
Companies(id, name, Headquarters, Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value_billion)
Office_locations(building_id, company_id, move_in_year)

Create a SQL request to answer Which headquarter locations are used by more than 2 companies?*/


SELECT c.Headquarters 
FROM Companies c 
INNER JOIN Office_locations o 
ON c.id = o.company_id 
GROUP BY c.Headquarters 
HAVING COUNT(*) > 2

