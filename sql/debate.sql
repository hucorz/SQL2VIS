/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to answer How many debates are there?*/


SELECT COUNT(*) FROM debate

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to List the venues of debates in ascending order of the number of audience.*/


SELECT Venue, Num_of_Audience FROM debate ORDER BY Num_of_Audience ASC

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to answer What are the date and venue of each debate?*/


SELECT debate.Date, debate.Venue
FROM debate
ORDER BY debate.Date

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to List the dates of debates with number of audience bigger than 150*/


SELECT Date 
FROM debate 
WHERE Num_of_Audience > 150

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show the names of people aged either 35 or 36.*/


SELECT Name 
FROM people 
WHERE Age IN (35, 36)

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to answer What is the party of the youngest people?*/


SELECT Party 
FROM people 
WHERE Age = (SELECT MIN(Age) FROM people)

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show different parties of people along with the number of people in each party.*/


SELECT Party, COUNT(*) AS Num_of_People
FROM people
GROUP BY Party

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show the party that has the most people.*/


SELECT Party, COUNT(*) AS Total_People
FROM people
GROUP BY Party
ORDER BY Total_People DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show the distinct venues of debates*/


SELECT DISTINCT Venue FROM debate

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show the names of people, and dates and venues of debates they are on the affirmative side.*/


SELECT people.Name, debate.Date, debate.Venue
FROM people
INNER JOIN debate_people ON people.People_ID = debate_people.Affirmative
INNER JOIN debate ON debate_people.Debate_ID = debate.Debate_ID
WHERE debate_people.If_Affirmative_Win = 1

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show the names of people, and dates and venues of debates they are on the negative side, ordered in ascending alphabetical order of name.*/


SELECT people.Name, debate.Date, debate.Venue
FROM people
INNER JOIN debate_people ON people.People_ID = debate_people.Negative
INNER JOIN debate ON debate_people.Debate_ID = debate.Debate_ID
ORDER BY people.Name ASC

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show the names of people that are on affirmative side of debates with number of audience bigger than 200.*/


SELECT p.Name 
FROM people p 
INNER JOIN debate_people dp ON p.People_ID = dp.Affirmative 
INNER JOIN debate d ON dp.Debate_ID = d.Debate_ID 
WHERE d.Num_of_Audience > 200

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show the names of people and the number of times they have been on the affirmative side of debates.*/


SELECT people.Name, COUNT(debate_people.Affirmative) AS Num_of_Affirmative_Debates
FROM people
INNER JOIN debate_people ON people.People_ID = debate_people.Affirmative
GROUP BY people.Name

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to Show the names of people who have been on the negative side of debates at least twice.*/


SELECT Name 
FROM people 
INNER JOIN debate_people 
ON people.People_ID = debate_people.Negative 
GROUP BY Name 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

people(People_ID, District, Name, Party, Age)
debate(Debate_ID, Date, Venue, Num_of_Audience)
debate_people(Debate_ID, Affirmative, Negative, If_Affirmative_Win)

Create a SQL request to List the names of people that have not been on the affirmative side of debates.*/


SELECT Name 
FROM people 
WHERE People_ID NOT IN (SELECT Affirmative FROM debate_people)

