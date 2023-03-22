/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer How many countries are there in total?*/


SELECT COUNT(*) FROM country

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Count the number of countries.*/


SELECT COUNT(Country_id) FROM country

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the country name and capital of all countries.*/


SELECT Country_name, Capital FROM country

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the names and capitals of each country?*/


SELECT Country_name, Capital FROM country

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show all official native languages that contain the word "English".*/


SELECT Official_Native_Language 
FROM country 
WHERE Official_Native_Language LIKE '%English%'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to What are the official native languages that contain the string "English".*/


SELECT Official_Native_Language 
FROM country 
WHERE Official_Native_Language LIKE '%English%'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show all distinct positions of matches.*/


SELECT DISTINCT Position FROM match_season

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the different positions for match season?*/


SELECT DISTINCT Position FROM match_season

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the players from college UCLA.*/


SELECT Player 
FROM match_season 
WHERE College = 'UCLA'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer Who are the players from UCLA?*/


SELECT Player 
FROM match_season 
WHERE College = 'UCLA'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the distinct position of players from college UCLA or Duke.*/


SELECT DISTINCT Position 
FROM match_season 
WHERE College IN ('UCLA', 'Duke')

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the different positions of players from UCLA or Duke colleges?*/


SELECT DISTINCT Position 
FROM match_season 
WHERE College IN ('UCLA', 'Duke')

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the draft pick numbers and draft classes of players whose positions are defenders.*/


SELECT Draft_Pick_Number, Draft_Class 
FROM match_season 
WHERE Position = 'Defender'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the draft pick numbers and draft classes for players who play the Defender position?*/


SELECT Draft_Pick_Number, Draft_Class 
FROM match_season 
WHERE Position = 'Defender'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer How many distinct teams are involved in match seasons?*/


SELECT COUNT(DISTINCT Team) 
FROM match_season

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Count the number of different teams involved in match season.*/


SELECT COUNT(DISTINCT Team) 
FROM match_season

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the players and the years played.*/


SELECT Player, Years_Played FROM player

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer Who are the different players and how many years has each played?*/


SELECT Player, Years_Played FROM player

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show all team names.*/


SELECT Name FROM team

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the names of all teams?*/


SELECT Name FROM team

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the season, the player, and the name of the country that player belongs to.*/


SELECT match_season.Season, match_season.Player, country.Country_name 
FROM match_season 
INNER JOIN country ON match_season.Country = country.Country_id

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer For each player, what are their name, season, and country that they belong to?*/


SELECT Player, Season, Country
FROM match_season
WHERE Player_ID = Player.Player_ID

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer Which players are from Indonesia?*/


SELECT Player 
FROM player 
INNER JOIN match_season 
ON player.Player_ID = match_season.Player 
INNER JOIN country 
ON match_season.Country = country.Country_id 
WHERE country.Country_name = 'Indonesia'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer Who are the players from Indonesia?*/


SELECT Player 
FROM match_season 
WHERE Country = 'Indonesia'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the distinct positions of the players from a country whose capital is Dublin?*/


SELECT DISTINCT Position 
FROM match_season 
WHERE Country IN (SELECT Country_name 
                  FROM country 
                  WHERE Capital = 'Dublin')

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Give the different positions of players who play for the country with the capital Dublin.*/


SELECT DISTINCT Position 
FROM match_season 
WHERE Country IN (SELECT Country_name 
                  FROM country 
                  WHERE Capital = 'Dublin')

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the official languages of the countries of players from Maryland or Duke college?*/


SELECT c.Official_native_language 
FROM country c 
INNER JOIN match_season ms ON c.Country_id = ms.Country 
INNER JOIN player p ON ms.Player = p.Player_ID 
WHERE ms.College IN ('Maryland', 'Duke') 
GROUP BY c.Official_native_language

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Return the official native languages of countries who have players from Maryland or Duke colleges.*/


SELECT c.Official_native_language 
FROM country c 
INNER JOIN match_season ms ON c.Country_id = ms.Country 
INNER JOIN player p ON ms.Player = p.Player_ID 
WHERE ms.College IN ('Maryland', 'Duke')

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to How many distinct official languages are there among countries of players whose positions are defenders.*/


SELECT COUNT(DISTINCT c.Official_native_language) 
FROM country c 
INNER JOIN match_season ms ON c.Country_id = ms.Country 
INNER JOIN player p ON ms.Player = p.Player_ID 
WHERE ms.Position = 'Defender'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Count the number of different official languages corresponding to countries that players who play Defender are from.*/


SELECT COUNT(DISTINCT c.Official_native_language) 
FROM country c 
INNER JOIN match_season ms ON c.Country_id = ms.Country 
WHERE ms.Position = 'Defender'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the season, the player, and the name of the team that players belong to.*/


SELECT match_season.Season, match_season.Player, team.Name 
FROM match_season 
INNER JOIN team ON match_season.Team = team.Team_id

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer Who are the different players, what season do they play in, and what is the name of the team they are on?*/


SELECT Player, Season, Team 
FROM match_season 
JOIN team 
ON match_season.Team = team.Team_id 
GROUP BY Player

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the positions of the players from the team with name "Ryley Goldner".*/


SELECT Position 
FROM match_season 
WHERE Team = 'Ryley Goldner' 
ORDER BY Player

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Return the positions of players on the team Ryley Goldner.*/


SELECT Position 
FROM match_season 
WHERE Team = 'Ryley Goldner' 
ORDER BY Draft_Pick_Number

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to How many distinct colleges are associated with players from the team with name "Columbus Crew".*/


SELECT COUNT(DISTINCT College) 
FROM match_season 
WHERE Team = 'Columbus Crew'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Count the number of different colleges that players who play for Columbus Crew are from.*/


SELECT COUNT(DISTINCT College) 
FROM match_season 
WHERE Team = 'Columbus Crew' 
GROUP BY Team

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the players and years played for players from team "Columbus Crew".*/


SELECT Player, Years_Played 
FROM player 
WHERE Team = 'Columbus Crew'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the players who played for Columbus Crew, and how many years did each play for?*/


SELECT Player, Years_Played 
FROM player 
WHERE Team = 'Columbus Crew' 
ORDER BY Years_Played DESC

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the position of players and the corresponding number of players.*/


SELECT Position, COUNT(*) AS Number_of_Players
FROM match_season
GROUP BY Position

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer How many players played each position?*/


SELECT Position, COUNT(Player) AS 'Number of Players'
FROM match_season
GROUP BY Position

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the country names and the corresponding number of players.*/


SELECT Country_name, COUNT(Player) 
FROM country 
INNER JOIN match_season ON country.Country_id = match_season.Country 
GROUP BY Country_name

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer How many players are from each country?*/


SELECT Country, COUNT(Player) AS 'Number of Players'
FROM match_season
GROUP BY Country

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Return all players sorted by college in ascending alphabetical order.*/


SELECT Player, College
FROM match_season
ORDER BY College ASC

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are all the players who played in match season, sorted by college in ascending alphabetical order?*/


SELECT Player, College
FROM match_season
ORDER BY College ASC

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the most common position of players in match seasons.*/


SELECT Position, COUNT(Position) AS Position_Count
FROM match_season
GROUP BY Position
ORDER BY Position_Count DESC

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What is the position that is most common among players in match seasons?*/


SELECT Position, COUNT(*) AS Count
FROM match_season
GROUP BY Position
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the top 3 most common colleges of players in match seasons.*/


SELECT College, COUNT(*) AS Count
FROM match_season
GROUP BY College
ORDER BY Count DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the three colleges from which the most players are from?*/


SELECT College, COUNT(*) AS Player_Count
FROM match_season
GROUP BY College
ORDER BY Player_Count DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the name of colleges that have at least two players.*/


SELECT College
FROM match_season
GROUP BY College
HAVING COUNT(Player) >= 2

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the names of all colleges that have two or more players?*/


SELECT College 
FROM match_season 
GROUP BY College 
HAVING COUNT(Player) >= 2

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Show the name of colleges that have at least two players in descending alphabetical order.*/


SELECT College
FROM match_season
GROUP BY College
HAVING COUNT(Player) >= 2
ORDER BY College DESC

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the names of colleges that have two or more players, listed in descending alphabetical order?*/


SELECT College
FROM match_season
GROUP BY College
HAVING COUNT(Player) >= 2
ORDER BY College DESC

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the names of teams that do no have match season record?*/


SELECT Name
FROM team
WHERE Team_id NOT IN (SELECT Team FROM match_season)

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Return the names of teams that have no match season record.*/


SELECT Name 
FROM team 
WHERE Team_id NOT IN (SELECT Team FROM match_season)

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer What are the names of countries that have both players with position forward and players with position defender?*/


SELECT Country_name 
FROM country 
WHERE Country_id IN (SELECT Country 
                     FROM match_season 
                     WHERE Position IN ('Forward', 'Defender')) 
GROUP BY Country_name

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Return the names of countries that have players that play the Forward position, as well as players who play the Defender position.*/


SELECT Country_name 
FROM country 
INNER JOIN match_season 
ON country.Country_id = match_season.Country 
WHERE match_season.Position = 'Forward' OR match_season.Position = 'Defender'

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to answer Which college have both players with position midfielder and players with position defender?*/


SELECT College 
FROM match_season 
WHERE Position IN ('Midfielder', 'Defender') 
GROUP BY College 
HAVING COUNT(DISTINCT Player) > 1

/*Here are Mysql tables, with their properties:

country(Country_id, Country_name, Capital, Official_native_language)
team(Team_id, Name)
match_season(Season, Player, Position, Country, Team, Draft_Pick_Number, Draft_Class, College)
player(Player_ID, Player, Years_Played, Total_WL, Singles_WL, Doubles_WL, Team)

Create a SQL request to Return the colleges that have players who play the Midfielder position, as well as players who play the Defender position.*/


SELECT DISTINCT College 
FROM match_season 
WHERE Position IN ('Midfielder', 'Defender')

