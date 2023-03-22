/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer How many schools are there?*/


SELECT COUNT(*) FROM school

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Count the number of schools.*/


SELECT COUNT(*) FROM school

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to List the locations of schools in ascending order of enrollment.*/


SELECT Location, Enrollment 
FROM school 
ORDER BY Enrollment ASC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What is the list of school locations sorted in ascending order of school enrollment?*/


SELECT Location, Enrollment 
FROM school 
ORDER BY Enrollment ASC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to List the locations of schools in descending order of founded year.*/


SELECT Location, Founded 
FROM school 
ORDER BY Founded DESC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What is the list of school locations sorted in descending order of school foundation year?*/


SELECT Location, Founded 
FROM school 
ORDER BY Founded DESC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What are the enrollments of schools whose denomination is not "Catholic"?*/


SELECT Enrollment 
FROM school 
WHERE Denomination != 'Catholic'

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to List the enrollment for each school that does not have "Catholic" as denomination.*/


SELECT School, Enrollment 
FROM school 
WHERE Denomination != 'Catholic'

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What is the average enrollment of schools?*/


SELECT AVG(Enrollment)
FROM school

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Take the average of the school enrollment.*/


SELECT AVG(Enrollment) FROM school

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What are the teams of the players, sorted in ascending alphabetical order?*/


SELECT Team 
FROM player 
ORDER BY Team ASC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Find the team of each player and sort them in ascending alphabetical order.*/


SELECT Player, Team 
FROM player 
ORDER BY Team ASC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer How many different positions of players are there?*/


SELECT COUNT(DISTINCT Position) 
FROM player

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Count the number of distinct player positions.*/


SELECT COUNT(DISTINCT Position) FROM player

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Find the team of the player of the highest age.*/


SELECT Team 
FROM player 
WHERE Age = (SELECT MAX(Age) FROM player)

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer Which team has the oldest player?*/


SELECT Team
FROM player
WHERE Age = (SELECT MAX(Age) FROM player)
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to List the teams of the players with the top 5 largest ages.*/


SELECT Team 
FROM player 
WHERE Age IN (SELECT MAX(Age) 
              FROM player 
              GROUP BY Team 
              ORDER BY Age DESC 
              LIMIT 5) 
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What are the teams that have the 5 oldest players?*/


SELECT Team
FROM player
WHERE Age IN (SELECT MAX(Age) FROM player GROUP BY Team ORDER BY Age DESC LIMIT 5)
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to For each player, show the team and the location of school they belong to.*/


SELECT p.Player, p.Team, s.Location 
FROM player p 
INNER JOIN school s 
ON p.School_ID = s.School_ID

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What are the team and the location of school each player belongs to?*/


SELECT p.Player, s.School, s.Location
FROM player p
INNER JOIN school s
ON p.School_ID = s.School_ID

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Show the locations of schools that have more than 1 player.*/


SELECT Location 
FROM school 
WHERE School_ID IN (SELECT School_ID 
                    FROM player 
                    GROUP BY School_ID 
                    HAVING COUNT(*) > 1)

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Which schools have more than 1 player? Give me the school locations.*/


SELECT s.Location 
FROM school s 
INNER JOIN player p 
ON s.School_ID = p.School_ID 
GROUP BY s.Location 
HAVING COUNT(p.Player_ID) > 1

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Show the denomination of the school that has the most players.*/


SELECT s.Denomination, COUNT(p.Player_ID) AS Player_Count
FROM school s
INNER JOIN player p ON s.School_ID = p.School_ID
GROUP BY s.Denomination
ORDER BY Player_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What is the denomination of the school the most players belong to?*/


SELECT Denomination, COUNT(*) AS Player_Count
FROM school
INNER JOIN player
ON school.School_ID = player.School_ID
GROUP BY Denomination
ORDER BY Player_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Show locations and nicknames of schools.*/


SELECT s.Location, sd.Nickname
FROM school s
INNER JOIN school_details sd
ON s.School_ID = sd.School_ID

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What are the location and nickname of each school?*/


SELECT s.Location, sd.Nickname
FROM school s
INNER JOIN school_details sd
ON s.School_ID = sd.School_ID

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Please show different denominations and the corresponding number of schools.*/


SELECT Denomination, COUNT(*) AS 'Number of Schools'
FROM school
GROUP BY Denomination

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to For each denomination, return the denomination and the count of schools with that denomination.*/


SELECT Denomination, COUNT(*) 
FROM school 
GROUP BY Denomination

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Please show different denominations and the corresponding number of schools in descending order.*/


SELECT Denomination, COUNT(*) AS 'Number of Schools'
FROM school
GROUP BY Denomination
ORDER BY COUNT(*) DESC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Order denominations in descending order of the count of schools with the denomination. Return each denomination with the count of schools.*/


SELECT Denomination, COUNT(*) AS Count_of_Schools
FROM school
GROUP BY Denomination
ORDER BY Count_of_Schools DESC

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to List the school color of the school that has the largest enrollment.*/


SELECT School_Colors 
FROM school 
WHERE Enrollment = (SELECT MAX(Enrollment) FROM school)

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What is the school color of the school with the largest enrollment?*/


SELECT School_Colors 
FROM school 
WHERE Enrollment = (SELECT MAX(Enrollment) FROM school)

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to List the locations of schools that do not have any player.*/


SELECT Location 
FROM school 
WHERE School_ID NOT IN (SELECT School_ID FROM player)

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Which schools do not have any player? Give me the school locations.*/


SELECT s.Location 
FROM school s 
LEFT JOIN player p 
ON s.School_ID = p.School_ID 
WHERE p.Player_ID IS NULL

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Show the denomination shared by schools founded before 1890 and schools founded after 1900*/


SELECT Denomination 
FROM school 
WHERE Founded < 1890 OR Founded > 1900

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What are the denominations used by both schools founded before 1890 and schools founded  after 1900?*/


SELECT Denomination 
FROM school 
WHERE Founded < 1890 OR Founded > 1900

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Show the nicknames of schools that are not in division 1.*/


SELECT sd.Nickname 
FROM school_details sd 
INNER JOIN school_performance sp 
ON sd.School_ID = sp.School_ID 
WHERE sp.Division != 1

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What are the nicknames of schools whose division is not 1?*/


SELECT sd.Nickname 
FROM school_details sd 
INNER JOIN school s ON s.School_ID = sd.School_ID 
WHERE sd.Division != 1

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to Show the denomination shared by more than one school.*/


SELECT Denomination 
FROM school 
GROUP BY Denomination 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

school(School_ID, School, Location, Enrollment, Founded, Denomination, Boys_or_Girls, Day_or_Boarding, Year_Entered_Competition, School_Colors)
school_details(School_ID, Nickname, Colors, League, Class, Division)
school_performance(School_Id, School_Year, Class_A, Class_AA)
player(Player_ID, Player, Team, Age, Position, School_ID)

Create a SQL request to answer What are the denomination more than one school have?*/


SELECT Denomination 
FROM school 
GROUP BY Denomination 
HAVING COUNT(School_ID) > 1

