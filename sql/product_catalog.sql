/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the names of all the catalog entries.*/


SELECT catalog_entry_name 
FROM Catalog_Contents

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What are all the catalog entry names?*/


SELECT catalog_entry_name 
FROM Catalog_Contents

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the list of attribute data types possessed by more than 3 attribute definitions.*/


SELECT attribute_data_type
FROM Attribute_Definitions
GROUP BY attribute_data_type
HAVING COUNT(attribute_id) > 3

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What are the attribute data types with more than 3 attribute definitions?*/


SELECT attribute_data_type, COUNT(attribute_id) 
FROM Attribute_Definitions 
GROUP BY attribute_data_type 
HAVING COUNT(attribute_id) > 3

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What is the attribute data type of the attribute with name "Green"?*/


SELECT attribute_data_type 
FROM Attribute_Definitions 
WHERE attribute_name = 'Green'

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the attribute data type for the attribute named "Green".*/


SELECT attribute_data_type 
FROM Attribute_Definitions 
WHERE attribute_name = 'Green'

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the name and level of catalog structure with level between 5 and 10.*/


SELECT catalog_level_name, catalog_level_number 
FROM Catalog_Structure 
WHERE catalog_level_number BETWEEN 5 AND 10

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to What are the name and level of catalog structure with level number between 5 and 10*/


SELECT catalog_level_name, catalog_level_number 
FROM Catalog_Structure 
WHERE catalog_level_number BETWEEN 5 AND 10

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find all the catalog publishers whose name contains "Murray"*/


SELECT catalog_publisher 
FROM Catalogs 
WHERE catalog_publisher LIKE '%Murray%'

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer Which catalog publishers have substring "Murray" in their names?*/


SELECT catalog_publisher 
FROM Catalogs 
WHERE catalog_publisher LIKE '%Murray%'

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer Which catalog publisher has published the most catalogs?*/


SELECT catalog_publisher, COUNT(*) AS num_catalogs
FROM Catalogs
GROUP BY catalog_publisher
ORDER BY num_catalogs DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the catalog publisher that has the most catalogs.*/


SELECT catalog_publisher, COUNT(*) AS num_catalogs
FROM Catalogs
GROUP BY catalog_publisher
ORDER BY num_catalogs DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the names and publication dates of all catalogs that have catalog level number greater than 5.*/


SELECT catalog_name, date_of_publication 
FROM Catalogs 
INNER JOIN Catalog_Structure 
ON Catalogs.catalog_id = Catalog_Structure.catalog_id 
WHERE catalog_level_number > 5

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What are the name and publication date of the catalogs with catalog level number above 5?*/


SELECT catalog_name, date_of_publication 
FROM Catalogs 
INNER JOIN Catalog_Structure 
ON Catalogs.catalog_id = Catalog_Structure.catalog_id 
WHERE catalog_level_number > 5

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to What are the entry names of catalog with the attribute possessed by most entries.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE catalog_entry_id IN (SELECT catalog_entry_id 
                           FROM Catalog_Contents_Additional_Attributes 
                           GROUP BY attribute_id 
                           ORDER BY COUNT(*) DESC 
                           LIMIT 1)

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the entry names of the catalog with the attribute that have the most entries.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
INNER JOIN (SELECT attribute_id, COUNT(*) AS num_entries 
            FROM Catalog_Contents_Additional_Attributes 
            GROUP BY attribute_id 
            ORDER BY num_entries DESC 
            LIMIT 1) AS most_entries 
ON Catalog_Contents.catalog_entry_id = Catalog_Contents_Additional_Attributes.catalog_entry_id 
WHERE Catalog_Contents_Additional_Attributes.attribute_id = most_entries.attribute_id

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What is the entry name of the most expensive catalog (in USD)?*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE price_in_dollars = (SELECT MAX(price_in_dollars) FROM Catalog_Contents)

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the entry name of the catalog with the highest price (in USD).*/


SELECT Catalog_Contents.catalog_entry_name 
FROM Catalog_Contents 
WHERE price_in_dollars = (SELECT MAX(price_in_dollars) FROM Catalog_Contents)

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What is the level name of the cheapest catalog (in USD)?*/


SELECT cs.catalog_level_name 
FROM Catalog_Structure cs 
INNER JOIN Catalog_Contents cc 
ON cs.catalog_level_number = cc.catalog_level_number 
AND cs.catalog_id = cc.catalog_id 
WHERE cc.price_in_dollars = (SELECT MIN(price_in_dollars) FROM Catalog_Contents) 
LIMIT 1

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the level name of the catalog with the lowest price (in USD).*/


SELECT cs.catalog_level_name 
FROM Catalog_Structure cs 
INNER JOIN Catalog_Contents cc 
ON cs.catalog_level_number = cc.catalog_level_number 
AND cs.catalog_id = cc.catalog_id 
WHERE cc.price_in_dollars = (SELECT MIN(price_in_dollars) FROM Catalog_Contents) 
LIMIT 1

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What are the average and minimum price (in Euro) of all products?*/


SELECT AVG(price_in_euros) AS Average_Price_in_Euros, MIN(price_in_euros) AS Minimum_Price_in_Euros
FROM Catalog_Contents

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Give me the average and minimum price (in Euro) of the products.*/


SELECT AVG(price_in_euros) AS Average_Price_in_Euros, MIN(price_in_euros) AS Minimum_Price_in_Euros
FROM Catalog_Contents

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to What is the product with the highest height? Give me the catalog entry name.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE height = (SELECT MAX(height) FROM Catalog_Contents) 
ORDER BY height DESC

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Which catalog content has the highest height? Give me the catalog entry name.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE height = (SELECT MAX(height) FROM Catalog_Contents) 
ORDER BY height DESC

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the name of the product that has the smallest capacity.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE capacity = (SELECT MIN(capacity) FROM Catalog_Contents)

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Which catalog content has the smallest capacity? Return the catalog entry name.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE capacity = (SELECT MIN(capacity) FROM Catalog_Contents)

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the names of all the products whose stock number starts with "2".*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE product_stock_number LIKE '2%'

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Which catalog contents have a product stock number that starts from "2"? Show the catalog entry names.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE product_stock_number LIKE '2%'

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the names of catalog entries with level number 8.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE catalog_level_number = 8

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What are the names of catalog entries with level number 8?*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE catalog_level_number = 8

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the names of the products with length smaller than 3 or height greater than 5.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE length < 3 OR height > 5

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Which catalog contents have length below 3 or above 5? Find the catalog entry names.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE length < 3 OR length > 5

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the name and attribute ID of the attribute definitions with attribute value 0.*/


SELECT attribute_name, attribute_id 
FROM Attribute_Definitions 
INNER JOIN Catalog_Contents_Additional_Attributes 
ON Attribute_Definitions.attribute_id = Catalog_Contents_Additional_Attributes.attribute_id 
WHERE attribute_value = 0

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Which attribute definitions have attribute value 0? Give me the attribute name and attribute ID.*/


SELECT attribute_definitions.attribute_name, attribute_definitions.attribute_id 
FROM attribute_definitions 
INNER JOIN catalog_contents_additional_attributes 
ON attribute_definitions.attribute_id = catalog_contents_additional_attributes.attribute_id 
WHERE catalog_contents_additional_attributes.attribute_value = 0

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the name and capacity of products with price greater than 700 (in USD).*/


SELECT Catalog_Contents.catalog_entry_name, Catalog_Contents.capacity 
FROM Catalog_Contents 
WHERE Catalog_Contents.price_in_dollars > 700

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Which catalog contents has price above 700 dollars? Show their catalog entry names and capacities.*/


SELECT catalog_entry_name, capacity 
FROM Catalog_Contents 
WHERE price_in_dollars > 700

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the dates on which more than one revisions were made.*/


SELECT date_of_latest_revision, COUNT(*) 
FROM Catalogs 
GROUP BY date_of_latest_revision 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to On which days more than one revisions were made on catalogs.*/


SELECT date_of_latest_revision, COUNT(*) 
FROM Catalogs 
GROUP BY date_of_latest_revision 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer How many products are there in the records?*/


SELECT COUNT(*) 
FROM Catalog_Contents 
WHERE catalog_entry_name IS NOT NULL

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Find the total number of catalog contents.*/


SELECT COUNT(*) FROM Catalog_Contents

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to Name all the products with next entry ID greater than 8.*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE next_entry_id > 8

/*Here are Mysql tables, with their properties:

Attribute_Definitions(attribute_id, attribute_name, attribute_data_type)
Catalogs(catalog_id, catalog_name, catalog_publisher, date_of_publication, date_of_latest_revision)
Catalog_Structure(catalog_level_number, catalog_id, catalog_level_name)
Catalog_Contents(catalog_entry_id, catalog_level_number, parent_entry_id, previous_entry_id, next_entry_id, catalog_entry_name, product_stock_number, price_in_dollars, price_in_euros, price_in_pounds, capacity, length, height, width)
Catalog_Contents_Additional_Attributes(catalog_entry_id, catalog_level_number, attribute_id, attribute_value)

Create a SQL request to answer What are the catalog entry names of the products with next entry ID above 8?*/


SELECT catalog_entry_name 
FROM Catalog_Contents 
WHERE next_entry_id > 8

