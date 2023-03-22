/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer How many entrepreneurs are there?*/


SELECT COUNT(*) 
FROM entrepreneur

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Count the number of entrepreneurs.*/


SELECT COUNT(*) FROM entrepreneur

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to List the companies of entrepreneurs in descending order of money requested.*/


SELECT Company, Money_Requested 
FROM entrepreneur 
ORDER BY Money_Requested DESC

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the companies of entrepreneurs, ordered descending by amount of money requested?*/


SELECT Company, Money_Requested 
FROM entrepreneur 
ORDER BY Money_Requested DESC

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to List the companies and the investors of entrepreneurs.*/


SELECT Company, Investor 
FROM entrepreneur 
ORDER BY Company

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the companies and investors that correspond to each entrepreneur?*/


SELECT entrepreneur.Company, entrepreneur.Investor 
FROM entrepreneur 
INNER JOIN people ON entrepreneur.People_ID = people.People_ID

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What is the average money requested by all entrepreneurs?*/


SELECT AVG(Money_Requested)
FROM entrepreneur

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the average money requested across all entrepreneurs.*/


SELECT AVG(Money_Requested)
FROM entrepreneur

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the names of people in ascending order of weight?*/


SELECT Name 
FROM people 
ORDER BY Weight ASC

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the names of people, ordered by weight ascending.*/


SELECT Name 
FROM people 
ORDER BY Weight ASC

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the names of entrepreneurs?*/


SELECT Name 
FROM people 
INNER JOIN entrepreneur 
ON people.People_ID = entrepreneur.People_ID

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the names of entrepreneurs.*/


SELECT Name 
FROM people 
INNER JOIN entrepreneur 
ON people.People_ID = entrepreneur.People_ID

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the names of entrepreneurs whose investor is not "Rachel Elnaugh"?*/


SELECT p.Name 
FROM entrepreneur e 
INNER JOIN people p 
ON e.People_ID = p.People_ID 
WHERE e.Investor != 'Rachel Elnaugh'

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the names of entrepreneurs do no not have the investor Rachel Elnaugh.*/


SELECT Name 
FROM people 
INNER JOIN entrepreneur 
ON people.People_ID = entrepreneur.People_ID 
WHERE entrepreneur.Investor != 'Rachel Elnaugh'

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What is the weight of the shortest person?*/


SELECT MIN(Weight)
FROM people

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the weight of the shortest person.*/


SELECT MIN(Weight) FROM people

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What is the name of the entrepreneur with the greatest weight?*/


SELECT Name 
FROM people 
INNER JOIN entrepreneur 
ON people.People_ID = entrepreneur.People_ID 
ORDER BY Weight DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the name of the heaviest entrepreneur.*/


SELECT Name 
FROM people 
INNER JOIN entrepreneur 
ON people.People_ID = entrepreneur.People_ID 
ORDER BY Weight DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What is the total money requested by entrepreneurs with height more than 1.85?*/


SELECT SUM(Money_Requested) 
FROM entrepreneur 
INNER JOIN people ON entrepreneur.People_ID = people.People_ID 
WHERE Height > 1.85

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Give the total money requested by entrepreneurs who are taller than 1.85.*/


SELECT SUM(Money_Requested) 
FROM entrepreneur 
INNER JOIN people ON entrepreneur.People_ID = people.People_ID 
WHERE Height > 1.85

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the dates of birth of entrepreneurs with investor "Simon Woodroffe" or "Peter Jones"?*/


SELECT p.Date_of_Birth 
FROM entrepreneur e 
INNER JOIN people p 
ON e.People_ID = p.People_ID 
WHERE e.Investor IN ('Simon Woodroffe', 'Peter Jones')

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the dates of birth for entrepreneurs who have either the investor Simon Woodroffe or Peter Jones.*/


SELECT Date_of_Birth 
FROM people 
INNER JOIN entrepreneur 
ON people.People_ID = entrepreneur.People_ID 
WHERE Investor IN ('Simon Woodroffe', 'Peter Jones')

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the weights of entrepreneurs in descending order of money requested?*/


SELECT p.Weight 
FROM entrepreneur e 
INNER JOIN people p 
ON e.People_ID = p.People_ID 
ORDER BY e.Money_Requested DESC

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the weights of entrepreneurs, ordered descending by amount of money requested.*/


SELECT p.Weight 
FROM entrepreneur e 
INNER JOIN people p 
ON e.People_ID = p.People_ID 
ORDER BY e.Money_Requested DESC

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the investors of entrepreneurs and the corresponding number of entrepreneurs invested by each investor?*/


SELECT Investor, COUNT(Entrepreneur_ID) AS Number_of_Entrepreneurs_Invested
FROM entrepreneur
GROUP BY Investor

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer How many entrepreneurs correspond to each investor?*/


SELECT Investor, COUNT(Entrepreneur_ID) AS 'Number of Entrepreneurs'
FROM entrepreneur
GROUP BY Investor

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What is the investor that has invested in the most number of entrepreneurs?*/


SELECT Investor, COUNT(*) AS Num_Investments
FROM entrepreneur
GROUP BY Investor
ORDER BY Num_Investments DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the investor who have invested in the greatest number of entrepreneurs.*/


SELECT Investor, COUNT(*) AS Num_Investments
FROM entrepreneur
GROUP BY Investor
ORDER BY Num_Investments DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the investors that have invested in at least two entrepreneurs?*/


SELECT Investor 
FROM entrepreneur 
GROUP BY Investor 
HAVING COUNT(Entrepreneur_ID) >= 2

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Return the investors who have invested in two or more entrepreneurs.*/


SELECT Investor 
FROM entrepreneur 
GROUP BY Investor 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer List the names of entrepreneurs and their companies in descending order of money requested?*/


SELECT people.Name, entrepreneur.Company, entrepreneur.Money_Requested
FROM entrepreneur
INNER JOIN people ON entrepreneur.People_ID = people.People_ID
ORDER BY entrepreneur.Money_Requested DESC

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the names of entrepreneurs and their corresponding investors, ordered descending by the amount of money requested?*/


SELECT p.Name, e.Investor, e.Money_Requested
FROM entrepreneur e
INNER JOIN people p ON e.People_ID = p.People_ID
ORDER BY e.Money_Requested DESC

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to List the names of people that are not entrepreneurs.*/


SELECT Name 
FROM people 
WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur)

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the names of people who are not entrepreneurs?*/


SELECT Name 
FROM people 
WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur)

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Show the investors shared by entrepreneurs that requested more than 140000 and entrepreneurs that requested less than 120000.*/


SELECT Investor 
FROM entrepreneur 
WHERE Money_Requested > 140000 OR Money_Requested < 120000 
GROUP BY Investor

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer What are the investors who have invested in both entrepreneurs who requested more than 140000 and entrepreneurs who requested less than 120000?*/


SELECT Investor 
FROM entrepreneur 
WHERE Money_Requested > 140000 
AND Investor IN (SELECT Investor 
                 FROM entrepreneur 
                 WHERE Money_Requested < 120000) 
GROUP BY Investor

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer How many distinct companies are there?*/


SELECT COUNT(DISTINCT Company) FROM entrepreneur

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Count the number of different companies.*/


SELECT COUNT(DISTINCT Company) FROM entrepreneur

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to Show the company of the tallest entrepreneur.*/


SELECT Company 
FROM entrepreneur 
INNER JOIN people ON entrepreneur.People_ID = people.People_ID 
ORDER BY Height DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

entrepreneur(Entrepreneur_ID, People_ID, Company, Money_Requested, Investor)
people(People_ID, Name, Height, Weight, Date_of_Birth)

Create a SQL request to answer Which company was started by the entrepreneur with the greatest height?*/


SELECT Company 
FROM entrepreneur 
INNER JOIN people ON entrepreneur.People_ID = people.People_ID 
ORDER BY Height DESC 
LIMIT 1

