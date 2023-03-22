/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer How many games are held after season 2007?*/


SELECT COUNT(*) 
FROM game 
WHERE Season > 2007

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to List the dates of games by the home team name in descending order.*/


SELECT Date 
FROM game 
ORDER BY Home_team DESC

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to List the season, home team, away team of all the games.*/


SELECT Season, Home_team, Away_team FROM game

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer What are the maximum, minimum and average home games each stadium held?*/


SELECT s.name, MAX(s.Home_Games) AS Max_Home_Games, MIN(s.Home_Games) AS Min_Home_Games, AVG(s.Home_Games) AS Avg_Home_Games
FROM stadium s
GROUP BY s.name

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer What is the average attendance of stadiums with capacity percentage higher than 100%?*/


SELECT AVG(Average_Attendance) 
FROM stadium 
WHERE Capacity_Percentage > 100

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer What are the player name, number of matches, and information source for players who do not suffer from injury of 'Knee problem'?*/


SELECT Player, Number_of_matches, Source 
FROM injury_accident 
WHERE Injury != 'Knee problem'

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer What is the season of the game which causes the player 'Walter Samuel' to get injured?*/


SELECT Season 
FROM game 
INNER JOIN injury_accident ON game.id = injury_accident.game_id 
WHERE Player = 'Walter Samuel'

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer What are the ids, scores, and dates of the games which caused at least two injury accidents?*/


SELECT game.id, game.Score, game.Date
FROM game
INNER JOIN injury_accident ON game.id = injury_accident.game_id
GROUP BY game.id
HAVING COUNT(injury_accident.id) >= 2

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer What are the id and name of the stadium where the most injury accidents happened?*/


SELECT s.id, s.name 
FROM stadium s 
INNER JOIN game g ON s.id = g.stadium_id 
INNER JOIN injury_accident i ON g.id = i.game_id 
GROUP BY s.id, s.name 
ORDER BY COUNT(i.id) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to Find the id and name of the stadium where the largest number of injury accidents occurred.*/


SELECT s.id, s.name 
FROM stadium s 
INNER JOIN game g ON s.id = g.stadium_id 
INNER JOIN injury_accident i ON g.id = i.game_id 
GROUP BY s.id, s.name 
ORDER BY COUNT(i.id) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer In which season and which stadium did any player have an injury of 'Foot injury' or 'Knee problem'?*/


SELECT g.Season, s.name 
FROM game g 
INNER JOIN stadium s ON g.stadium_id = s.id 
INNER JOIN injury_accident i ON g.id = i.game_id 
WHERE i.Injury IN ('Foot injury', 'Knee problem')

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer How many different kinds of information sources are there for injury accidents?*/


SELECT COUNT(DISTINCT Source) 
FROM injury_accident

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer How many games are free of injury accidents?*/


SELECT COUNT(*) 
FROM game 
LEFT JOIN injury_accident ON game.id = injury_accident.game_id 
WHERE injury_accident.id IS NULL

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer How many distinct kinds of injuries happened after season 2010?*/


SELECT COUNT(DISTINCT Injury) 
FROM injury_accident 
INNER JOIN game ON injury_accident.game_id = game.id 
WHERE game.Season > 2010

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to List the name of the stadium where both the player 'Walter Samuel' and the player 'Thiago Motta' got injured.*/


SELECT s.name 
FROM stadium s 
INNER JOIN game g ON s.id = g.stadium_id 
INNER JOIN injury_accident i ON g.id = i.game_id 
WHERE i.Player IN ('Walter Samuel', 'Thiago Motta')

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to Show the name, average attendance, total attendance for stadiums where no accidents happened.*/


SELECT s.name, s.Average_Attendance, s.Total_Attendance 
FROM stadium s 
LEFT JOIN game g ON s.id = g.stadium_id 
LEFT JOIN injury_accident i ON g.id = i.game_id 
WHERE i.id IS NULL

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer Which stadium name contains the substring "Bank"?*/


SELECT name 
FROM stadium 
WHERE name LIKE '%Bank%'

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to answer How many games has each stadium held?*/


SELECT s.name, COUNT(g.id) AS 'Number of Games'
FROM stadium s
INNER JOIN game g ON s.id = g.stadium_id
GROUP BY s.name

/*Here are Mysql tables, with their properties:

stadium(id, name, Home_Games, Average_Attendance, Total_Attendance, Capacity_Percentage)
game(stadium_id, id, Season, Date, Home_team, Away_team, Score, Competition)
injury_accident(game_id, id, Player, Injury, Number_of_matches, Source)

Create a SQL request to For each injury accident, find the date of the game and the name of the injured player in the game, and sort the results in descending order of game season.*/


SELECT game.Season, game.Date, injury_accident.Player 
FROM game 
INNER JOIN injury_accident ON game.id = injury_accident.game_id 
ORDER BY game.Season DESC

