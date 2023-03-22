/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer How many aircrafts are there?*/


SELECT COUNT(Aircraft_ID) FROM aircraft

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the number of aircraft?*/


SELECT COUNT(Aircraft_ID) FROM aircraft

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to List the description of all aircrafts.*/


SELECT Description FROM aircraft

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the descriptions for the aircrafts?*/


SELECT Description FROM aircraft

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the average number of international passengers of all airports?*/


SELECT AVG(International_Passengers)
FROM airport

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the average number of international passengers for an airport?*/


SELECT AVG(International_Passengers)
FROM airport

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the number of international and domestic passengers of the airport named London "Heathrow"?*/


SELECT Airport_Name, International_Passengers, Domestic_Passengers
FROM airport
WHERE Airport_Name = 'London Heathrow'

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer How many international and domestic passengers are there in the airport London Heathrow?*/


SELECT International_Passengers, Domestic_Passengers 
FROM airport 
WHERE Airport_Name = 'London Heathrow'

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to What are the total number of Domestic Passengers of airports that contain the word "London".*/


SELECT SUM(Domestic_Passengers) 
FROM airport 
WHERE Airport_Name LIKE '%London%'

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the total number of domestic passengers at all London airports?*/


SELECT SUM(Domestic_Passengers) 
FROM airport 
WHERE Airport_Name LIKE '%London%'

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to What are the maximum and minimum number of transit passengers of all aiports.*/


SELECT MIN(Transit_Passengers) AS Min_Transit_Passengers, MAX(Transit_Passengers) AS Max_Transit_Passengers
FROM airport

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the maximum and mininum number of transit passengers for all airports?*/


SELECT MIN(Transit_Passengers) AS Min_Transit_Passengers, MAX(Transit_Passengers) AS Max_Transit_Passengers
FROM airport

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the name of pilots aged 25 or older?*/


SELECT Name 
FROM pilot 
WHERE Age >= 25

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer what is the name of every pilot who is at least 25 years old?*/


SELECT Name 
FROM pilot 
WHERE Age >= 25

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to List all pilot names in ascending alphabetical order.*/


SELECT Name FROM pilot ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names of the pilots in alphabetical order?*/


SELECT Name FROM pilot ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to List names of all pilot aged 30 or younger in descending alphabetical order.*/


SELECT Name 
FROM pilot 
WHERE Age <= 30 
ORDER BY Name DESC

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names of all pilots 30 years old or young in descending alphabetical order?*/


SELECT Name 
FROM pilot 
WHERE Age <= 30 
ORDER BY Name DESC

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to Please show the names of aircrafts associated with airport with name "London Gatwick".*/


SELECT Aircraft 
FROM aircraft 
INNER JOIN airport_aircraft ON aircraft.Aircraft_ID = airport_aircraft.Aircraft_ID 
INNER JOIN airport ON airport_aircraft.Airport_ID = airport.Airport_ID 
WHERE airport.Airport_Name = 'London Gatwick'

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names of all the aircrafts associated with London Gatwick airport?*/


SELECT Aircraft 
FROM aircraft 
INNER JOIN airport_aircraft ON aircraft.Aircraft_ID = airport_aircraft.Aircraft_ID 
INNER JOIN airport ON airport_aircraft.Airport_ID = airport.Airport_ID 
WHERE airport.Airport_Name = 'London Gatwick'

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to Please show the names and descriptions of aircrafts associated with airports that have a total number of passengers bigger than 10000000.*/


SELECT a.Aircraft, a.Description 
FROM aircraft a 
INNER JOIN airport_aircraft aa ON a.Aircraft_ID = aa.Aircraft_ID 
INNER JOIN airport ap ON aa.Airport_ID = ap.Airport_ID 
WHERE ap.Total_Passengers > 10000000

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names and descriptions of aircrafts associated with an airport that has more total passengers than 10000000?*/


SELECT a.Aircraft, a.Description 
FROM aircraft a 
INNER JOIN airport_aircraft aa ON a.Aircraft_ID = aa.Aircraft_ID 
INNER JOIN airport ap ON aa.Airport_ID = ap.Airport_ID 
WHERE ap.Total_Passengers > 10000000

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the average total number of passengers of airports that are associated with aircraft "Robinson R-22"?*/


SELECT AVG(Total_Passengers)
FROM airport a
INNER JOIN airport_aircraft aa ON a.Airport_ID = aa.Airport_ID
INNER JOIN aircraft ac ON aa.Aircraft_ID = ac.Aircraft_ID
WHERE ac.Aircraft = 'Robinson R-22'

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the average total number of passengers for all airports that the aircraft "Robinson R-22" visits?*/


SELECT AVG(Total_Passengers)
FROM airport a
INNER JOIN airport_aircraft aa ON a.Airport_ID = aa.Airport_ID
INNER JOIN aircraft ac ON aa.Aircraft_ID = ac.Aircraft_ID
WHERE ac.Aircraft = 'Robinson R-22'

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to Please list the location and the winning aircraft name.*/


SELECT m.Location, a.Aircraft 
FROM match m 
INNER JOIN aircraft a 
ON m.Winning_Aircraft = a.Aircraft_ID

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the location and name of the winning aircraft?*/


SELECT m.Location, a.Aircraft 
FROM match m 
INNER JOIN aircraft a ON m.Winning_Aircraft = a.Aircraft_ID

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to List the name of the aircraft that has been named winning aircraft the most number of times.*/


SELECT Aircraft
FROM aircraft
INNER JOIN match ON aircraft.Aircraft_ID = match.Winning_Aircraft
GROUP BY Aircraft
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the name of the aircraft that has won an award the most?*/


SELECT Winning_Aircraft, COUNT(*) AS Award_Count
FROM match
GROUP BY Winning_Aircraft
ORDER BY Award_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to List the names of aircrafts and the number of times it won matches.*/


SELECT Aircraft, COUNT(Winning_Aircraft) AS Number_of_Wins
FROM aircraft
INNER JOIN match ON aircraft.Aircraft_ID = match.Winning_Aircraft
GROUP BY Aircraft

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer For each aircraft that has won an award, what is its name and how many time has it won?*/


SELECT Aircraft, COUNT(*) AS Wins
FROM aircraft a
INNER JOIN match m ON a.Aircraft_ID = m.Winning_Aircraft
GROUP BY Aircraft

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to List names of all pilot in descending order of age.*/


SELECT Name, Age 
FROM pilot 
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names of all pilots listed by descending age?*/


SELECT Name, Age 
FROM pilot 
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to List the names of aircrafts and that won matches at least twice.*/


SELECT Aircraft 
FROM aircraft 
INNER JOIN match ON aircraft.Aircraft_ID = match.Winning_Aircraft 
GROUP BY Aircraft 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names of all aircrafts that have won a match at least twice?*/


SELECT DISTINCT Aircraft 
FROM aircraft a 
INNER JOIN match m ON a.Aircraft_ID = m.Winning_Aircraft 
GROUP BY Aircraft 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to List the names of aircrafts and that did not win any match.*/


SELECT Aircraft 
FROM aircraft 
WHERE Aircraft_ID NOT IN (SELECT Winning_Aircraft FROM match)

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names of all aicrafts that have never won any match?*/


SELECT Aircraft 
FROM aircraft 
WHERE Aircraft_ID NOT IN (SELECT Winning_Aircraft 
                          FROM match)

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to Show the names of aircrafts that are associated with both an airport named "London Heathrow" and an airport named "London Gatwick"*/


SELECT a.Aircraft 
FROM aircraft a 
INNER JOIN airport_aircraft aa ON a.Aircraft_ID = aa.Aircraft_ID 
INNER JOIN airport ap ON aa.Airport_ID = ap.Airport_ID 
WHERE ap.Airport_Name IN ('London Heathrow', 'London Gatwick')

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names of all aircrafts that are associated with both London Heathrow and Gatwick airports?*/


SELECT Aircraft 
FROM aircraft 
INNER JOIN airport_aircraft ON aircraft.Aircraft_ID = airport_aircraft.Aircraft_ID 
INNER JOIN airport ON airport_aircraft.Airport_ID = airport.Airport_ID 
WHERE airport.Airport_Name IN ('London Heathrow', 'Gatwick')

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to Show all information on the airport that has the largest number of international passengers.*/


SELECT Airport_Name, Total_Passengers, International_Passengers 
FROM airport 
WHERE International_Passengers = (SELECT MAX(International_Passengers) FROM airport)

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is all the information on the airport with the largest number of international passengers?*/


SELECT Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes
FROM airport
WHERE International_Passengers = (SELECT MAX(International_Passengers) FROM airport)

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to find the name and age of the pilot who has won the most number of times among the pilots who are younger than 30.*/


SELECT Name, Age 
FROM pilot 
INNER JOIN match ON pilot.Pilot_Id = match.Winning_Pilot 
WHERE Age < 30 
GROUP BY Name 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What is the name and age of the pilot younger than 30 who has won the most number of times?*/


SELECT Name, Age 
FROM pilot 
INNER JOIN match ON pilot.Pilot_Id = match.Winning_Pilot 
WHERE Age < 30 
GROUP BY Name 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer what is the name and age of the youngest winning pilot?*/


SELECT Name, Age 
FROM pilot 
INNER JOIN match ON pilot.Pilot_Id = match.Winning_Pilot 
ORDER BY Age ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer How old is the youngest winning pilot and what is their name?*/


SELECT Name, MIN(Age) AS Youngest_Winning_Pilot_Age
FROM pilot
INNER JOIN match ON pilot.Pilot_Id = match.Winning_Pilot
GROUP BY Name
ORDER BY Youngest_Winning_Pilot_Age ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to find the name of pilots who did not win the matches held in the country of Australia.*/


SELECT Name 
FROM pilot 
WHERE Pilot_Id NOT IN (SELECT Winning_Pilot 
                       FROM match 
                       WHERE Country = 'Australia')

/*Here are Mysql tables, with their properties:

pilot(Pilot_Id, Name, Age)
aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
airport_aircraft(ID, Airport_ID, Aircraft_ID)

Create a SQL request to answer What are the names of the pilots that have not won any matches in Australia?*/


SELECT Name
FROM pilot
WHERE Pilot_Id NOT IN (SELECT Winning_Pilot
                       FROM match
                       WHERE Country = 'Australia')

