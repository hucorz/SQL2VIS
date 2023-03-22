/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to answer How many pilots are there?*/


SELECT COUNT(Pilot_ID) FROM pilot

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to List the names of pilots in ascending order of rank.*/


SELECT Pilot_name 
FROM pilot 
ORDER BY Rank ASC

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to answer What are the positions and teams of pilots?*/


SELECT Position, Team FROM pilot

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to List the distinct positions of pilots older than 30.*/


SELECT DISTINCT Position 
FROM pilot 
WHERE Age > 30

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to Show the names of pilots from team "Bradley" or "Fordham".*/


SELECT Pilot_name 
FROM pilot 
WHERE Team IN ('Bradley', 'Fordham')

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to answer What is the joined year of the pilot of the highest rank?*/


SELECT Join_Year 
FROM pilot 
WHERE Rank = (SELECT MAX(Rank) FROM pilot) 
ORDER BY Join_Year DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to What are the different nationalities of pilots? Show each nationality and the number of pilots of each nationality.*/


SELECT Nationality, COUNT(*) AS 'Number of Pilots'
FROM pilot
GROUP BY Nationality

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to Show the most common nationality of pilots.*/


SELECT Nationality, COUNT(*) AS Num_Pilots
FROM pilot
GROUP BY Nationality
ORDER BY Num_Pilots DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to Show the pilot positions that have both pilots joining after year 2005 and pilots joining before 2000.*/


SELECT Position 
FROM pilot 
WHERE Join_Year > 2005 OR Join_Year < 2000

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to Show the names of pilots and models of aircrafts they have flied with.*/


SELECT p.Pilot_name, a.Model
FROM pilot p
INNER JOIN pilot_record pr ON p.Pilot_ID = pr.Pilot_ID
INNER JOIN aircraft a ON pr.Aircraft_ID = a.Aircraft_ID

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to Show the names of pilots and fleet series of the aircrafts they have flied with in ascending order of the rank of the pilot.*/


SELECT Pilot_name, Fleet_Series 
FROM pilot 
INNER JOIN pilot_record ON pilot.Pilot_ID = pilot_record.Pilot_ID 
INNER JOIN aircraft ON aircraft.Aircraft_ID = pilot_record.Aircraft_ID 
ORDER BY Rank ASC

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to Show the fleet series of the aircrafts flied by pilots younger than 34*/


SELECT Fleet_Series 
FROM aircraft 
INNER JOIN pilot_record ON aircraft.Aircraft_ID = pilot_record.Aircraft_ID 
INNER JOIN pilot ON pilot_record.Pilot_ID = pilot.Pilot_ID 
WHERE pilot.Age < 34

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to Show the names of pilots and the number of records they have.*/


SELECT Pilot_name, COUNT(Record_ID) AS Number_of_Records
FROM pilot
INNER JOIN pilot_record ON pilot.Pilot_ID = pilot_record.Pilot_ID
GROUP BY Pilot_name

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to Show names of pilots that have more than one record.*/


SELECT Pilot_name 
FROM pilot 
WHERE Pilot_ID IN (SELECT Pilot_ID 
                   FROM pilot_record 
                   GROUP BY Pilot_ID 
                   HAVING COUNT(*) > 1)

/*Here are Mysql tables, with their properties:

aircraft(Aircraft_ID, Order_Year, Manufacturer, Model, Fleet_Series, Powertrain, Fuel_Propulsion)
pilot(Pilot_ID, Pilot_name, Rank, Age, Nationality, Position, Join_Year, Team)
pilot_record(Record_ID, Pilot_ID, Aircraft_ID, Date)

Create a SQL request to List the names of pilots that do not have any record.*/


SELECT Pilot_name 
FROM pilot 
WHERE Pilot_ID NOT IN (SELECT Pilot_ID FROM pilot_record)

