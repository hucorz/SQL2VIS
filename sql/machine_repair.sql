/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer How many technicians are there?*/


SELECT COUNT(*) FROM technician

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What is the number of technicians?*/


SELECT COUNT(*) FROM technician

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to List the names of technicians in ascending order of age.*/


SELECT Name, Age 
FROM technician 
ORDER BY Age ASC

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the names of the technicians by ascending order of age?*/


SELECT Name, Age 
FROM technician 
ORDER BY Age ASC

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the team and starting year of technicians?*/


SELECT Team, Starting_Year FROM technician

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What is the team and starting year for each technician?*/


SELECT Name, Team, Starting_Year 
FROM technician

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to List the name of technicians whose team is not "NYY".*/


SELECT Name 
FROM technician 
WHERE Team != 'NYY'

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What is the name of the technician whose team is not 'NYY'?*/


SELECT Name 
FROM technician 
WHERE Team != 'NYY'

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Show the name of technicians aged either 36 or 37*/


SELECT Name 
FROM technician 
WHERE Age = 36 OR Age = 37

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the names of the technicians aged either 36 or 37?*/


SELECT Name 
FROM technician 
WHERE Age = 36 OR Age = 37

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What is the starting year of the oldest technicians?*/


SELECT Starting_Year 
FROM technician 
ORDER BY Starting_Year ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What is the starting year for the oldest technician?*/


SELECT Starting_Year 
FROM technician 
ORDER BY Age DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Show different teams of technicians and the number of technicians in each team.*/


SELECT Team, COUNT(*) AS 'Number of Technicians'
FROM technician
GROUP BY Team

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer For each team, how many technicians are there?*/


SELECT Team, COUNT(*) AS 'Number of Technicians'
FROM technician
GROUP BY Team

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Please show the team that has the most number of technicians.*/


SELECT Team, COUNT(*) AS Technician_Count
FROM technician
GROUP BY Team
ORDER BY Technician_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the teams with the most technicians?*/


SELECT Team, COUNT(*) AS Technician_Count
FROM technician
GROUP BY Team
ORDER BY Technician_Count DESC

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Show the team that have at least two technicians.*/


SELECT Team 
FROM technician 
GROUP BY Team 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What is the team with at least 2 technicians?*/


SELECT Team
FROM technician
GROUP BY Team
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Show names of technicians and series of machines they are assigned to repair.*/


SELECT t.Name, m.Machine_series
FROM technician t
INNER JOIN repair_assignment ra ON t.technician_id = ra.technician_id
INNER JOIN machine m ON ra.Machine_ID = m.Machine_ID

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the names of technicians and the machine series that they repair?*/


SELECT technician.Name, machine.Machine_series
FROM technician
INNER JOIN repair_assignment ON technician.technician_id = repair_assignment.technician_id
INNER JOIN machine ON repair_assignment.Machine_ID = machine.Machine_ID

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Show names of technicians in ascending order of quality rank of the machine they are assigned.*/


SELECT t.Name 
FROM technician t 
INNER JOIN repair_assignment ra ON t.technician_id = ra.technician_id 
INNER JOIN machine m ON ra.Machine_ID = m.Machine_ID 
ORDER BY m.quality_rank ASC

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the names of the technicians by ascending order of quality rank for the machine they are assigned?*/


SELECT t.Name 
FROM technician t 
INNER JOIN repair_assignment ra ON t.technician_id = ra.technician_id 
INNER JOIN machine m ON ra.Machine_ID = m.Machine_ID 
ORDER BY m.quality_rank ASC

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Show names of technicians who are assigned to repair machines with value point more than 70.*/


SELECT t.Name 
FROM technician t 
INNER JOIN repair_assignment ra ON t.technician_id = ra.technician_id 
INNER JOIN machine m ON ra.Machine_ID = m.Machine_ID 
WHERE m.value_points > 70

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the names of the technicians that are assigned to repair machines with more point values than 70?*/


SELECT t.Name 
FROM technician t 
INNER JOIN repair_assignment ra 
ON t.technician_id = ra.technician_id 
INNER JOIN machine m 
ON ra.Machine_ID = m.Machine_ID 
WHERE m.value_points > 70

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Show names of technicians and the number of machines they are assigned to repair.*/


SELECT technician.Name, COUNT(repair_assignment.Machine_ID) AS 'Number of Machines Assigned'
FROM technician
INNER JOIN repair_assignment
ON technician.technician_id = repair_assignment.technician_id
GROUP BY technician.Name

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the names of the technicians  and how many machines are they assigned to repair?*/


SELECT t.Name, COUNT(r.Machine_ID) AS 'Number of Machines Assigned'
FROM technician t
INNER JOIN repair_assignment r ON t.technician_id = r.technician_id
GROUP BY t.Name

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to List the names of technicians who have not been assigned to repair machines.*/


SELECT Name 
FROM technician 
WHERE technician_id NOT IN (SELECT technician_id FROM repair_assignment)

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the names of the technicians that have not been assigned to repair machines?*/


SELECT Name 
FROM technician 
WHERE technician_id NOT IN (SELECT technician_id FROM repair_assignment)

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to Show the starting years shared by technicians from team "CLE" and "CWS".*/


SELECT Starting_Year 
FROM technician 
WHERE Team IN ('CLE', 'CWS')

/*Here are Mysql tables, with their properties:

repair(repair_ID, name, Launch_Date, Notes)
machine(Machine_ID, Making_Year, Class, Team, Machine_series, value_points, quality_rank)
technician(technician_id, Name, Team, Starting_Year, Age)
repair_assignment(technician_id, repair_ID, Machine_ID)

Create a SQL request to answer What are the starting years shared by the technicians from the team "CLE" or "CWS"?*/


SELECT Starting_Year 
FROM technician 
WHERE Team IN ('CLE', 'CWS')

