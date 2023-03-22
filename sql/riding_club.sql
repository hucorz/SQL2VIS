/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to answer How many players are there?*/


SELECT COUNT(*) FROM player

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to List the names of players in ascending order of votes.*/


SELECT Player_name 
FROM player 
ORDER BY Votes ASC

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to answer What are the gender and occupation of players?*/


SELECT Player_name, Gender, Occupation FROM player

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to List the name and residence for players whose occupation is not "Researcher".*/


SELECT Player_name, Residence
FROM player
WHERE Occupation != 'Researcher'

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Show the names of sponsors of players whose residence is either "Brandon" or "Birtle".*/


SELECT Sponsor_name 
FROM player 
WHERE Residence IN ('Brandon', 'Birtle')

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to answer What is the name of the player with the largest number of votes?*/


SELECT Player_name
FROM player
ORDER BY Votes DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Show different occupations along with the number of players in each occupation.*/


SELECT Occupation, COUNT(Player_ID) AS Number_of_Players
FROM player
GROUP BY Occupation

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Please show the most common occupation of players.*/


SELECT Occupation, COUNT(*) AS Occurrence
FROM player
GROUP BY Occupation
ORDER BY Occurrence DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Show the residences that have at least two players.*/


SELECT Residence
FROM player
GROUP BY Residence
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Show the names of players and names of their coaches.*/


SELECT p.Player_name, c.Coach_name
FROM player p
INNER JOIN player_coach pc ON p.Player_ID = pc.Player_ID
INNER JOIN coach c ON pc.Coach_ID = c.Coach_ID

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Show the names of players coached by the rank 1 coach.*/


SELECT Player_name 
FROM player 
INNER JOIN player_coach 
ON player.Player_ID = player_coach.Player_ID 
INNER JOIN coach 
ON player_coach.Coach_ID = coach.Coach_ID 
WHERE coach.Rank = 1

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Show the names and genders of players with a coach starting after 2011.*/


SELECT Player_name, Gender 
FROM player 
INNER JOIN player_coach 
ON player.Player_ID = player_coach.Player_ID 
INNER JOIN coach 
ON player_coach.Coach_ID = coach.Coach_ID 
WHERE Starting_year > 2011

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Show the names of players and names of their coaches in descending order of the votes of players.*/


SELECT Player_name, Coach_name
FROM player
INNER JOIN player_coach ON player.Player_ID = player_coach.Player_ID
INNER JOIN coach ON player_coach.Coach_ID = coach.Coach_ID
ORDER BY Votes DESC

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to List the names of players that do not have coaches.*/


SELECT Player_name 
FROM player 
WHERE Player_ID NOT IN (SELECT Player_ID FROM player_coach)

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to Show the residences that have both a player of gender "M" and a player of gender "F".*/


SELECT DISTINCT Residence 
FROM player 
WHERE Gender = 'M' 
AND Residence IN (SELECT Residence 
                  FROM player 
                  WHERE Gender = 'F')

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to How many coaches does each club has? List the club id, name and the number of coaches.*/


SELECT c.Club_ID, c.Club_name, COUNT(pc.Coach_ID) AS 'Number of Coaches'
FROM club c
INNER JOIN player_coach pc ON c.Club_ID = pc.Club_ID
GROUP BY c.Club_ID, c.Club_name

/*Here are Mysql tables, with their properties:

player(Player_ID, Sponsor_name, Player_name, Gender, Residence, Occupation, Votes, Rank)
club(Club_ID, Club_name, Region, Start_year)
coach(Coach_ID, Coach_name, Gender, Club_ID, Rank)
player_coach(Player_ID, Coach_ID, Starting_year)
match_result(Rank, Club_ID, Gold, Big_Silver, Small_Silver, Bronze, Points)

Create a SQL request to answer How many gold medals has the club with the most coaches won?*/


SELECT Club_ID, COUNT(Gold) AS Gold_Medals
FROM match_result
INNER JOIN club ON match_result.Club_ID = club.Club_ID
INNER JOIN coach ON coach.Club_ID = club.Club_ID
GROUP BY Club_ID
ORDER BY COUNT(Gold) DESC
LIMIT 1

