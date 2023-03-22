/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer How many wrestlers are there?*/


SELECT COUNT(*) FROM wrestler

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Count the number of wrestlers.*/


SELECT COUNT(Wrestler_ID) FROM wrestler

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to List the names of wrestlers in descending order of days held.*/


SELECT Name 
FROM wrestler 
ORDER BY Days_held DESC

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the names of the wrestlers, ordered descending by days held?*/


SELECT Name, Days_held 
FROM wrestler 
ORDER BY Days_held DESC

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What is the name of the wrestler with the fewest days held?*/


SELECT Name 
FROM wrestler 
ORDER BY Days_held ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Return the name of the wrestler who had the lowest number of days held.*/


SELECT Name 
FROM wrestler 
ORDER BY Days_held ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the distinct reigns of wrestlers whose location is not "Tokyo,Japan" ?*/


SELECT DISTINCT Reign 
FROM wrestler 
WHERE Location != 'Tokyo,Japan'

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Give the different reigns of wrestlers who are not located in Tokyo, Japan.*/


SELECT DISTINCT Reign 
FROM wrestler 
WHERE Location != 'Tokyo, Japan'

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the names and location of the wrestlers?*/


SELECT Name, Location FROM wrestler

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Give the names and locations of all wrestlers.*/


SELECT Name, Location FROM wrestler

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the elimination moves of wrestlers whose team is "Team Orton"?*/


SELECT Elimination_Move 
FROM Elimination 
WHERE Team = 'Team Orton'

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Return the elimination movies of wrestlers on Team Orton.*/


SELECT Elimination_Move 
FROM Elimination 
WHERE Team = 'Orton' 
ORDER BY Elimination_Move

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the names of wrestlers and the elimination moves?*/


SELECT Name, Elimination_Move 
FROM wrestler 
INNER JOIN Elimination 
ON wrestler.Wrestler_ID = Elimination.Wrestler_ID

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Give the names of wrestlers and their elimination moves.*/


SELECT Name, Elimination_Move
FROM wrestler
INNER JOIN Elimination
ON wrestler.Wrestler_ID = Elimination.Wrestler_ID

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to List the names of wrestlers and the teams in elimination in descending order of days held.*/


SELECT Name, Team
FROM wrestler
INNER JOIN Elimination
ON wrestler.Wrestler_ID = Elimination.Wrestler_ID
ORDER BY Days_held DESC

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the names of wrestlers and their teams in elimination, ordered descending by days held?*/


SELECT Name, Team
FROM wrestler
INNER JOIN Elimination
ON wrestler.Wrestler_ID = Elimination.Wrestler_ID
ORDER BY Days_held DESC

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to List the time of elimination of the wrestlers with largest days held.*/


SELECT Elimination.Time 
FROM Elimination 
INNER JOIN Wrestler 
ON Elimination.Wrestler_ID = Wrestler.Wrestler_ID 
WHERE Wrestler.Days_held = (SELECT MAX(Days_held) FROM Wrestler) 
ORDER BY Elimination.Time

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What is the time of elimination for the wrestler with the most days held?*/


SELECT MAX(Days_held) AS Most_Days_Held, Elimination_Move, Time
FROM wrestler
INNER JOIN Elimination
ON wrestler.Wrestler_ID = Elimination.Wrestler_ID
GROUP BY Elimination_Move, Time
ORDER BY Most_Days_Held DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Show times of elimination of wrestlers with days held more than 50.*/


SELECT Elimination.Time 
FROM Elimination 
INNER JOIN wrestler 
ON Elimination.Wrestler_ID = wrestler.Wrestler_ID 
WHERE wrestler.Days_held > 50

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the times of elimination for wrestlers with over 50 days held?*/


SELECT Elimination.Time 
FROM Elimination 
INNER JOIN wrestler 
ON Elimination.Wrestler_ID = wrestler.Wrestler_ID 
WHERE wrestler.Days_held > 50

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Show different teams in eliminations and the number of eliminations from each team.*/


SELECT Team, COUNT(*) AS 'Number of Eliminations'
FROM Elimination
GROUP BY Team

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer How many eliminations did each team have?*/


SELECT Team, COUNT(Elimination_ID) AS 'Number of Eliminations'
FROM Elimination
GROUP BY Team

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Show teams that have suffered more than three eliminations.*/


SELECT Team
FROM Elimination
GROUP BY Team
HAVING COUNT(*) > 3

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer Which teams had more than 3 eliminations?*/


SELECT Team
FROM Elimination
GROUP BY Team
HAVING COUNT(*) > 3

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Show the reign and days held of wrestlers.*/


SELECT Name, Reign, Days_held
FROM wrestler

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the reigns and days held of all wrestlers?*/


SELECT Name, Reign, Days_held 
FROM wrestler

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the names of wrestlers days held less than 100?*/


SELECT Name 
FROM wrestler 
WHERE Days_held < 100

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Return the names of wrestlers with fewer than 100 days held.*/


SELECT Name 
FROM wrestler 
WHERE Days_held < 100

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Please show the most common reigns of wrestlers.*/


SELECT Reign, COUNT(*) AS Frequency
FROM wrestler
GROUP BY Reign
ORDER BY Frequency DESC

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer Which reign is the most common among wrestlers?*/


SELECT Reign, COUNT(*) AS Num_Reigns
FROM wrestler
GROUP BY Reign
ORDER BY Num_Reigns DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to List the locations that are shared by more than two wrestlers.*/


SELECT Location, COUNT(*) 
FROM wrestler 
GROUP BY Location 
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer Which locations are shared by more than two wrestlers?*/


SELECT Location, COUNT(*) 
FROM wrestler 
GROUP BY Location 
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to List the names of wrestlers that have not been eliminated.*/


SELECT Name 
FROM wrestler 
WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM Elimination)

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the names of wrestlers who have never been eliminated?*/


SELECT Name 
FROM wrestler 
WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM Elimination)

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Show the teams that have both wrestlers eliminated by "Orton" and wrestlers eliminated by "Benjamin".*/


SELECT Team 
FROM Elimination 
WHERE Eliminated_By = 'Orton' OR Eliminated_By = 'Benjamin' 
GROUP BY Team 
HAVING COUNT(DISTINCT Wrestler_ID) = 2

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the teams that have both wrestlers eliminated by Orton and wrestlers eliminated by Benjamin?*/


SELECT Team 
FROM Elimination 
WHERE Eliminated_By = 'Orton' OR Eliminated_By = 'Benjamin' 
GROUP BY Team 
HAVING COUNT(DISTINCT Wrestler_ID) > 1

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What is the number of distinct teams that suffer elimination?*/


SELECT COUNT(DISTINCT Team) 
FROM Elimination

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer How many different teams have had eliminated wrestlers?*/


SELECT COUNT(DISTINCT Team) 
FROM Elimination

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to Show the times of elimination by "Punk" or "Orton".*/


SELECT Elimination.Time 
FROM Elimination 
INNER JOIN Wrestler 
ON Elimination.Wrestler_ID = Wrestler.Wrestler_ID 
WHERE Wrestler.Name = 'Punk' OR Wrestler.Name = 'Orton'

/*Here are Mysql tables, with their properties:

wrestler(Wrestler_ID, Name, Reign, Days_held, Location, Event)
Elimination(Elimination_ID, Wrestler_ID, Team, Eliminated_By, Elimination_Move, Time)

Create a SQL request to answer What are the times of elimination for any instances in which the elimination was done by Punk or Orton?*/


SELECT Elimination.Time 
FROM Elimination 
WHERE Eliminated_By = 'Punk' OR Eliminated_By = 'Orton'

