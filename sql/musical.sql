/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer How many actors are there?*/


SELECT COUNT(*) FROM actor

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Count the number of actors.*/


SELECT COUNT(*) FROM actor

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to List the name of actors in ascending alphabetical order.*/


SELECT Name 
FROM actor 
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the names of actors, ordered alphabetically?*/


SELECT Name 
FROM actor 
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the characters and duration of actors?*/


SELECT Character, Duration FROM actor

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Return the characters and durations for each actor.*/


SELECT Character, Duration 
FROM actor 
ORDER BY Actor_ID

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to List the name of actors whose age is not 20.*/


SELECT Name 
FROM actor 
WHERE age != 20

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the names of actors who are not 20 years old?*/


SELECT Name 
FROM actor 
WHERE age != 20

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the characters of actors in descending order of age?*/


SELECT Character, age 
FROM actor 
ORDER BY age DESC

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Return the characters for actors, ordered by age descending.*/


SELECT Character 
FROM actor 
ORDER BY age DESC

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What is the duration of the oldest actor?*/


SELECT MAX(Duration) 
FROM actor 
ORDER BY age DESC

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Return the duration of the actor with the greatest age.*/


SELECT MAX(age) AS MaxAge, Duration 
FROM actor 
GROUP BY Duration 
ORDER BY MaxAge DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the names of musicals with nominee "Bob Fosse"?*/


SELECT Name 
FROM musical 
WHERE Nominee = 'Bob Fosse'

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Return the names of musicals who have the nominee Bob Fosse.*/


SELECT Name 
FROM musical 
WHERE Nominee = 'Bob Fosse'

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the distinct nominees of the musicals with the award that is not "Tony Award"?*/


SELECT DISTINCT Nominee 
FROM musical 
WHERE Award != 'Tony Award'

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Return the different nominees of musicals that have an award that is not the Tony Award.*/


SELECT DISTINCT Nominee 
FROM musical 
WHERE Award != 'Tony Award'

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Show names of actors and names of musicals they are in.*/


SELECT a.Name AS Actor_Name, m.Name AS Musical_Name
FROM musical m
INNER JOIN actor a ON m.Musical_ID = a.Musical_ID

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the names of actors and the musicals that they are in?*/


SELECT a.Name AS Actor_Name, m.Name AS Musical_Name
FROM musical m
INNER JOIN actor a ON m.Musical_ID = a.Musical_ID

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Show names of actors that have appeared in musical with name "The Phantom of the Opera".*/


SELECT a.Name 
FROM musical m 
INNER JOIN actor a 
ON m.Musical_ID = a.Musical_ID 
WHERE m.Name = 'The Phantom of the Opera'

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the names of actors who have been in the musical titled The Phantom of the Opera?*/


SELECT a.Name 
FROM musical m 
INNER JOIN actor a 
ON m.Musical_ID = a.Musical_ID 
WHERE m.Name = 'The Phantom of the Opera'

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Show names of actors in descending order of the year their musical is awarded.*/


SELECT a.Name 
FROM musical m 
INNER JOIN actor a 
ON m.Musical_ID = a.Musical_ID 
ORDER BY m.Year DESC

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the names of actors ordered descending by the year in which their musical was awarded?*/


SELECT a.Name 
FROM musical m 
INNER JOIN actor a 
ON m.Musical_ID = a.Musical_ID 
ORDER BY m.Year DESC

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Show names of musicals and the number of actors who have appeared in the musicals.*/


SELECT m.Name, COUNT(a.Actor_ID) AS Number_of_Actors
FROM musical m
INNER JOIN actor a ON m.Musical_ID = a.Musical_ID
GROUP BY m.Name

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer How many actors have appeared in each musical?*/


SELECT Musical_ID, COUNT(Actor_ID) AS 'Number of Actors'
FROM actor
GROUP BY Musical_ID

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Show names of musicals which have at least three actors.*/


SELECT m.Name 
FROM musical m 
INNER JOIN actor a ON m.Musical_ID = a.Musical_ID 
GROUP BY m.Name 
HAVING COUNT(a.Actor_ID) >= 3

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the names of musicals who have at 3 or more actors?*/


SELECT Name 
FROM musical 
WHERE Musical_ID IN (SELECT Musical_ID 
                     FROM actor 
                     GROUP BY Musical_ID 
                     HAVING COUNT(*) >= 3)

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Show different nominees and the number of musicals they have been nominated.*/


SELECT Nominee, COUNT(*) AS 'Number of Musicals Nominated'
FROM musical
GROUP BY Nominee

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer How many musicals has each nominee been nominated for?*/


SELECT Nominee, COUNT(*) AS 'Number of Musicals Nominated For'
FROM musical
GROUP BY Nominee

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Please show the nominee who has been nominated the greatest number of times.*/


SELECT Nominee, COUNT(*) AS Nomination_Count
FROM musical
GROUP BY Nominee
ORDER BY Nomination_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer Who is the nominee who has been nominated for the most musicals?*/


SELECT Nominee, COUNT(*) AS Num_Nominations
FROM musical
GROUP BY Nominee
ORDER BY Num_Nominations DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to List the most common result of the musicals.*/


SELECT Result, COUNT(*) AS Frequency
FROM musical
GROUP BY Result
ORDER BY Frequency DESC

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Return the most frequent result across all musicals.*/


SELECT Result, COUNT(Result) AS Frequency
FROM musical
GROUP BY Result
ORDER BY Frequency DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to List the nominees that have been nominated more than two musicals.*/


SELECT Name 
FROM actor 
GROUP BY Name 
HAVING COUNT(Musical_ID) > 2

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer Who are the nominees who have been nominated more than two times?*/


SELECT Nominee 
FROM musical 
GROUP BY Nominee 
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to List the name of musicals that do not have actors.*/


SELECT Name 
FROM musical 
WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor)

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer What are the names of musicals who have no actors?*/


SELECT Name 
FROM musical 
WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor)

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Show the nominees that have nominated musicals for both "Tony Award" and "Drama Desk Award".*/


SELECT DISTINCT Nominee 
FROM musical 
WHERE Award IN ('Tony Award', 'Drama Desk Award')

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer Who are the nominees who have been nominated for both a Tony Award and a Drama Desk Award?*/


SELECT DISTINCT Nominee 
FROM musical 
WHERE Award IN ('Tony Award', 'Drama Desk Award')

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to Show the musical nominee with award "Bob Fosse" or "Cleavant Derricks".*/


SELECT Name 
FROM musical 
WHERE Award = 'Bob Fosse' OR Award = 'Cleavant Derricks'

/*Here are Mysql tables, with their properties:

musical(Musical_ID, Name, Year, Award, Category, Nominee, Result)
actor(Actor_ID, Name, Musical_ID, Character, Duration, age)

Create a SQL request to answer Who are the nominees who were nominated for either of the Bob Fosse or Cleavant Derricks awards?*/


SELECT Nominee 
FROM musical 
WHERE Award IN ('Bob Fosse', 'Cleavant Derricks')

