/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer How many elections are there?*/


SELECT COUNT(*) FROM election

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to List the votes of elections in descending order.*/


SELECT Votes 
FROM election 
ORDER BY Votes DESC

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to List the dates and vote percents of elections.*/


SELECT Date, Vote_Percent FROM election

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What are the minimum and maximum vote percents of elections?*/


SELECT MIN(Vote_Percent) AS Min_Vote_Percent, MAX(Vote_Percent) AS Max_Vote_Percent
FROM election

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What are the names and parties of representatives?*/


SELECT Name, Party FROM representative

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What are the names of representatives whose party is not "Republican"?*/


SELECT Name 
FROM representative 
WHERE Party != 'Republican'

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What are the life spans of representatives from New York state or Indiana state?*/


SELECT r.Lifespan 
FROM representative r 
WHERE r.State IN ('New York', 'Indiana')

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to What are the names of representatives and the dates of elections they participated in.*/


SELECT representative.Name, election.Date
FROM representative
INNER JOIN election
ON representative.Representative_ID = election.Representative_ID

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What are the names of representatives with more than 10000 votes in election?*/


SELECT Name 
FROM representative 
INNER JOIN election 
ON representative.Representative_ID = election.Representative_ID 
WHERE Votes > 10000

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What are the names of representatives in descending order of votes?*/


SELECT Name 
FROM representative 
INNER JOIN election 
ON representative.Representative_ID = election.Representative_ID 
ORDER BY Votes DESC

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to What is the party of the representative that has the smallest number of votes.*/


SELECT Party 
FROM representative 
INNER JOIN election 
ON representative.Representative_ID = election.Representative_ID 
ORDER BY Votes ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What are the lifespans of representatives in descending order of vote percent?*/


SELECT r.Lifespan 
FROM representative r 
INNER JOIN election e 
ON r.Representative_ID = e.Representative_ID 
ORDER BY e.Vote_Percent DESC

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What is the average number of votes of representatives from party "Republican"?*/


SELECT AVG(Votes)
FROM election e
INNER JOIN representative r
ON e.Representative_ID = r.Representative_ID
WHERE r.Party = 'Republican'

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to What are the different parties of representative? Show the party name and the number of representatives in each party.*/


SELECT Party, COUNT(*) AS Number_of_Representatives
FROM representative
GROUP BY Party

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What is the party that has the largest number of representatives?*/


SELECT Party, COUNT(*) AS Num_Reps
FROM representative
GROUP BY Party
ORDER BY Num_Reps DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What parties have at least three representatives?*/


SELECT Party, COUNT(*) AS Num_Reps
FROM representative
GROUP BY Party
HAVING COUNT(*) >= 3

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer What states have at least two representatives?*/


SELECT State
FROM representative
GROUP BY State
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to List the names of representatives that have not participated in elections listed here.*/


SELECT Name 
FROM representative 
WHERE Representative_ID NOT IN (SELECT Representative_ID FROM election)

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to Show the parties that have both representatives in New York state and representatives in Pennsylvania state.*/


SELECT DISTINCT Party 
FROM representative 
WHERE State = 'New York' OR State = 'Pennsylvania'

/*Here are Mysql tables, with their properties:

election(Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place)
representative(Representative_ID, Name, State, Party, Lifespan)

Create a SQL request to answer How many distinct parties are there for representatives?*/


SELECT COUNT(DISTINCT Party) FROM representative

