/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer How many gas companies are there?*/


SELECT COUNT(DISTINCT Company_ID) 
FROM station_company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What is the total number of companies?*/


SELECT COUNT(*) FROM company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to List the company name and rank for all companies in the decreasing order of their sales.*/


SELECT Company, Rank 
FROM company 
ORDER BY Sales_billion DESC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What is the name and rank of every company ordered by descending number of sales?*/


SELECT Company, Rank FROM company ORDER BY Sales_billion DESC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show the company name and the main industry for all companies whose headquarters are not from USA.*/


SELECT Company, Main_Industry 
FROM company 
WHERE Headquarters != 'USA'

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the companies and main industries of all companies that are not headquartered in the United States?*/


SELECT Company, Main_Industry
FROM company
WHERE Headquarters != 'United States'

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show all company names and headquarters in the descending order of market value.*/


SELECT Company, Headquarters 
FROM company 
ORDER BY Market_Value DESC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the names and headquarters of all companies ordered by descending market value?*/


SELECT Company, Headquarters FROM company ORDER BY Market_Value DESC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show minimum, maximum, and average market value for all companies.*/


SELECT MIN(Market_Value) AS 'Minimum Market Value', MAX(Market_Value) AS 'Maximum Market Value', AVG(Market_Value) AS 'Average Market Value'
FROM company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What is the minimum, maximum, and average market value for every company?*/


SELECT Company, MIN(Market_Value) AS Min_Market_Value, MAX(Market_Value) AS Max_Market_Value, AVG(Market_Value) AS Avg_Market_Value
FROM company
GROUP BY Company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show all main industry for all companies.*/


SELECT Company, Main_Industry 
FROM company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the different main industries for all companies?*/


SELECT DISTINCT Main_Industry 
FROM company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to List all headquarters and the number of companies in each headquarter.*/


SELECT Headquarters, COUNT(Company_ID) AS Number_of_Companies
FROM company
GROUP BY Headquarters

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer For each headquarter, what are the headquarter and how many companies are centered there?*/


SELECT Headquarters, COUNT(Company_ID) AS 'Number of Companies'
FROM company
GROUP BY Headquarters

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show all main industry and total market value in each industry.*/


SELECT Main_Industry, SUM(Market_Value) AS Total_Market_Value
FROM company
GROUP BY Main_Industry

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the main indstries and total market value for each industry?*/


SELECT Main_Industry, SUM(Market_Value) AS Total_Market_Value
FROM company
GROUP BY Main_Industry

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to List the main industry with highest total market value and its number of companies.*/


SELECT Main_Industry, COUNT(Company_ID) AS Number_of_Companies, SUM(Market_Value) AS Total_Market_Value
FROM company
GROUP BY Main_Industry
ORDER BY Total_Market_Value DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer For each main industry, what is the total number of companies for the industry with the highest total market value?*/


SELECT Main_Industry, COUNT(*) AS Total_Companies
FROM company
WHERE Market_Value = (SELECT MAX(Market_Value)
                      FROM company
                      GROUP BY Main_Industry)
GROUP BY Main_Industry

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show headquarters with at least two companies in the banking industry.*/


SELECT Headquarters 
FROM company 
WHERE Main_Industry = 'Banking' 
GROUP BY Headquarters 
HAVING COUNT(Company_ID) >= 2

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the headquarters with at least two companies in the banking industry?*/


SELECT Headquarters 
FROM company 
WHERE Main_Industry = 'Banking' 
GROUP BY Headquarters 
HAVING COUNT(Company_ID) >= 2

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show gas station id, location, and manager_name for all gas stations ordered by open year.*/


SELECT Station_ID, Location, Manager_Name
FROM gas_station
ORDER BY Open_Year ASC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the gas station ids, locations, and manager names for the gas stations ordered by opening year?*/


SELECT Station_ID, Location, Manager_Name
FROM gas_station
ORDER BY Open_Year ASC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer How many gas station are opened between 2000 and 2005?*/


SELECT COUNT(*) 
FROM gas_station 
WHERE Open_Year BETWEEN 2000 AND 2005

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What is the total number of gas stations that opened between 2000 and 2005?*/


SELECT COUNT(*) 
FROM gas_station 
WHERE Open_Year BETWEEN 2000 AND 2005

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show all locations and the number of gas stations in each location ordered by the count.*/


SELECT Location, COUNT(*) AS 'Number of Gas Stations'
FROM gas_station
GROUP BY Location
ORDER BY COUNT(*) DESC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer For each location, how many gas stations are there in order?*/


SELECT Location, COUNT(*) AS 'Number of Gas Stations'
FROM gas_station
GROUP BY Location
ORDER BY COUNT(*) DESC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show all headquarters with both a company in banking industry and a company in Oil and gas.*/


SELECT DISTINCT c1.Headquarters 
FROM company c1 
INNER JOIN company c2 ON c1.Headquarters = c2.Headquarters 
INNER JOIN station_company sc ON c1.Company_ID = sc.Company_ID 
INNER JOIN gas_station gs ON sc.Station_ID = gs.Station_ID 
WHERE c1.Main_Industry = 'Banking' 
AND c2.Main_Industry = 'Oil and Gas'

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the headquarters that have both a company in the banking and 'oil and gas' industries?*/


SELECT DISTINCT c1.Headquarters 
FROM company c1 
INNER JOIN company c2 
ON c1.Headquarters = c2.Headquarters 
WHERE c1.Main_Industry = 'Banking' 
AND c2.Main_Industry = 'Oil and Gas'

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show all headquarters without a company in banking industry.*/


SELECT Headquarters 
FROM company 
WHERE Main_Industry != 'Banking' 
AND Company_ID NOT IN (SELECT Company_ID FROM station_company)

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the headquarters without companies that are in the banking industry?*/


SELECT Headquarters 
FROM company 
WHERE Main_Industry = 'Banking' 
AND Company_ID NOT IN (SELECT Company_ID FROM station_company)

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show the company name with the number of gas station.*/


SELECT Company, COUNT(Station_ID) AS 'Number of Gas Stations'
FROM company
INNER JOIN station_company ON company.Company_ID = station_company.Company_ID
GROUP BY Company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer For each company id, what are the companies and how many gas stations does each one operate?*/


SELECT c.Company_ID, c.Company, COUNT(s.Station_ID) AS 'Number of Gas Stations'
FROM company c
INNER JOIN station_company sc ON c.Company_ID = sc.Company_ID
INNER JOIN gas_station s ON sc.Station_ID = s.Station_ID
GROUP BY c.Company_ID, c.Company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show company name and main industry without a gas station.*/


SELECT Company, Main_Industry
FROM company
WHERE Company_ID NOT IN (SELECT Company_ID FROM station_company)

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the main industries of the companies without gas stations and what are the companies?*/


SELECT Company, Main_Industry 
FROM company 
WHERE Company_ID NOT IN (SELECT Company_ID FROM station_company) 
ORDER BY Company

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show the manager name for gas stations belonging to the ExxonMobil company.*/


SELECT gas_station.Manager_Name 
FROM gas_station 
INNER JOIN station_company ON gas_station.Station_ID = station_company.Station_ID 
INNER JOIN company ON station_company.Company_ID = company.Company_ID 
WHERE company.Company = 'ExxonMobil'

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the names of the managers for gas stations that are operated by the ExxonMobil company?*/


SELECT Manager_Name 
FROM gas_station 
INNER JOIN station_company 
ON gas_station.Station_ID = station_company.Station_ID 
INNER JOIN company 
ON station_company.Company_ID = company.Company_ID 
WHERE company.Company = 'ExxonMobil'

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show all locations where a gas station for company with market value greater than 100 is located.*/


SELECT gas_station.Location 
FROM gas_station 
INNER JOIN station_company ON gas_station.Station_ID = station_company.Station_ID 
INNER JOIN company ON station_company.Company_ID = company.Company_ID 
WHERE company.Market_Value > 100

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the locations that have gas stations owned by a company with a market value greater than 100?*/


SELECT Location 
FROM gas_station gs 
INNER JOIN station_company sc ON gs.Station_ID = sc.Station_ID 
INNER JOIN company c ON sc.Company_ID = c.Company_ID 
WHERE c.Market_Value > 100

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to Show the manager name with most number of gas stations opened after 2000.*/


SELECT Manager_Name, COUNT(*) AS Num_Stations
FROM gas_station
WHERE Open_Year > 2000
GROUP BY Manager_Name
ORDER BY Num_Stations DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What is the name of the manager with the most gas stations that opened after 2000?*/


SELECT Manager_Name
FROM gas_station
INNER JOIN station_company ON gas_station.Station_ID = station_company.Station_ID
WHERE Open_Year > 2000
GROUP BY Manager_Name
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to order all gas station locations by the opening year.*/


SELECT Location, Open_Year 
FROM gas_station 
ORDER BY Open_Year ASC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the locations of all the gas stations ordered by opening year?*/


SELECT Location 
FROM gas_station 
ORDER BY Open_Year ASC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to find the rank, company names, market values of the companies in the banking industry order by their sales and profits in billion.*/


SELECT c.Rank, c.Company, c.Market_Value 
FROM company c 
WHERE c.Main_Industry = 'Banking' 
ORDER BY c.Sales_billion DESC, c.Profits_billion DESC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What is the rank, company, and market value of every comapny in the banking industry ordered by sales and profits?*/


SELECT c.Rank, c.Company, c.Market_Value
FROM company c
INNER JOIN station_company sc ON c.Company_ID = sc.Company_ID
INNER JOIN gas_station gs ON sc.Station_ID = gs.Station_ID
WHERE c.Main_Industry = 'Banking'
ORDER BY c.Sales_billion DESC, c.Profits_billion DESC

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to find the location and Representative name of the gas stations owned by the companies with top 3 Asset amounts.*/


SELECT gas_station.Location, gas_station.Representative_Name 
FROM gas_station 
INNER JOIN station_company ON gas_station.Station_ID = station_company.Station_ID 
INNER JOIN company ON station_company.Company_ID = company.Company_ID 
WHERE company.Assets_billion IN (SELECT Assets_billion FROM company ORDER BY Assets_billion DESC LIMIT 3) 
ORDER BY gas_station.Location

/*Here are Mysql tables, with their properties:

company(Company_ID, Rank, Company, Headquarters, Main_Industry, Sales_billion, Profits_billion, Assets_billion, Market_Value)
gas_station(Station_ID, Open_Year, Location, Manager_Name, Vice_Manager_Name, Representative_Name)
station_company(Station_ID, Company_ID, Rank_of_the_Year)

Create a SQL request to answer What are the locations and representatives' names of the gas stations owned by the companies with the 3 largest amounts of assets?*/


SELECT gas_station.Location, gas_station.Representative_Name 
FROM gas_station 
INNER JOIN station_company ON gas_station.Station_ID = station_company.Station_ID 
INNER JOIN company ON station_company.Company_ID = company.Company_ID 
WHERE company.Assets_billion IN (SELECT MAX(Assets_billion) FROM company ORDER BY Assets_billion DESC LIMIT 3) 
ORDER BY company.Assets_billion DESC

