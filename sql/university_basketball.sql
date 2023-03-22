/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to List all schools and their nicknames in the order of founded year.*/


SELECT School, Nickname 
FROM university 
ORDER BY Founded ASC

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the different schools and their nicknames, ordered by their founding years?*/


SELECT School, Nickname, Founded 
FROM university 
ORDER BY Founded ASC

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to List all public schools and their locations.*/


SELECT School, Location 
FROM university 
WHERE Affiliation = 'Public'

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the public schools and what are their locations?*/


SELECT School, Location 
FROM university 
WHERE Affiliation = 'Public'

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer When was the school with the largest enrollment founded?*/


SELECT School, Founded 
FROM university 
ORDER BY Enrollment DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Return the founded year for the school with the largest enrollment.*/


SELECT u.Founded 
FROM university u 
ORDER BY u.Enrollment DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find the founded year of the newest non public school.*/


SELECT u.Founded 
FROM university u 
WHERE u.Affiliation != 'Public' 
ORDER BY u.Founded DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What is the founded year of the non public school that was founded most recently?*/


SELECT u.Founded 
FROM university u 
WHERE u.Affiliation = 'Non-Public' 
ORDER BY u.Founded DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer How many schools are in the basketball match?*/


SELECT COUNT(DISTINCT School_ID) 
FROM basketball_match 
INNER JOIN university 
ON basketball_match.School_ID = university.School_ID

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Count the number of schools that have had basketball matches.*/


SELECT COUNT(DISTINCT School_ID) 
FROM basketball_match 
INNER JOIN university 
ON basketball_match.School_ID = university.School_ID

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What is the highest acc percent score in the competition?*/


SELECT MAX(ACC_Percent) 
FROM basketball_match

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Return the highest acc percent across all basketball matches.*/


SELECT MAX(ACC_Percent) FROM basketball_match

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What is the primary conference of the school that has the lowest acc percent score in the competition?*/


SELECT u.Primary_conference 
FROM university u 
INNER JOIN basketball_match bm 
ON u.School_ID = bm.School_ID 
ORDER BY bm.ACC_Percent ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Return the primary conference of the school with the lowest acc percentage score.*/


SELECT Primary_Conference 
FROM university 
INNER JOIN basketball_match 
ON university.School_ID = basketball_match.School_ID 
ORDER BY ACC_Percent ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What is the team name and acc regular season score of the school that was founded for the longest time?*/


SELECT Team_Name, ACC_Regular_Season 
FROM basketball_match 
INNER JOIN university 
ON basketball_match.School_ID = university.School_ID 
ORDER BY Founded ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Return the name of the team and the acc during the regular season for the school that was founded the earliest.*/


SELECT Team_Name, ACC_Regular_Season 
FROM basketball_match 
INNER JOIN university 
ON basketball_match.School_ID = university.School_ID 
WHERE university.Founded = (SELECT MIN(Founded) FROM university) 
ORDER BY Team_Name

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find the location and all games score of the school that has Clemson as its team name.*/


SELECT u.Location, bm.All_Games 
FROM university u 
INNER JOIN basketball_match bm 
ON u.School_ID = bm.School_ID 
WHERE bm.Team_Name = 'Clemson'

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the all games score and location of the school called Clemson?*/


SELECT All_Games, Location
FROM basketball_match
INNER JOIN university
ON basketball_match.School_ID = university.School_ID
WHERE School = 'Clemson'

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the average enrollment size of the universities that are founded before 1850?*/


SELECT AVG(Enrollment) 
FROM university 
WHERE Founded < 1850

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Return the average enrollment of universities founded before 1850.*/


SELECT AVG(Enrollment) 
FROM university 
WHERE Founded < 1850

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Show the enrollment and primary_conference of the oldest college.*/


SELECT Enrollment, Primary_conference 
FROM university 
ORDER BY Founded ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the enrollment and primary conference for the university which was founded the earliest?*/


SELECT Enrollment, Primary_conference 
FROM university 
ORDER BY Founded ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What is the total and minimum enrollment of all schools?*/


SELECT SUM(Enrollment) AS Total_Enrollment, MIN(Enrollment) AS Minimum_Enrollment
FROM university

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Return the total and minimum enrollments across all schools.*/


SELECT SUM(Enrollment) AS Total_Enrollment, MIN(Enrollment) AS Minimum_Enrollment
FROM university

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find the total student enrollment for different affiliation type schools.*/


SELECT Affiliation, SUM(Enrollment) AS Total_Enrollment
FROM university
GROUP BY Affiliation

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the total enrollments of universities of each affiliation type?*/


SELECT Affiliation, SUM(Enrollment) AS Total_Enrollment
FROM university
GROUP BY Affiliation

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer How many schools do not participate in the basketball match?*/


SELECT COUNT(*) 
FROM university 
WHERE School_ID NOT IN (SELECT School_ID FROM basketball_match)

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Count the number of universities that do not participate in the baketball match.*/


SELECT COUNT(*) 
FROM university 
WHERE School_ID NOT IN (SELECT School_ID FROM basketball_match)

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find the schools that were either founded after 1850 or public.*/


SELECT School 
FROM university 
WHERE Founded > 1850 OR Affiliation = 'Public'

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the schools that were either founded before 1850 or are public?*/


SELECT School 
FROM university 
WHERE Founded < 1850 OR Affiliation = 'Public' 

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find how many different affiliation types there are.*/


SELECT COUNT(DISTINCT Affiliation) FROM university

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Count the number of different affiliation types.*/


SELECT COUNT(DISTINCT Affiliation) FROM university

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find how many school locations have the word 'NY'.*/


SELECT COUNT(*) 
FROM university 
WHERE Location LIKE '%NY%'

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer How many universities have a location that contains NY?*/


SELECT COUNT(*) 
FROM university 
WHERE Location LIKE '%NY%'

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find the team names of the universities whose enrollments are smaller than the average enrollment size.*/


SELECT Team_Name 
FROM basketball_match bm 
INNER JOIN university u 
ON bm.School_ID = u.School_ID 
WHERE u.Enrollment < (SELECT AVG(Enrollment) FROM university)

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the names of teams from universities that have a below average enrollment?*/


SELECT Team_Name 
FROM basketball_match 
INNER JOIN university 
ON basketball_match.School_ID = university.School_ID 
WHERE university.Enrollment < (SELECT AVG(Enrollment) FROM university) 

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find the number of universities that have over a 20000 enrollment size for each affiliation type.*/


SELECT Affiliation, COUNT(*) AS 'Number of Universities'
FROM university
WHERE Enrollment > 20000
GROUP BY Affiliation

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the different affiliations, and how many schools with each have an enrollment size of above 20000?*/


SELECT Affiliation, COUNT(*) AS 'Number of Schools'
FROM university
WHERE Enrollment > 20000
GROUP BY Affiliation

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Find the total number of students enrolled in the colleges that were founded after the year of 1850 for each affiliation type.*/


SELECT Affiliation, SUM(Enrollment) AS Total_Enrollment
FROM university
WHERE Founded > 1850
GROUP BY Affiliation

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the different affiliations, and what is the total enrollment of schools founded after 1850 for each enrollment type?*/


SELECT u.Affiliation, SUM(u.Enrollment) AS Total_Enrollment
FROM university u
WHERE u.Founded > 1850
GROUP BY u.Affiliation

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What is the maximum enrollment across all schools?*/


SELECT MAX(Enrollment)
FROM university

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to Return the maximum enrollment across all schools.*/


SELECT MAX(Enrollment) FROM university

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to List all information regarding the basketball match.*/


SELECT * FROM basketball_match INNER JOIN university ON basketball_match.School_ID = university.School_ID

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What is all the information about the basketball match?*/


SELECT * FROM basketball_match 
INNER JOIN university 
ON basketball_match.School_ID = university.School_ID

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to List names of all teams in the basketball competition, ordered by all home scores in descending order.*/


SELECT Team_Name 
FROM basketball_match 
ORDER BY All_Home DESC

/*Here are Mysql tables, with their properties:

basketball_match(Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral)
university(School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference)

Create a SQL request to answer What are the names of all the teams in the basketball competition, sorted by all home scores in descending order?*/


SELECT Team_Name 
FROM basketball_match 
ORDER BY All_Home DESC

