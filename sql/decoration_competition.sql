/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to answer How many members are there?*/


SELECT COUNT(*) FROM member

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to List the names of members in ascending alphabetical order.*/


SELECT Name FROM member ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to answer What are the names and countries of members?*/


SELECT m.Name, m.Country 
FROM member m 
ORDER BY m.Name

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the names of members whose country is "United States" or "Canada".*/


SELECT Name 
FROM member 
WHERE Country IN ('United States', 'Canada')

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the different countries and the number of members from each.*/


SELECT Country, COUNT(*) AS Number_of_Members
FROM member
GROUP BY Country

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the most common country across members.*/


SELECT Country, COUNT(*) AS Number_of_Members
FROM member
GROUP BY Country
ORDER BY Number_of_Members DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to answer Which countries have more than two members?*/


SELECT Country, COUNT(*) AS Member_Count
FROM member
GROUP BY Country
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the leader names and locations of colleges.*/


SELECT Leader_Name, College_Location 
FROM college

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the names of members and names of colleges they go to.*/


SELECT m.Name AS Member_Name, c.Name AS College_Name
FROM member m
INNER JOIN college c ON m.College_ID = c.College_ID

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the names of members and the locations of colleges they go to in ascending alphabetical order of member names.*/


SELECT m.Name, c.College_Location 
FROM member m 
INNER JOIN college c 
ON m.College_ID = c.College_ID 
ORDER BY m.Name ASC

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the distinct leader names of colleges associated with members from country "Canada".*/


SELECT DISTINCT Leader_Name 
FROM college 
INNER JOIN member ON college.College_ID = member.College_ID 
WHERE member.Country = 'Canada'

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the names of members and the decoration themes they have.*/


SELECT m.Name, r.Decoration_Theme 
FROM member m 
INNER JOIN round r 
ON m.Member_ID = r.Member_ID

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the names of members that have a rank in round higher than 3.*/


SELECT m.Name 
FROM member m 
INNER JOIN round r 
ON m.Member_ID = r.Member_ID 
WHERE r.Rank_in_Round > 3

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to Show the names of members in ascending order of their rank in rounds.*/


SELECT m.Name 
FROM member m 
INNER JOIN round r ON m.Member_ID = r.Member_ID 
ORDER BY r.Rank_in_Round ASC

/*Here are Mysql tables, with their properties:

college(College_ID, Name, Leader_Name, College_Location)
member(Member_ID, Name, Country, College_ID)
round(Round_ID, Member_ID, Decoration_Theme, Rank_in_Round)

Create a SQL request to List the names of members who did not participate in any round.*/


SELECT m.Name 
FROM member m 
LEFT JOIN round r 
ON m.Member_ID = r.Member_ID 
WHERE r.Member_ID IS NULL

