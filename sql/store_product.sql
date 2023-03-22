/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find all the distinct district names ordered by city area in descending.*/


SELECT DISTINCT District_name 
FROM district 
ORDER BY City_Area DESC

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the different district names in order of descending city area?*/


SELECT District_name, City_Area 
FROM district 
ORDER BY City_Area DESC

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the list of page size which have more than 3 product listed*/
 in the store

SELECT max_page_size 
FROM product 
INNER JOIN store_product 
ON product.product_id = store_product.product_id 
GROUP BY max_page_size 
HAVING COUNT(*) > 3

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the maximum page size for everything that has more than 3 products listed?*/


SELECT MAX(max_page_size) 
FROM product 
INNER JOIN store_product 
ON product.product_id = store_product.product_id 
GROUP BY store_product.store_id 
HAVING COUNT(*) > 3

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the name and population of district with population between 200000 and 2000000*/


SELECT District_name, City_Population 
FROM district 
WHERE City_Population BETWEEN 200000 AND 2000000

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the district names and city populations for all districts that between 200,000 and 2,000,000 residents?*/


SELECT District_name, City_Population
FROM district
WHERE City_Population BETWEEN 200000 AND 2000000

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the name all districts with city area greater than 10 or population larger than 100000*/


SELECT District_name 
FROM district 
WHERE City_Area > 10 OR City_Population > 100000

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the names of all districts with a city area greater than 10 or have more than 100000 people living there?*/


SELECT District_name 
FROM district 
WHERE City_Area > 10 OR City_Population > 100000

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer Which district has the largest population?*/


SELECT District_name, MAX(City_Population) 
FROM district 
GROUP BY District_name

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the name of the district with the most residents?*/


SELECT District_name 
FROM district 
ORDER BY City_Population DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer Which district has the least area?*/


SELECT District_name, MIN(City_Area) 
FROM district 
GROUP BY District_name

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the name of the district with the smallest area?*/


SELECT District_name 
FROM district 
ORDER BY City_Area ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the total population of the top 3 districts with the largest area.*/


SELECT District_name, City_Population, City_Area
FROM district
ORDER BY City_Area DESC
LIMIT 3

SELECT SUM(City_Population)
FROM district
ORDER BY City_Area DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the total number of residents for the districts with the 3 largest areas?*/


SELECT SUM(City_Population) 
FROM district 
ORDER BY City_Area DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find all types of store and number of them.*/


SELECT Type, COUNT(*) AS Number_of_Stores
FROM store
GROUP BY Type

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer For each type of store, how many of them are there?*/


SELECT Type, COUNT(*) AS 'Number of Stores'
FROM store
GROUP BY Type

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the names of all stores in Khanewal District.*/


SELECT Store_Name 
FROM store 
INNER JOIN store_district 
ON store.Store_ID = store_district.Store_ID 
INNER JOIN district 
ON store_district.District_ID = district.District_ID 
WHERE district.District_name = 'Khanewal'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the names of all the stores located in Khanewal District?*/


SELECT Store_Name 
FROM store 
INNER JOIN store_district ON store.Store_ID = store_district.Store_ID 
INNER JOIN district ON store_district.District_ID = district.District_ID 
WHERE district.District_name = 'Khanewal'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find all the stores in the district with the most population.*/


SELECT Store_Name 
FROM store 
INNER JOIN store_district ON store.Store_ID = store_district.Store_ID 
INNER JOIN district ON store_district.District_ID = district.District_ID 
ORDER BY City_Population DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the names of all the stores in the largest district by population?*/


SELECT Store_Name 
FROM store 
INNER JOIN store_district ON store.Store_ID = store_district.Store_ID 
INNER JOIN district ON store_district.District_ID = district.District_ID 
WHERE district.City_Population = (SELECT MAX(City_Population) FROM district) 
ORDER BY Store_Name

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer Which city is the headquarter of the store named "Blackville" in?*/


SELECT d.Headquartered_City 
FROM district d 
INNER JOIN store_district sd ON d.District_ID = sd.District_ID 
INNER JOIN store s ON sd.Store_ID = s.Store_ID 
WHERE s.Store_Name = 'Blackville'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What city is the headquarter of the store Blackville?*/


SELECT d.Headquartered_City 
FROM district d 
INNER JOIN store_district sd ON d.District_ID = sd.District_ID 
INNER JOIN store s ON sd.Store_ID = s.Store_ID 
WHERE s.Store_Name = 'Blackville'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the number of stores in each city.*/


SELECT d.Headquartered_City, COUNT(s.Store_ID) AS Number_of_Stores
FROM district d
INNER JOIN store_district sd ON d.District_ID = sd.District_ID
INNER JOIN store s ON sd.Store_ID = s.Store_ID
GROUP BY d.Headquartered_City

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer How many stores are headquarted in each city?*/


SELECT Headquartered_City, COUNT(Store_ID) AS Number_of_Stores
FROM district
INNER JOIN store_district ON district.District_ID = store_district.District_ID
INNER JOIN store ON store_district.Store_ID = store.Store_ID
GROUP BY Headquartered_City

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the city with the most number of stores.*/


SELECT Headquartered_City, COUNT(Store_ID) AS Store_Count
FROM district
INNER JOIN store_district ON district.District_ID = store_district.District_ID
INNER JOIN store ON store_district.Store_ID = store.Store_ID
GROUP BY Headquartered_City
ORDER BY Store_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the city with the most number of flagship stores?*/


SELECT Headquartered_City, COUNT(*) AS 'Number of Flagship Stores'
FROM district d
INNER JOIN store_district sd ON d.District_ID = sd.District_ID
INNER JOIN store s ON sd.Store_ID = s.Store_ID
WHERE s.Type = 'Flagship'
GROUP BY Headquartered_City
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the average pages per minute color?*/


SELECT AVG(pages_per_minute_color)
FROM product

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the average number of pages per minute color?*/


SELECT AVG(pages_per_minute_color)
FROM product

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What products are available at store named "Miramichi"?*/


SELECT product.product 
FROM product 
INNER JOIN store_product 
ON product.product_id = store_product.product_id 
INNER JOIN store 
ON store_product.store_id = store.store_id 
WHERE store.store_name = 'Miramichi'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What products are sold at the store named Miramichi?*/


SELECT product 
FROM product 
INNER JOIN store_product 
ON product.product_id = store_product.product_id 
INNER JOIN store 
ON store_product.store_id = store.store_id 
WHERE store.store_name = 'Miramichi'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find products with max page size as "A4" and pages per minute color smaller than 5.*/


SELECT product_id, product, max_page_size, pages_per_minute_color 
FROM product 
WHERE max_page_size = 'A4' AND pages_per_minute_color < 5

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the products with the maximum page size A4 that also have a pages per minute color smaller than 5?*/


SELECT product 
FROM product 
WHERE max_page_size = 'A4' 
AND pages_per_minute_color < 5

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find products with max page size as "A4" or pages per minute color smaller than 5.*/


SELECT product.* 
FROM product 
WHERE product.max_page_size = 'A4' OR product.pages_per_minute_color < 5

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the products with the maximum page size eqal to A4 or a pages per minute color less than 5?*/


SELECT product 
FROM product 
WHERE max_page_size = 'A4' OR pages_per_minute_color < 5

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find all the product whose name contains the word "Scanner".*/


SELECT product 
FROM product 
WHERE product LIKE '%Scanner%'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are all of the products whose name includes the substring "Scanner"?*/


SELECT product 
FROM product 
WHERE product LIKE '%Scanner%'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the most prominent max page size among all the products.*/


SELECT MAX(max_page_size)
FROM product

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the most common maximum page size?*/


SELECT MAX(max_page_size) AS Most_Common_Max_Page_Size
FROM product
GROUP BY max_page_size
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the name of the products that are not using the most frequently-used max page size.*/


SELECT product 
FROM product 
WHERE max_page_size NOT IN (SELECT MAX(max_page_size) 
                            FROM product 
                            GROUP BY max_page_size 
                            ORDER BY COUNT(*) DESC 
                            LIMIT 1)

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the names of all products that are not the most frequently-used maximum page size?*/


SELECT product 
FROM product 
WHERE max_page_size != (SELECT MAX(max_page_size) 
                        FROM product 
                        GROUP BY max_page_size 
                        ORDER BY COUNT(*) DESC 
                        LIMIT 1)

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the total population of the districts where the area is bigger than the average city area.*/


SELECT SUM(City_Population) 
FROM district 
WHERE City_Area > (SELECT AVG(City_Area) FROM district)

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What is the total population for all the districts that have an area larger tahn the average city area?*/


SELECT SUM(City_Population)
FROM district
WHERE City_Area > (SELECT AVG(City_Area) FROM district)

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to Find the names of districts where have both city mall and village store type stores.*/


SELECT d.District_name 
FROM district d 
INNER JOIN store_district sd ON d.District_ID = sd.District_ID 
INNER JOIN store s ON sd.Store_ID = s.Store_ID 
WHERE s.Type = 'City Mall' OR s.Type = 'Village Store'

/*Here are Mysql tables, with their properties:

product(product_id, product, dimensions, dpi, pages_per_minute_color, max_page_size, interface)
store(Store_ID, Store_Name, Type, Area_size, Number_of_product_category, Ranking)
district(District_ID, District_name, Headquartered_City, City_Population, City_Area)
store_product(Store_ID, Product_ID)
store_district(Store_ID, District_ID)

Create a SQL request to answer What are the names of the districts that have both mall and village store style shops?*/


SELECT DISTINCT d.District_name 
FROM district d 
INNER JOIN store_district sd ON d.District_ID = sd.District_ID 
INNER JOIN store s ON sd.Store_ID = s.Store_ID 
WHERE s.Type IN ('Mall', 'Village')

