/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to answer How many products are there?*/


SELECT COUNT(Product_ID) FROM Products

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to List the name of products in ascending order of price.*/


SELECT Product_Name 
FROM Products 
ORDER BY Product_Price ASC

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to answer What are the names and type codes of products?*/


SELECT Product_Name, Product_Type_Code
FROM Products

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show the prices of the products named "Dining" or "Trading Policy".*/


SELECT Product_Name, Product_Price 
FROM Products 
WHERE Product_Name IN ('Dining', 'Trading Policy')

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to answer What is the average price for products?*/


SELECT AVG(Product_Price)
FROM Products

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to answer What is the name of the product with the highest price?*/


SELECT Product_Name 
FROM Products 
ORDER BY Product_Price DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show different type codes of products and the number of products with each type code.*/


SELECT Product_Type_Code, COUNT(Product_ID) 
FROM Products 
GROUP BY Product_Type_Code

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show the most common type code across products.*/


SELECT Product_Type_Code, COUNT(Product_Type_Code) AS Count
FROM Products
GROUP BY Product_Type_Code
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show the product type codes that have at least two products.*/


SELECT Product_Type_Code
FROM Products
GROUP BY Product_Type_Code
HAVING COUNT(Product_ID) >= 2

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show the product type codes that have both products with price higher than 4500 and products with price lower than 3000.*/


SELECT Product_Type_Code 
FROM Products 
WHERE Product_Price > 4500 
AND Product_Price < 3000

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show the names of products and the number of events they are in.*/


SELECT Products.Product_Name, COUNT(Products_in_Events.Event_ID) AS Number_of_Events
FROM Products
INNER JOIN Products_in_Events ON Products.Product_ID = Products_in_Events.Product_ID
GROUP BY Products.Product_Name

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show the names of products and the number of events they are in, sorted by the number of events in descending order.*/


SELECT Products.Product_Name, COUNT(Products_in_Events.Event_ID) AS Num_Events
FROM Products
INNER JOIN Products_in_Events ON Products.Product_ID = Products_in_Events.Product_ID
GROUP BY Products.Product_Name
ORDER BY Num_Events DESC

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show the names of products that are in at least two events.*/


SELECT Product_Name
FROM Products
WHERE Product_ID IN (SELECT Product_ID
                     FROM Products_in_Events
                     GROUP BY Product_ID
                     HAVING COUNT(*) >= 2)

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to Show the names of products that are in at least two events in ascending alphabetical order of product name.*/


SELECT Product_Name
FROM Products
WHERE Product_ID IN (SELECT Product_ID
                     FROM Products_in_Events
                     GROUP BY Product_ID
                     HAVING COUNT(*) >= 2)
ORDER BY Product_Name ASC

/*Here are Mysql tables, with their properties:

Addresses(Address_ID, address_details, UNIQUE)
Locations(Location_ID, Other_Details)
Products(Product_ID, Product_Type_Code, Product_Name, Product_Price, UNIQUE)
Parties(Party_ID, Party_Details)
Assets(Asset_ID, Other_Details)
Channels(Channel_ID, Other_Details)
Finances(Finance_ID, Other_Details)
Events(Event_ID, Address_ID, Channel_ID, Event_Type_Code, Finance_ID, Location_ID, UNIQUE)
Products_in_Events(Product_in_Event_ID, Event_ID, Product_ID)
Parties_in_Events(Party_ID, Event_ID, Role_Code)
Agreements(Document_ID, Event_ID)
Assets_in_Events(Asset_ID, Event_ID)

Create a SQL request to List the names of products that are not in any event.*/


SELECT Product_Name
FROM Products
WHERE Product_ID NOT IN (SELECT Product_ID FROM Products_in_Events)

