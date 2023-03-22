/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to answer How many furniture components are there in total?*/


SELECT SUM(Num_of_Component) 
FROM furniture

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Return the name and id of the furniture with the highest market rate.*/


SELECT Furniture_ID, Name 
FROM furniture 
WHERE Market_Rate = (SELECT MAX(Market_Rate) FROM furniture)

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to find the total market rate of the furnitures that have the top 2 market shares.*/


SELECT SUM(furniture.Market_Rate) 
FROM furniture 
INNER JOIN furniture_manufacte ON furniture.Furniture_ID = furniture_manufacte.Furniture_ID 
GROUP BY furniture.Furniture_ID 
ORDER BY furniture.Market_Rate DESC 
LIMIT 2

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Find the component amounts and names of all furnitures that have more than 10 components.*/


SELECT Name, Num_of_Component 
FROM furniture 
WHERE Num_of_Component > 10

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Find the name and component amount of the least popular furniture.*/


SELECT Name, Num_of_Component 
FROM furniture 
ORDER BY Market_Rate ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Find the names of furnitures whose prices are lower than the highest price.*/


SELECT Name 
FROM furniture 
WHERE Price_in_Dollar < (SELECT MAX(Price_in_Dollar) FROM furniture_manufacte)

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Which manufacturer has the most number of shops? List its name and year of opening.*/


SELECT Name, Open_Year 
FROM manufacturer 
WHERE Num_of_Shops = (SELECT MAX(Num_of_Shops) FROM manufacturer)

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Find the average number of factories for the manufacturers that have more than 20 shops.*/


SELECT AVG(Num_of_Factories) 
FROM manufacturer 
WHERE Num_of_Shops > 20

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to List all manufacturer names and ids ordered by their opening year.*/


SELECT Manufacturer_ID, Name, Open_Year 
FROM manufacturer 
ORDER BY Open_Year ASC

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Give me the name and year of opening of the manufacturers that have either less than 10 factories or more than 10 shops.*/


SELECT Name, Open_Year 
FROM manufacturer 
WHERE Num_of_Factories < 10 OR Num_of_Shops > 10

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to what is the average number of factories and maximum number of shops for manufacturers that opened before 1990.*/


SELECT AVG(Num_of_Factories), MAX(Num_of_Shops) 
FROM manufacturer 
WHERE Open_Year < 1990

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Find the id and number of shops for the company that produces the most expensive furniture.*/


SELECT m.Manufacturer_ID, m.Num_of_Shops 
FROM manufacturer m 
INNER JOIN furniture_manufacte fm ON m.Manufacturer_ID = fm.Manufacturer_ID 
INNER JOIN furniture f ON fm.Furniture_ID = f.Furniture_ID 
WHERE fm.Price_in_Dollar = (SELECT MAX(Price_in_Dollar) FROM furniture_manufacte) 
GROUP BY m.Manufacturer_ID

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Find the number of funiture types produced by each manufacturer as well as the company names.*/


SELECT m.Name, COUNT(fm.Furniture_ID) AS Num_of_Furniture_Types
FROM manufacturer m
INNER JOIN furniture_manufacte fm ON m.Manufacturer_ID = fm.Manufacturer_ID
GROUP BY m.Name

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Give me the names and prices of furnitures which some companies are manufacturing.*/


SELECT f.Name, fm.Price_in_Dollar 
FROM furniture f 
INNER JOIN furniture_manufacte fm 
ON f.Furniture_ID = fm.Furniture_ID 
INNER JOIN manufacturer m 
ON m.Manufacturer_ID = fm.Manufacturer_ID

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Find the market shares and names of furnitures which no any company is producing in our records.*/


SELECT f.Name, f.Market_Rate
FROM furniture f
LEFT JOIN furniture_manufacte fm ON f.Furniture_ID = fm.Furniture_ID
WHERE fm.Manufacturer_ID IS NULL

/*Here are Mysql tables, with their properties:

manufacturer(Manufacturer_ID, Open_Year, Name, Num_of_Factories, Num_of_Shops)
furniture(Furniture_ID, Name, Num_of_Component, Market_Rate)
furniture_manufacte(Manufacturer_ID, Furniture_ID, Price_in_Dollar)

Create a SQL request to Find the name of the company that produces both furnitures with less than 6 components and furnitures with more than 10 components.*/


SELECT m.Name 
FROM manufacturer m 
INNER JOIN furniture_manufacte fm ON m.Manufacturer_ID = fm.Manufacturer_ID 
INNER JOIN furniture f ON fm.Furniture_ID = f.Furniture_ID 
WHERE f.Num_of_Component < 6 OR f.Num_of_Component > 10

