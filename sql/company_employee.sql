/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to answer How many companies are headquartered in the US?*/


SELECT COUNT(*) 
FROM company 
WHERE Headquarters = 'US'

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to List the names of companies by ascending number of sales.*/


SELECT Name 
FROM company 
ORDER BY Sales_in_Billion ASC

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to answer What are the headquarters and industries of all companies?*/


SELECT Company_ID, Name, Headquarters, Industry
FROM company

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to answer Show the names of companies in the banking or retailing industry?*/


SELECT Name 
FROM company 
WHERE Industry IN ('Banking', 'Retailing')

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to answer What is the maximum and minimum market value of companies?*/


SELECT MAX(Market_Value_in_Billion) AS Max_Market_Value, MIN(Market_Value_in_Billion) AS Min_Market_Value
FROM company

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to answer What is the headquarter of the company with the largest sales?*/


SELECT Headquarters 
FROM company 
WHERE Sales_in_Billion = (SELECT MAX(Sales_in_Billion) FROM company)

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to Show the different headquarters and number of companies at each headquarter.*/


SELECT Headquarters, COUNT(Company_ID) AS Number_of_Companies
FROM company
GROUP BY Headquarters

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to Show the most common headquarter for companies.*/


SELECT Headquarters, COUNT(*) AS Count 
FROM company 
GROUP BY Headquarters 
ORDER BY Count DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to Show the headquarters that have at least two companies.*/


SELECT Headquarters 
FROM company 
GROUP BY Headquarters 
HAVING COUNT(Company_ID) >= 2

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to Show the headquarters that have both companies in banking industry and companies in oil and gas industry.*/


SELECT DISTINCT c1.Headquarters 
FROM company c1 
INNER JOIN company c2 
ON c1.Headquarters = c2.Headquarters 
WHERE c1.Industry = 'Banking' 
AND c2.Industry = 'Oil and Gas'

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to Show the names of companies and of employees.*/


SELECT c.Name AS Company_Name, p.Name AS Employee_Name
FROM company c
INNER JOIN employment e ON c.Company_ID = e.Company_ID
INNER JOIN people p ON e.People_ID = p.People_ID

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to Show names of companies and that of employees in descending order of number of years working for that employee.*/


SELECT c.Name AS Company_Name, p.Name AS Employee_Name, e.Year_working
FROM company c
INNER JOIN employment e ON c.Company_ID = e.Company_ID
INNER JOIN people p ON e.People_ID = p.People_ID
ORDER BY e.Year_working DESC

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to Show the names of employees that work for companies with sales bigger than 200.*/


SELECT p.Name 
FROM people p 
INNER JOIN employment e ON p.People_ID = e.People_ID 
INNER JOIN company c ON e.Company_ID = c.Company_ID 
WHERE c.Sales_in_Billion > 200

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to Show the names of companies and the number of employees they have*/


SELECT c.Name, COUNT(e.People_ID) AS 'Number of Employees'
FROM company c
INNER JOIN employment e ON c.Company_ID = e.Company_ID
GROUP BY c.Name

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to List the names of people that are not employed by any company*/


SELECT Name
FROM people
WHERE People_ID NOT IN (SELECT People_ID FROM employment)

/*Here are Mysql tables, with their properties:

people(People_ID, Age, Name, Nationality, Graduation_College)
company(Company_ID, Name, Headquarters, Industry, Sales_in_Billion, Profits_in_Billion, Assets_in_Billion, Market_Value_in_Billion)
employment(Company_ID, People_ID, Year_working)

Create a SQL request to list the names of the companies with more than 200 sales in the descending order of sales and profits.*/


SELECT Name 
FROM company 
WHERE Sales_in_Billion > 200 
ORDER BY Sales_in_Billion DESC, Profits_in_Billion DESC

