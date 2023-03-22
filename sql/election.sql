/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer How many counties are there in total?*/


SELECT COUNT(*) FROM county

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Count the total number of counties.*/


SELECT COUNT(County_Id) FROM county

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the county name and population of all counties.*/


SELECT County_name, Population FROM county

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer What are the name and population of each county?*/


SELECT County_name, Population FROM county

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the average population of all counties.*/


SELECT AVG(Population) FROM county

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer On average how large is the population of the counties?*/


SELECT AVG(Population) FROM county

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Return the maximum and minimum population among all counties.*/


SELECT MAX(Population) AS Max_Population, MIN(Population) AS Min_Population FROM county

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer What are the maximum and minimum population of the counties?*/


SELECT MAX(Population), MIN(Population) FROM county

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show all the distinct districts for elections.*/


SELECT DISTINCT District 
FROM election

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer What are the distinct districts for elections?*/


SELECT DISTINCT District 
FROM election

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the zip code of the county with name "Howard".*/


SELECT Zip_code 
FROM county 
WHERE County_name = 'Howard'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer What is the zip code the county named "Howard" is located in?*/


SELECT Zip_code 
FROM county 
WHERE County_name = 'Howard'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the delegate from district 1 in election.*/


SELECT Delegate 
FROM election 
WHERE District = 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Who is the delegate of district 1 in the elections?*/


SELECT Delegate 
FROM election 
WHERE District = 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the delegate and committee information of elections.*/


SELECT Delegate, Committee
FROM election
WHERE 1=1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer What are the delegate and committee information for each election record?*/


SELECT Election_ID, Delegate, Committee 
FROM election

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer How many distinct governors are there?*/


SELECT COUNT(DISTINCT Governor) 
FROM party

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Count the number of distinct governors.*/


SELECT COUNT(DISTINCT Governor) FROM party

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the lieutenant governor and comptroller from the democratic party.*/


SELECT Lieutenant_Governor, Comptroller 
FROM party 
WHERE Party = 'Democratic'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Who are the lieutenant governor and comptroller from the democratic party?*/


SELECT Lieutenant_Governor, Comptroller 
FROM party 
WHERE Party = 'Democratic'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer In which distinct years was the governor "Eliot Spitzer"?*/


SELECT Year 
FROM party 
WHERE Governor = 'Eliot Spitzer'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Find the distinct years when the governor was named "Eliot Spitzer".*/


SELECT DISTINCT Year 
FROM party 
WHERE Governor = 'Eliot Spitzer'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show all the information about election.*/


SELECT * FROM election

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Return all the information for each election record.*/


SELECT * FROM election 
JOIN county ON election.Counties_Represented = county.County_Id 
JOIN party ON election.Party = party.Party_ID

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the delegates and the names of county they belong to.*/


SELECT Delegate, County_name 
FROM election 
INNER JOIN county 
ON election.Counties_Represented = county.County_Id

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer What are the delegate and name of the county they belong to, for each county?*/


SELECT county.County_name, election.Delegate 
FROM county 
INNER JOIN election 
ON county.County_Id = election.Counties_Represented

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Which delegates are from counties with population smaller than 100000?*/


SELECT Delegate 
FROM election 
INNER JOIN county ON election.Counties_Represented = county.County_Id 
WHERE county.Population < 100000

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Find the delegates who are from counties with population below 100000.*/


SELECT Delegate 
FROM election 
INNER JOIN county ON election.Counties_Represented = county.County_Id 
WHERE county.Population < 100000

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer How many distinct delegates are from counties with population larger than 50000?*/


SELECT COUNT(DISTINCT Delegate) 
FROM election 
INNER JOIN county ON election.Counties_Represented = county.County_Id 
WHERE Population > 50000

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Count the number of distinct delegates who are from counties with population above 50000.*/


SELECT COUNT(DISTINCT Delegate) 
FROM election 
INNER JOIN county ON election.Counties_Represented = county.County_Id 
WHERE Population > 50000

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer What are the names of the county that the delegates on "Appropriations" committee belong to?*/


SELECT county.County_name 
FROM county 
INNER JOIN election 
ON county.County_Id = election.Counties_Represented 
WHERE election.Committee = 'Appropriations'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Which county do the delegates on "Appropriations" committee belong to? Give me the county names.*/


SELECT County_name 
FROM county 
INNER JOIN election 
ON county.Zip_code = election.Counties_Represented 
WHERE election.Committee = 'Appropriations'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the delegates and the names of the party they belong to.*/


SELECT Delegate, Party 
FROM election 
JOIN party 
ON election.Party = party.Party

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to For each delegate, find the names of the party they are part of.*/


SELECT Delegate, Party 
FROM election 
JOIN party 
ON election.Party = party.Party

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Who were the governors of the parties associated with delegates from district 1?*/


SELECT Party, Governor 
FROM party 
INNER JOIN election 
ON party.Party_ID = election.Party 
WHERE District = 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Find the parties associated with the delegates from district 1. Who served as governors of the parties?*/


SELECT p.Party, p.Governor 
FROM party p 
INNER JOIN election e 
ON p.Party_ID = e.Party 
WHERE e.District = 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Who were the comptrollers of the parties associated with the delegates from district 1 or district 2?*/


SELECT Party, Comptroller 
FROM party 
INNER JOIN election 
ON party.Party_ID = election.Party 
WHERE election.District IN (1,2)

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Find the parties associated with the delegates from district 1 or 2. Who served as comptrollers of the parties?*/


SELECT p.Party, p.Comptroller 
FROM party p 
INNER JOIN election e 
ON p.Party_ID = e.Party 
WHERE e.District IN (1,2) 
ORDER BY p.Party

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Return all the committees that have delegates from Democratic party.*/


SELECT Committee 
FROM election 
WHERE Party = 'Democratic' 
AND Delegate IS NOT NULL

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Which committees have delegates from the Democratic party?*/


SELECT Committee 
FROM election 
WHERE Party = 'Democratic'

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the name of each county along with the corresponding number of delegates from that county.*/


SELECT county.County_name, COUNT(election.Delegate) AS 'Number of Delegates'
FROM county
INNER JOIN election ON county.County_Id = election.Counties_Represented
GROUP BY county.County_name

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to For each county, find the name of the county and the number of delegates from that county.*/


SELECT county.County_name, COUNT(election.Delegate) AS 'Number of Delegates'
FROM county
INNER JOIN election ON county.County_Id = election.Counties_Represented
GROUP BY county.County_name

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the name of each party and the corresponding number of delegates from that party.*/


SELECT Party, COUNT(Delegate) AS 'Number of Delegates'
FROM election
GROUP BY Party

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to For each party, return the name of the party and the number of delegates from that party.*/


SELECT Party, COUNT(Delegate) AS 'Number of Delegates'
FROM election
GROUP BY Party

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Return the names of all counties sorted by population in ascending order.*/


SELECT County_name 
FROM county 
ORDER BY Population ASC

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Sort the names of all counties in ascending order of population.*/


SELECT County_name 
FROM county 
ORDER BY Population ASC

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Return the names of all counties sorted by county name in descending alphabetical order.*/


SELECT County_Name 
FROM county 
ORDER BY County_Name DESC

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Sort the names of all counties in descending alphabetical order.*/


SELECT County_Name
FROM county
ORDER BY County_Name DESC

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the name of the county with the biggest population.*/


SELECT County_name 
FROM county 
ORDER BY Population DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Which county has the largest population? Give me the name of the county.*/


SELECT County_name 
FROM county 
ORDER BY Population DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the 3 counties with the smallest population.*/


SELECT County_name, Population 
FROM county 
ORDER BY Population ASC 
LIMIT 3

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to What are the 3 counties that have the smallest population? Give me the county names.*/


SELECT County_name 
FROM county 
ORDER BY Population ASC 
LIMIT 3

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the names of counties that have at least two delegates.*/


SELECT County_name 
FROM county 
INNER JOIN election 
ON county.County_Id = election.Counties_Represented 
GROUP BY County_name 
HAVING COUNT(Delegate) >= 2

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Which counties have two or more delegates? Give me the county names.*/


SELECT County_name 
FROM county 
INNER JOIN election 
ON county.County_Id = election.Counties_Represented 
GROUP BY County_name 
HAVING COUNT(Delegate) >= 2

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the name of the party that has at least two records.*/


SELECT Party 
FROM party 
GROUP BY Party 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Which party has two or more records?*/


SELECT Party 
FROM party 
GROUP BY Party 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the name of the party that has the most delegates.*/


SELECT Party, COUNT(Delegate) AS Total_Delegates
FROM election
GROUP BY Party
ORDER BY Total_Delegates DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Which party has the largest number of delegates?*/


SELECT Party, COUNT(Delegate) AS Total_Delegates
FROM election
GROUP BY Party
ORDER BY Total_Delegates DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the people that have been governor the most times.*/


SELECT Governor, COUNT(*) AS Num_Governor 
FROM party 
GROUP BY Governor 
ORDER BY Num_Governor DESC

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Which people severed as governor most frequently?*/


SELECT Governor, COUNT(*) AS Frequency 
FROM party 
GROUP BY Governor 
ORDER BY Frequency DESC

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Show the people that have been comptroller the most times and the corresponding number of times.*/


SELECT Comptroller, COUNT(Comptroller) AS Times_Comptroller 
FROM party 
GROUP BY Comptroller 
ORDER BY Times_Comptroller DESC

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Which people severed as comptroller most frequently? Give me the name of the person and the frequency count.*/


SELECT Comptroller, COUNT(Comptroller) AS Frequency_Count
FROM party
GROUP BY Comptroller
ORDER BY Frequency_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer What are the names of parties that do not have delegates in election?*/


SELECT Party 
FROM party 
WHERE Party NOT IN (SELECT Party FROM election)

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Which parties did not have any delegates in elections?*/


SELECT Party 
FROM party 
WHERE Party NOT IN (SELECT Party FROM election)

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to What are the names of parties that have both delegates on "Appropriations" committee and*/
 "Education" committee

SELECT Party 
FROM election 
WHERE Committee IN ('Appropriations', 'Education') 
GROUP BY Party 
HAVING COUNT(DISTINCT Delegate) = 2

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Which parties have delegates in both the "Appropriations" committee and the "Economic Matters" committee?*/


SELECT DISTINCT Party 
FROM election 
WHERE Committee IN ('Appropriations', 'Economic Matters')

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to answer Which committees have delegates from both democratic party and liberal party?*/


SELECT DISTINCT Committee 
FROM election 
WHERE Party IN ('Democratic Party', 'Liberal Party')

/*Here are Mysql tables, with their properties:

county(County_Id, County_name, Population, Zip_code)
party(Party_ID, Year, Party, Governor, Lieutenant_Governor, Comptroller, Attorney_General, US_Senate)
election(Election_ID, Counties_Represented, District, Delegate, Party, First_Elected, Committee)

Create a SQL request to Find the committees that have delegates both from from the democratic party and the liberal party.*/


SELECT Committee 
FROM election 
WHERE Party IN ('Democratic', 'Liberal') 
GROUP BY Committee 
HAVING COUNT(DISTINCT Party) = 2

