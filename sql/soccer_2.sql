/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the total enrollment number of all colleges?*/


SELECT SUM(enr) FROM College

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many students are enrolled in college?*/


SELECT SUM(enr) FROM College

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the average enrollment number?*/


SELECT AVG(enr) FROM College

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many students, on average, does each college have enrolled?*/


SELECT AVG(enr)
FROM College

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many colleges in total?*/


SELECT COUNT(*) FROM College

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many different colleges are there?*/


SELECT COUNT(DISTINCT cName) FROM College

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many players have more than 1000 hours of training?*/


SELECT COUNT(*) 
FROM Player 
WHERE yCard > 1000

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many different players trained for more than 1000 hours?*/


SELECT COUNT(DISTINCT pID) 
FROM Player 
WHERE yCard > 1000

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many colleges has more than 15000 students?*/


SELECT COUNT(*) 
FROM College 
WHERE enr > 15000

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the number of colleges with a student population greater than 15000?*/


SELECT COUNT(*) 
FROM College 
WHERE enr > 15000

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the average training hours of all players?*/


SELECT AVG(yCard) FROM Player

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many hours do the players train on average?*/


SELECT AVG(hours)
FROM Tryout
WHERE decision = 'Train'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the name and training hours of players whose hours are below 1500.*/


SELECT pName, yCard FROM Player WHERE yCard < 1500

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names and number of hours spent training for each player who trains for less than 1500 hours?*/


SELECT pName, enr FROM College c JOIN Tryout t ON c.cName = t.cName JOIN Player p ON t.pID = p.pID WHERE enr < 1500

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many different colleges do attend the tryout test?*/


SELECT COUNT(DISTINCT cName) 
FROM Tryout

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many different colleges were represented at tryouts?*/


SELECT COUNT(DISTINCT cName) 
FROM Tryout

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the unique types of player positions in the tryout?*/


SELECT DISTINCT pPos FROM Tryout

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the different types of player positions?*/


SELECT DISTINCT pPos FROM Tryout

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many students got accepted after the tryout?*/


SELECT COUNT(*) 
FROM Tryout 
WHERE decision = 'accepted'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many students received a yes from tryouts?*/


SELECT COUNT(*) 
FROM Tryout 
WHERE decision = 'yes'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many students whose are playing the role of goalie?*/


SELECT COUNT(*) 
FROM Tryout 
WHERE pPos = 'goalie'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the number of students playing as a goalie?*/


SELECT COUNT(*) 
FROM Tryout 
WHERE pPos = 'goalie'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the max, average and min training hours of all players.*/


SELECT MAX(yCard) AS Max_Training_Hours, AVG(yCard) AS Average_Training_Hours, MIN(yCard) AS Min_Training_Hours
FROM Player

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the average, maximum, and minimum for the number of hours spent training?*/


SELECT AVG(hours_spent_training) AS Average, MAX(hours_spent_training) AS Maximum, MIN(hours_spent_training) AS Minimum FROM Tryout

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is average enrollment of colleges in the state FL?*/


SELECT AVG(enr)
FROM College
WHERE state = 'FL'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is average number of students enrolled in Florida colleges?*/


SELECT AVG(enr)
FROM College
WHERE state = 'Florida'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of players whose training hours is between 500 and 1500?*/


SELECT pName 
FROM Player 
WHERE yCard BETWEEN 500 AND 1500

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of players who train between 500 and 1500 hours?*/


SELECT pName 
FROM Player 
WHERE yCard BETWEEN 500 AND 1500

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the players whose names contain letter 'a'.*/


SELECT pName 
FROM Player 
WHERE pName LIKE '%a%'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer Who are the players that have names containing the letter a?*/


SELECT pName 
FROM Player 
WHERE pName LIKE '%a%'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the name, enrollment of the colleges whose size is bigger than 10000 and location is in state LA.*/


SELECT cName, enr FROM College WHERE state = 'LA' AND enr > 10000

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names and enrollment numbers for colleges that have more than 10000 enrolled and are located in Louisiana?*/


SELECT cName, enr 
FROM College 
WHERE state = 'Louisiana' AND enr > 10000

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to List all information about college sorted by enrollment number in the ascending order.*/


SELECT cName, state, enr FROM College ORDER BY enr ASC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What information do you have on colleges sorted by increasing enrollment numbers?*/


SELECT cName, state, enr FROM College ORDER BY enr ASC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to List the name of the colleges whose enrollment is greater 18000 sorted by the college's name.*/


SELECT cName 
FROM College 
WHERE enr > 18000 
ORDER BY cName

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the name of every college in alphabetical order that has more than 18000 students enrolled?*/


SELECT cName 
FROM College 
WHERE enr > 18000 
ORDER BY cName ASC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the name of players whose card is yes in the descending order of training hours.*/


SELECT pName 
FROM Player 
INNER JOIN Tryout 
ON Player.pID = Tryout.pID 
WHERE yCard = 'yes' 
ORDER BY enr DESC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the name of the players who received a card in descending order of the hours of training?*/


SELECT pName 
FROM Player 
ORDER BY yCard DESC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the name of different colleges involved in the tryout in alphabetical order.*/


SELECT cName 
FROM Tryout 
ORDER BY cName ASC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the different names of the colleges involved in the tryout in alphabetical order?*/


SELECT cName 
FROM College 
INNER JOIN Tryout 
ON College.cName = Tryout.cName 
ORDER BY cName ASC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer Which position is most popular among players in the tryout?*/


SELECT pPos, COUNT(*) AS Popularity
FROM Tryout
GROUP BY pPos
ORDER BY Popularity DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What was the most popular position at tryouts?*/


SELECT pPos, COUNT(*) AS Popularity 
FROM Tryout 
GROUP BY pPos 
ORDER BY Popularity DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the number of students who participate in the tryout for each college ordered by descending count.*/


SELECT cName, COUNT(pID) AS 'Number of Students'
FROM Tryout
GROUP BY cName
ORDER BY COUNT(pID) DESC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many students participated in tryouts for each college by descennding count?*/


SELECT cName, COUNT(pID) AS 'Number of Students'
FROM Tryout
GROUP BY cName
ORDER BY COUNT(pID) DESC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is minimum hours of the students playing in different position?*/


SELECT MIN(enr) 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
INNER JOIN Player p ON t.pID = p.pID 
WHERE pPos != 'same'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer For each position, what is the minimum time students spent practicing?*/


SELECT pPos, MIN(enr)
FROM College c
JOIN Tryout t ON c.cName = t.cName
GROUP BY pPos

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of schools with the top 3 largest size?*/


SELECT cName 
FROM College 
ORDER BY enr DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of the schools with the top 3 largest class sizes?*/


SELECT cName 
FROM College 
ORDER BY enr DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the name of school that has the smallest enrollment in each state?*/


SELECT cName, MIN(enr) 
FROM College 
GROUP BY state

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the name of the school with smallest enrollment size per state?*/


SELECT cName, MIN(enr) 
FROM College 
GROUP BY state

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the states where have some college students in tryout.*/


SELECT DISTINCT state 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the different states that have students trying out?*/


SELECT DISTINCT state 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the states where have some college students in tryout and their decisions are yes.*/


SELECT DISTINCT c.state 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
WHERE t.decision = 'yes'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the different states that had students successfully try out?*/


SELECT DISTINCT state 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE decision = 'Successful' 

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the name and college of students whose decisions are yes in the tryout.*/


SELECT Player.pName, College.cName 
FROM Player 
INNER JOIN Tryout ON Player.pID = Tryout.pID 
INNER JOIN College ON Tryout.cName = College.cName 
WHERE Tryout.decision = 'yes'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of all the players who received a yes during tryouts, and also what are the names of their colleges?*/


SELECT Player.pName, College.cName 
FROM Player 
INNER JOIN Tryout ON Player.pID = Tryout.pID 
INNER JOIN College ON Tryout.cName = College.cName 
WHERE Tryout.decision = 'yes'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the name of all students who were in the tryout sorted in alphabetic order.*/


SELECT pName 
FROM Player 
INNER JOIN Tryout 
ON Player.pID = Tryout.pID 
ORDER BY pName ASC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of all students who tried out in alphabetical order?*/


SELECT pName 
FROM Player 
INNER JOIN Tryout 
ON Player.pID = Tryout.pID 
ORDER BY pName ASC

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the name and hours of the students whose tryout decision is yes.*/


SELECT pName, enr 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
INNER JOIN Player p 
ON t.pID = p.pID 
WHERE t.decision = 'yes'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names and hours spent practicing of every student who received a yes at tryouts?*/


SELECT pName, enr 
FROM College 
INNER JOIN Tryout ON College.cName = Tryout.cName 
INNER JOIN Player ON Player.pID = Tryout.pID 
WHERE decision = 'yes'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the states of the colleges that have students in the tryout who played in striker position.*/


SELECT DISTINCT c.state 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
WHERE t.pPos = 'Striker'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the states of the colleges where students who tried out for the striker position attend?*/


SELECT DISTINCT c.state 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE t.pPos = 'Striker'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the names of the students who are in the position of striker and got a yes tryout decision.*/


SELECT pName 
FROM Player 
INNER JOIN Tryout 
ON Player.pID = Tryout.pID 
WHERE Tryout.pPos = 'Striker' 
AND Tryout.decision = 'Yes'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of all students who successfully tried out for the position of striker?*/


SELECT pName 
FROM Player 
INNER JOIN Tryout 
ON Player.pID = Tryout.pID 
WHERE Tryout.pPos = 'Striker' 
AND Tryout.decision = 'Successful' 

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the state of the college which player Charles is attending.*/


SELECT c.state 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
INNER JOIN Player p ON t.pID = p.pID 
WHERE p.pName = 'Charles'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer In which state is the college that Charles attends?*/


SELECT c.state 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
INNER JOIN Player p ON t.pID = p.pID 
WHERE p.pName = 'Charles'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the average and maximum hours for the students whose tryout decision is yes.*/


SELECT AVG(enr), MAX(enr)
FROM College c
JOIN Tryout t ON c.cName = t.cName
WHERE t.decision = 'yes'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the average and maximum number of hours students who made the team practiced?*/


SELECT AVG(enr) AS Average_Hours, MAX(enr) AS Maximum_Hours
FROM College c
JOIN Tryout t ON c.cName = t.cName
WHERE t.decision = 'made team'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the average hours for the students whose tryout decision is no.*/


SELECT AVG(enr) 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE t.decision = 'No'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the average number of hours spent practicing for students who got rejected?*/


SELECT AVG(hoursPracticed) 
FROM Tryout 
JOIN Player ON Tryout.pID = Player.pID 
WHERE decision = 'Rejected'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the maximum training hours for the students whose training hours is greater than 1000 in different positions?*/


SELECT MAX(enr) 
FROM College 
WHERE enr > 1000

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer For each position, what is the maximum number of  hours for students who spent more than 1000 hours training?*/


SELECT pPos, MAX(enr) 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
INNER JOIN Player p ON t.pID = p.pID 
WHERE p.yCard > 1000 
GROUP BY pPos

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer Which colleges do the tryout players whose name starts with letter D go to?*/


SELECT cName 
FROM College 
INNER JOIN Tryout 
ON College.cName = Tryout.cName 
INNER JOIN Player 
ON Tryout.pID = Player.pID 
WHERE Player.pName LIKE 'D%'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer Which colleges does each player with a name that starts with the letter D  who tried out go to?*/


SELECT p.pName, c.cName 
FROM Player p 
INNER JOIN Tryout t ON p.pID = t.pID 
INNER JOIN College c ON t.cName = c.cName 
WHERE p.pName LIKE 'D%' AND t.decision = 'go to'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Which college has any student who is a goalie and succeeded in the tryout.*/


SELECT cName 
FROM College 
INNER JOIN Tryout 
ON College.cName = Tryout.cName 
WHERE Tryout.pPos = 'goalie' 
AND Tryout.decision = 'succeeded'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What college has a student who successfully made the team in the role of a goalie?*/


SELECT cName 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE t.pPos = 'goalie' AND t.decision = 'success'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the name of the tryout players who are from the college with largest size.*/


SELECT pName 
FROM Player 
INNER JOIN Tryout ON Player.pID = Tryout.pID 
INNER JOIN College ON Tryout.cName = College.cName 
WHERE College.enr = (SELECT MAX(enr) FROM College) 

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of all tryout participants who are from the largest college?*/


SELECT pName 
FROM Player 
INNER JOIN Tryout ON Player.pID = Tryout.pID 
INNER JOIN College ON Tryout.cName = College.cName 
WHERE College.enr = (SELECT MAX(enr) FROM College) 

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to What is the state and enrollment of the colleges where have any students who got accepted in the tryout decision.*/


SELECT c.state, c.enr 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
WHERE t.decision = 'accepted'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many students are enrolled in colleges that have student accepted during tryouts, and in which states are those colleges?*/


SELECT cName, state, enr 
FROM College 
INNER JOIN Tryout 
ON College.cName = Tryout.cName 
WHERE decision = 'accepted' 
GROUP BY cName, state, enr

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the names of either colleges in LA with greater than 15000 size or in state AZ with less than 13000 enrollment.*/


SELECT cName 
FROM College 
WHERE (state = 'LA' AND enr > 15000) OR (state = 'AZ' AND enr < 13000)

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of colleges in LA that have more than 15,000 students and of colleges in AZ with less than 13,000 students?*/


SELECT cName 
FROM College 
WHERE (state = 'LA' AND enr > 15000) OR (state = 'AZ' AND enr < 13000)

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the names of schools that have some students playing in goalie and mid positions.*/


SELECT cName 
FROM College 
INNER JOIN Tryout 
ON College.cName = Tryout.cName 
WHERE pPos IN ('goalie', 'mid') 
GROUP BY cName

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to What are the names of all schools that have students trying out for the position of goal and 'mid'-field.*/


SELECT cName 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE t.pPos IN ('goal', 'mid-field')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the names of states that have some college students playing in goalie and mid positions.*/


SELECT DISTINCT c.state 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE t.pPos IN ('goalie', 'mid')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of the states that have some college students playing in the positions of goalie and mid-field?*/


SELECT DISTINCT state 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE t.pPos IN ('goalie', 'mid-field')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to How many schools have some students playing in goalie and mid positions.*/


SELECT COUNT(DISTINCT cName) 
FROM Tryout 
WHERE pPos IN ('goalie', 'mid')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many schools have students playing in goalie and mid-field positions?*/


SELECT COUNT(DISTINCT cName) 
FROM Tryout 
WHERE pPos IN ('goalie', 'mid-field')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the names of schools that have some players in the mid position but not in the goalie position.*/


SELECT cName 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE t.pPos = 'mid' 
AND c.cName NOT IN (SELECT cName 
                    FROM Tryout 
                    WHERE pPos = 'goalie')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of the schools with some players in the mid position but no goalies?*/


SELECT cName 
FROM College 
INNER JOIN Tryout 
ON College.cName = Tryout.cName 
WHERE Tryout.pPos = 'mid' 
AND Tryout.pID NOT IN (SELECT pID FROM Tryout WHERE pPos = 'goalie') 
GROUP BY cName

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the names of states that have some college students playing in the mid position but not in the goalie position.*/


SELECT DISTINCT c.state 
FROM College c 
INNER JOIN Tryout t 
ON c.cName = t.cName 
WHERE t.pPos = 'mid' 
AND t.pID NOT IN (SELECT pID FROM Tryout WHERE pPos = 'goalie')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of all the states with college students playing in the mid position but no goalies?*/


SELECT DISTINCT c.state 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
WHERE t.pPos = 'mid' AND t.decision != 'goalie'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to How many states that have some college students playing in the mid position but not in the goalie position.*/


SELECT COUNT(DISTINCT c.state) 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
WHERE t.pPos = 'mid' 
AND t.pID NOT IN (SELECT pID FROM Tryout WHERE pPos = 'goalie')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the count of states with college students playing in the mid position but not as goalies?*/


SELECT COUNT(DISTINCT c.state) 
FROM College c 
INNER JOIN Tryout t ON c.cName = t.cName 
WHERE t.pPos = 'mid' AND t.decision != 'goalie'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find the states where have the colleges whose enrollments are less than the largest size.*/


SELECT state 
FROM College 
WHERE enr < (SELECT MAX(enr) FROM College)

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the states with colleges that have enrollments less than the some other college?*/


SELECT c1.state 
FROM College c1 
JOIN College c2 ON c1.enr < c2.enr 
GROUP BY c1.state

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find names of colleges with enrollment greater than that of some (at least one) college in the FL state.*/


SELECT cName 
FROM College 
WHERE enr > (SELECT enr FROM College WHERE state = 'FL') 
AND state != 'FL'

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of the colleges that are larger than at least one college in Florida?*/


SELECT cName 
FROM College 
WHERE enr > (SELECT enr FROM College WHERE state = 'Florida' ORDER BY enr DESC LIMIT 1)

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to Find names of all colleges whose enrollment is greater than that of all colleges in the FL state.*/


SELECT cName 
FROM College 
WHERE enr > (SELECT MAX(enr) FROM College WHERE state = 'FL')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What are the names of all colleges with a larger enrollment than the largest college in Florida?*/


SELECT cName 
FROM College 
WHERE enr > (SELECT MAX(enr) FROM College WHERE state = 'Florida')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the total number of enrollment of schools that do not have any goalie player?*/


SELECT SUM(enr) 
FROM College 
WHERE cName NOT IN (SELECT cName 
                    FROM Tryout 
                    WHERE pPos = 'goalie')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the total number of students enrolled in schools without any goalies?*/


SELECT SUM(enr) 
FROM College 
WHERE cName NOT IN (SELECT cName 
                    FROM Tryout 
                    WHERE pPos = 'goalie')

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the number of states that has some college whose enrollment is larger than the average enrollment?*/


SELECT COUNT(DISTINCT state) 
FROM College 
WHERE enr > (SELECT AVG(enr) FROM College)

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many states have a college with more students than average?*/


SELECT COUNT(DISTINCT state) 
FROM College 
WHERE enr > (SELECT AVG(enr) FROM College)

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer What is the number of states that has some colleges whose enrollment is smaller than the average enrollment?*/


SELECT COUNT(DISTINCT state) 
FROM College 
WHERE enr < (SELECT AVG(enr) FROM College)

/*Here are Mysql tables, with their properties:

College(cName, state, enr)
Player(pID, pName, yCard, HS)
Tryout(pID, cName, pPos, decision)

Create a SQL request to answer How many states have smaller colleges than average?*/


SELECT COUNT(DISTINCT state) 
FROM College 
WHERE enr < (SELECT AVG(enr) FROM College)

