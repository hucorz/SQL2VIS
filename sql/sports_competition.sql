/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer How many clubs are there?*/


SELECT COUNT(*) FROM club

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What is the total number of clubs?*/


SELECT COUNT(*) FROM club

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List the distinct region of clubs in ascending alphabetical order.*/


SELECT DISTINCT Region FROM club ORDER BY Region ASC

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the different regions of clubs in ascending alphabetical order?*/


SELECT DISTINCT Region FROM club ORDER BY Region ASC

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What is the average number of gold medals for clubs?*/


SELECT AVG(Gold)
FROM club_rank

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What is the average number of gold medals for a club?*/


SELECT AVG(Gold)
FROM club_rank

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the types and countries of competitions?*/


SELECT Competition_type, Country FROM competition

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the types of every competition and in which countries are they located?*/


SELECT Competition_type, Country
FROM competition

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the distinct years in which the competitions type is not "Tournament"?*/


SELECT DISTINCT Year 
FROM competition 
WHERE Competition_type != 'Tournament'

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the different years for all competitions that are not of type equal to tournament?*/


SELECT DISTINCT Year 
FROM competition 
WHERE Competition_type != 'Tournament'

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to What are the maximum and minimum number of silver medals for clubs.*/


SELECT MAX(Silver) AS Max_Silver, MIN(Silver) AS Min_Silver
FROM club_rank

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the maximum and minimum number of silver medals for all the clubs?*/


SELECT MAX(Silver) AS Max_Silver, MIN(Silver) AS Min_Silver
FROM club_rank

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer How many clubs have total medals less than 10?*/


SELECT COUNT(*) 
FROM club_rank 
WHERE Total < 10

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What is the total number of clubs that have less than 10 medals in total?*/


SELECT COUNT(*) 
FROM club c 
INNER JOIN club_rank cr ON c.Club_ID = cr.Club_ID 
WHERE cr.Total < 10

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List all club names in ascending order of start year.*/


SELECT name, Start_year 
FROM club 
ORDER BY Start_year ASC

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the names of all the clubs starting with the oldest?*/


SELECT name 
FROM club 
ORDER BY Start_year ASC

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List all club names in descending alphabetical order.*/


SELECT name 
FROM club 
ORDER BY name DESC

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the names of all the clubs ordered in descending alphabetical order?*/


SELECT name FROM club ORDER BY name DESC

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to Please show the names and the players of clubs.*/


SELECT c.name, p.name 
FROM club c 
INNER JOIN player p 
ON c.Club_ID = p.Club_ID

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the names and players of all the clubs?*/


SELECT c.name, p.name
FROM club c
INNER JOIN player p ON c.Club_ID = p.Club_ID

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to Show the names of clubs that have players with position "Right Wing".*/


SELECT c.name 
FROM club c 
INNER JOIN player p ON c.Club_ID = p.Club_ID 
WHERE p.Position = 'Right Wing'

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the names of the clubs that have players in the position of "Right Wing"?*/


SELECT c.name 
FROM club c 
INNER JOIN player p ON c.Club_ID = p.Club_ID 
WHERE p.Position = 'Right Wing'

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to What is the average points of players from club with name "AIB".*/


SELECT AVG(Points)
FROM player
WHERE Club_ID IN (SELECT Club_ID FROM club WHERE name = 'AIB')
GROUP BY Club_ID

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What is the average number of points for players from the "AIB" club?*/


SELECT AVG(Points)
FROM player
WHERE Club_ID = (SELECT Club_ID FROM club WHERE name = 'AIB')

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List the position of players and the average number of points of players of each position.*/


SELECT Position, AVG(Points) AS Average_Points
FROM player
GROUP BY Position

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer For each position, what is the average number of points for players in that position?*/


SELECT Position, AVG(Points)
FROM player
GROUP BY Position

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List the position of players with average number of points scored by players of that position bigger than 20.*/


SELECT Position, AVG(Points) AS Avg_Points
FROM player
GROUP BY Position
HAVING AVG(Points) > 20

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the positions of players whose average number of points scored by that position is larger than 20?*/


SELECT Position, AVG(Points) 
FROM player 
GROUP BY Position 
HAVING AVG(Points) > 20

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List the types of competition and the number of competitions of each type.*/


SELECT Competition_type, COUNT(Competition_ID) AS Number_of_Competitions
FROM competition
GROUP BY Competition_type

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the types of competition and number of competitions for that type?*/


SELECT Competition_type, COUNT(*) AS 'Number of Competitions'
FROM competition
GROUP BY Competition_type

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List the most common type of competition.*/


SELECT Competition_type, COUNT(*) AS Frequency
FROM competition
GROUP BY Competition_type
ORDER BY Frequency DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What is the most common competition type?*/


SELECT Competition_type, COUNT(*) AS Frequency
FROM competition
GROUP BY Competition_type
ORDER BY Frequency DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List the types of competition that have at most five competitions of that type.*/


SELECT Competition_type
FROM competition
GROUP BY Competition_type
HAVING COUNT(Competition_ID) <= 5

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the types of competition that have most 5 competitions for that type?*/


SELECT Competition_type, COUNT(*) AS 'Number of Competitions'
FROM competition
GROUP BY Competition_type
ORDER BY COUNT(*) DESC
LIMIT 5

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to List the names of clubs that do not have any players.*/


SELECT c.name 
FROM club c 
LEFT JOIN player p ON c.Club_ID = p.Club_ID 
WHERE p.Club_ID IS NULL

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the names of all clubs that do not have any players?*/


SELECT c.name 
FROM club c 
LEFT JOIN player p 
ON c.Club_ID = p.Club_ID 
WHERE p.Club_ID IS NULL

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to What are the positions with both players having more than 20 points and less than 10 points.*/


SELECT p1.Position, p2.Position
FROM player p1
INNER JOIN player p2 ON p1.Club_ID = p2.Club_ID
WHERE p1.Points > 20 AND p2.Points < 10

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the positions of both players that have more than 20 20 points and less than 10 points?*/


SELECT Player.Position 
FROM Player 
WHERE Player.Points > 20 AND Player.Points < 10

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to Show total points of all players.*/


SELECT SUM(Points) AS Total_Points FROM player

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What is the total number of points for all players?*/


SELECT SUM(Points) FROM player

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer how many different positions are there?*/


SELECT COUNT(DISTINCT Position) FROM player

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer How many different position for players are listed?*/


SELECT DISTINCT Position FROM player

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to what are the name of players who get more than the average points.*/


SELECT name 
FROM player 
WHERE Points > (SELECT AVG(Points) FROM player)

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the names of all players that got more than the average number of points?*/


SELECT name 
FROM player 
WHERE Points > (SELECT AVG(Points) FROM player)

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to find the number of players whose points are lower than 30 in each position.*/


SELECT Position, COUNT(*) AS 'Number of Players'
FROM player
WHERE Points < 30
GROUP BY Position

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What is the number of players who have points less than 30 for each position?*/


SELECT Position, COUNT(*) AS 'Number of Players with Points Less Than 30'
FROM player
WHERE Points < 30
GROUP BY Position

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer which country did participated in the most number of Tournament competitions?*/


SELECT Country, COUNT(Competition_ID) AS Num_Tournaments
FROM competition
WHERE Competition_type = 'Tournament'
GROUP BY Country
ORDER BY Num_Tournaments DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer what is the name of the country that participated in the most tournament competitions?*/


SELECT Country, COUNT(*) AS Num_Competitions
FROM competition
GROUP BY Country
ORDER BY Num_Competitions DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to which countries did participated in both Friendly and Tournament type competitions.*/


SELECT Country 
FROM competition 
WHERE Competition_type IN ('Friendly', 'Tournament') 
GROUP BY Country

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the countries that participated in both friendly and tournament type competitions?*/


SELECT DISTINCT Country 
FROM competition 
WHERE Competition_type IN ('Friendly', 'Tournament')

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to Find the countries that have never participated in any competition with Friendly type.*/


SELECT Country
FROM competition
WHERE Competition_type != 'Friendly'
AND Country NOT IN (SELECT Country
                    FROM competition
                    WHERE Competition_type = 'Friendly')

/*Here are Mysql tables, with their properties:

club(Club_ID, name, Region, Start_year)
club_rank(Rank, Club_ID, Gold, Silver, Bronze, Total)
player(Player_ID, name, Position, Club_ID, Apps, Tries, Goals, Points)
competition(Competition_ID, Year, Competition_type, Country)
competition_result(Competition_ID, Club_ID_1, Club_ID_2, Score)

Create a SQL request to answer What are the countries that have never participated in any friendly-type competitions?*/


SELECT Country
FROM competition
WHERE Competition_type != 'Friendly'
GROUP BY Country
HAVING COUNT(*) = 0

