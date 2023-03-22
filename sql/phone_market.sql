/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to answer How many phones are there?*/


SELECT COUNT(*) FROM phone

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to List the names of phones in ascending order of price.*/


SELECT Name 
FROM phone 
ORDER BY Price ASC

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to answer What are the memories and carriers of phones?*/


SELECT Name, Memory_in_G, Carrier FROM phone

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to List the distinct carriers of phones with memories bigger than 32.*/


SELECT DISTINCT Carrier 
FROM phone 
WHERE Memory_in_G > 32

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to Show the names of phones with carrier either "Sprint" or "TMobile".*/


SELECT Name 
FROM phone 
WHERE Carrier IN ('Sprint', 'TMobile')

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to answer What is the carrier of the most expensive phone?*/


SELECT Carrier 
FROM phone 
ORDER BY Price DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to Show different carriers of phones together with the number of phones with each carrier.*/


SELECT Carrier, COUNT(*) AS 'Number of Phones'
FROM phone
GROUP BY Carrier

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to Show the most frequently used carrier of the phones.*/


SELECT Carrier, COUNT(*) AS Frequency 
FROM phone 
GROUP BY Carrier 
ORDER BY Frequency DESC

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to Show the carriers that have both phones with memory smaller than 32 and phones with memory bigger than 64.*/


SELECT DISTINCT Carrier 
FROM phone 
WHERE Memory_in_G < 32 OR Memory_in_G > 64

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to Show the names of phones and the districts of markets they are on.*/


SELECT p.Name, m.District 
FROM phone p 
INNER JOIN phone_market pm ON p.Phone_ID = pm.Phone_ID 
INNER JOIN market m ON pm.Market_ID = m.Market_ID

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to Show the names of phones and the districts of markets they are on, in ascending order of the ranking of the market.*/


SELECT p.Name, m.District 
FROM phone p 
INNER JOIN phone_market pm ON p.Phone_ID = pm.Phone_ID 
INNER JOIN market m ON pm.Market_ID = m.Market_ID 
ORDER BY m.Ranking ASC

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to Show the names of phones that are on market with number of shops greater than 50.*/


SELECT p.Name 
FROM phone p 
INNER JOIN phone_market pm ON p.Phone_ID = pm.Phone_ID 
INNER JOIN market m ON pm.Market_ID = m.Market_ID 
WHERE m.Num_of_shops > 50

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to For each phone, show its names and total number of stocks.*/


SELECT phone.Name, SUM(phone_market.Num_of_stock) AS Total_Stock
FROM phone
INNER JOIN phone_market ON phone.Phone_ID = phone_market.Phone_ID
GROUP BY phone.Name

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to Show the names of phones that have total number of stocks bigger than 2000, in descending order of the total number of stocks.*/


SELECT Name, SUM(Num_of_stock) AS Total_Stocks
FROM phone
JOIN phone_market ON phone.Phone_ID = phone_market.Phone_ID
GROUP BY Name
HAVING SUM(Num_of_stock) > 2000
ORDER BY Total_Stocks DESC

/*Here are Mysql tables, with their properties:

phone(Name, Phone_ID, Memory_in_G, Carrier, Price)
market(Market_ID, District, Num_of_employees, Num_of_shops, Ranking)
phone_market(Market_ID, Phone_ID, Num_of_stock)

Create a SQL request to List the names of phones that are not on any market.*/


SELECT Name 
FROM phone 
WHERE Phone_ID NOT IN (SELECT Phone_ID FROM phone_market)

