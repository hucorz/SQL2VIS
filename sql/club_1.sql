/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many clubs are there?*/


SELECT COUNT(*) FROM Club

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Count the total number of clubs.*/


SELECT COUNT(*) FROM Club

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What are the names of all clubs?*/


SELECT ClubName FROM Club

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Give me the name of each club.*/


SELECT ClubName FROM Club

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many students are there?*/


SELECT COUNT(StuID) FROM Student

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Count the total number of students.*/


SELECT COUNT(StuID) FROM Student

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What are the first names of all the students?*/


SELECT Fname FROM Student

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find each student's first name.*/


SELECT Fname FROM Student

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the last names of the members of the club "Bootup Baltimore".*/


SELECT LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Who are the members of the club named "Bootup Baltimore"? Give me their last names.*/


SELECT LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Who are the members of the club named "Hopkins Student Enterprises"? Show the last name.*/


SELECT LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Hopkins Student Enterprises'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Return the last name for the members of the club named "Hopkins Student Enterprises".*/


SELECT LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Hopkins Student Enterprises'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many members does the club "Tennis Club" has?*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Tennis Club'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Count the members of the club "Tennis Club".*/


SELECT COUNT(*) 
FROM Member_of_club 
WHERE ClubID = (SELECT ClubID FROM Club WHERE ClubName = 'Tennis Club')

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the number of members of club "Pen and Paper Gaming".*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Pen and Paper Gaming'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many people have membership in the club "Pen and Paper Gaming"?*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Pen and Paper Gaming'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many clubs does "Linda Smith" belong to?*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.LName = 'Smith' 
AND Student.Fname = 'Linda'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many clubs does "Linda Smith" have membership for?*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.LName = 'Smith' AND Student.Fname = 'Linda'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the number of clubs where "Tracy Kim" is a member.*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Student ON Member_of_club.StuID = Student.StuID 
WHERE Student.Fname = 'Tracy' AND Student.LName = 'Kim'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer For how many clubs is "Tracy Kim" a member?*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.Fname = 'Tracy' AND Student.LName = 'Kim'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find all the female members of club "Bootup Baltimore". Show the first name and last name.*/


SELECT Fname, LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore' 
AND Student.Sex = 'Female'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Give me the first name and last name for all the female members of the club "Bootup Baltimore".*/


SELECT Fname, LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore' 
AND Student.Sex = 'Female'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find all the male members of club "Hopkins Student Enterprises". Show the first name and last name.*/


SELECT Fname, Lname 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Hopkins Student Enterprises' 
AND Student.Sex = 'Male'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What are the first name and last name of each male member in club "Hopkins Student Enterprises"?*/


SELECT Fname, LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Hopkins Student Enterprises' 
AND Student.Sex = 'Male'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find all members of "Bootup Baltimore" whose major is "600". Show the first name and last name.*/


SELECT Fname, LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore' 
AND Student.Major = '600'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Which members of "Bootup Baltimore" major in "600"? Give me their first names and last names.*/


SELECT Fname, LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore' 
AND Student.Major = '600'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer Which club has the most members majoring in "600"?*/


SELECT ClubName, COUNT(StuID) AS 'Number of Members'
FROM Student
JOIN Member_of_club ON Student.StuID = Member_of_club.StuID
JOIN Club ON Member_of_club.ClubID = Club.ClubID
WHERE Major = '600'
GROUP BY ClubName
ORDER BY COUNT(StuID) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the club which has the largest number of members majoring in "600".*/


SELECT ClubName, COUNT(*) AS NumMembers
FROM Student
JOIN Member_of_club ON Student.StuID = Member_of_club.StuID
JOIN Club ON Member_of_club.ClubID = Club.ClubID
WHERE Major = '600'
GROUP BY ClubName
ORDER BY NumMembers DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the name of the club that has the most female students.*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club 
ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.Sex = 'Female' 
GROUP BY ClubName 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Which club has the most female students as their members? Give me the name of the club.*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student ON Member_of_club.StuID = Student.StuID 
WHERE Student.Sex = 'Female' 
GROUP BY ClubName 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What is the description of the club named "Tennis Club"?*/


SELECT ClubDesc 
FROM Club 
WHERE ClubName = 'Tennis Club'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the description of the club called "Tennis Club".*/


SELECT ClubDesc 
FROM Club 
WHERE ClubName = 'Tennis Club'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the description of the club "Pen and Paper Gaming".*/


SELECT ClubDesc 
FROM Club 
WHERE ClubName = 'Pen and Paper Gaming'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What is the description of the club "Pen and Paper Gaming"?*/


SELECT ClubDesc 
FROM Club 
WHERE ClubName = 'Pen and Paper Gaming'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What is the location of the club named "Tennis Club"?*/


SELECT ClubLocation 
FROM Club 
WHERE ClubName = 'Tennis Club'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer Where us the club named "Tennis Club" located?*/


SELECT ClubLocation 
FROM Club 
WHERE ClubName = 'Tennis Club'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the location of the club "Pen and Paper Gaming".*/


SELECT ClubLocation 
FROM Club 
WHERE ClubName = 'Pen and Paper Gaming'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer Where is the club "Pen and Paper Gaming" located?*/


SELECT ClubLocation 
FROM Club 
WHERE ClubName = 'Pen and Paper Gaming'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer Where is the club "Hopkins Student Enterprises" located?*/


SELECT ClubLocation 
FROM Club 
WHERE ClubName = 'Hopkins Student Enterprises'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Tell me the location of the club "Hopkins Student Enterprises".*/


SELECT ClubLocation 
FROM Club 
WHERE ClubName = 'Hopkins Student Enterprises'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the name of all the clubs at "AKW".*/


SELECT ClubName 
FROM Club 
WHERE ClubLocation = 'AKW'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Which clubs are located at "AKW"? Return the club names.*/


SELECT ClubName 
FROM Club 
WHERE ClubLocation = 'AKW'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many clubs are located at "HHH"?*/


SELECT COUNT(*) 
FROM Club 
WHERE ClubLocation = 'HHH'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Count the number of clubs located at "HHH".*/


SELECT COUNT(*) 
FROM Club 
WHERE ClubLocation = 'HHH'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What are the first and last name of the president of the club "Bootup Baltimore"?*/


SELECT Fname, Lname 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore' 
AND Member_of_club.Position = 'President'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Who is the president of the club "Bootup Baltimore"? Give me the first and last name.*/


SELECT Fname, LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore' 
AND Member_of_club.Position = 'President'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Who is the "CTO" of club "Hopkins Student Enterprises"? Show the first name and last name.*/


SELECT Fname, LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Hopkins Student Enterprises' 
AND Member_of_club.Position = 'CTO'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer Find the first name and last name for the "CTO" of the club "Hopkins Student Enterprises"?*/


SELECT Fname, LName 
FROM Student 
INNER JOIN Member_of_club 
ON Student.StuID = Member_of_club.StuID 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Hopkins Student Enterprises' 
AND Member_of_club.Position = 'CTO'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many different roles are there in the club "Bootup Baltimore"?*/


SELECT COUNT(DISTINCT Position) 
FROM Member_of_club 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Count the number of different positions in the club "Bootup Baltimore".*/


SELECT COUNT(DISTINCT Position) 
FROM Member_of_club 
INNER JOIN Club 
ON Member_of_club.ClubID = Club.ClubID 
WHERE Club.ClubName = 'Bootup Baltimore'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many members of "Bootup Baltimore" are older than 18?*/


SELECT COUNT(*) 
FROM Student s 
INNER JOIN Member_of_club mc ON s.StuID = mc.StuID 
INNER JOIN Club c ON mc.ClubID = c.ClubID 
WHERE c.ClubName = 'Bootup Baltimore' 
AND s.Age > 18

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Count the number of members in club "Bootup Baltimore" whose age is above 18.*/


SELECT COUNT(*) 
FROM Student s 
INNER JOIN Member_of_club mc 
ON s.StuID = mc.StuID 
INNER JOIN Club c 
ON mc.ClubID = c.ClubID 
WHERE c.ClubName = 'Bootup Baltimore' 
AND s.Age > 18

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many members of club "Bootup Baltimore" are younger than 18?*/


SELECT COUNT(*) 
FROM Student s 
INNER JOIN Member_of_club mc 
ON s.StuID = mc.StuID 
INNER JOIN Club c 
ON mc.ClubID = c.ClubID 
WHERE c.ClubName = 'Bootup Baltimore' 
AND s.Age < 18

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Count the number of members in club "Bootup Baltimore" whose age is below 18.*/


SELECT COUNT(*) 
FROM Student s 
INNER JOIN Member_of_club mc 
ON s.StuID = mc.StuID 
INNER JOIN Club c 
ON mc.ClubID = c.ClubID 
WHERE c.ClubName = 'Bootup Baltimore' 
AND s.Age < 18

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the names of all the clubs that have at least a member from the city with city code "BAL".*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student ON Member_of_club.StuID = Student.StuID 
WHERE Student.city_code = 'BAL'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Which clubs have one or more members from the city with code "BAL"? Give me the names of the clubs.*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club 
ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.city_code = 'BAL' 
GROUP BY ClubName

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the names of the clubs that have at least a member from the city with city code "HOU".*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club 
ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.city_code = 'HOU'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Which clubs have one or more members from the city with code "HOU"? Give me the names of the clubs.*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club 
ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.city_code = 'HOU' 
GROUP BY ClubName

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer How many clubs does the student named "Eric Tai" belong to?*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Student ON Member_of_club.StuID = Student.StuID 
WHERE Student.Fname = 'Eric' AND Student.LName = 'Tai'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Count the number of clubs for which the student named "Eric Tai" is a member.*/


SELECT COUNT(*) 
FROM Member_of_club 
INNER JOIN Student ON Member_of_club.StuID = Student.StuID 
WHERE Student.Fname = 'Eric' AND Student.LName = 'Tai'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to List the clubs having "Davis Steven" as a member.*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club 
ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.Fname = 'Davis' AND Student.LName = 'Steven'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What are the names of the clubs that have "Davis Steven" as a member?*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club 
ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.Fname = 'Davis' AND Student.LName = 'Steven'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to List the clubs that have at least a member with advisor "1121".*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club 
ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student 
ON Member_of_club.StuID = Student.StuID 
WHERE Student.Advisor = '1121'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer Which clubs have one or more members whose advisor is "1121"?*/


SELECT ClubName 
FROM Club 
INNER JOIN Member_of_club ON Club.ClubID = Member_of_club.ClubID 
INNER JOIN Student ON Member_of_club.StuID = Student.StuID 
WHERE Student.Advisor = '1121'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer What is the average age of the members of the club "Bootup Baltimore"?*/


SELECT AVG(Age)
FROM Student s
INNER JOIN Member_of_club mc ON s.StuID = mc.StuID
INNER JOIN Club c ON mc.ClubID = c.ClubID
WHERE c.ClubName = 'Bootup Baltimore'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the average age of the members in the club "Bootup Baltimore".*/


SELECT AVG(Age)
FROM Student
INNER JOIN Member_of_club ON Student.StuID = Member_of_club.StuID
INNER JOIN Club ON Member_of_club.ClubID = Club.ClubID
WHERE Club.ClubName = 'Bootup Baltimore'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Find the average age of members of the club "Hopkins Student Enterprises".*/


SELECT AVG(Age)
FROM Student s
INNER JOIN Member_of_club mc ON s.StuID = mc.StuID
INNER JOIN Club c ON mc.ClubID = c.ClubID
WHERE c.ClubName = 'Hopkins Student Enterprises'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to answer On average, how old are the members in the club "Hopkins Student Enterprises"?*/


SELECT AVG(Age)
FROM Student
INNER JOIN Member_of_club ON Student.StuID = Member_of_club.StuID
INNER JOIN Club ON Member_of_club.ClubID = Club.ClubID
WHERE Club.ClubName = 'Hopkins Student Enterprises'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Retrieve the average age of members of the club "Tennis Club".*/


SELECT AVG(Age)
FROM Student s
INNER JOIN Member_of_club mc ON s.StuID = mc.StuID
INNER JOIN Club c ON mc.ClubID = c.ClubID
WHERE c.ClubName = 'Tennis Club'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Club(ClubID, ClubName, ClubDesc, ClubLocation)
Member_of_club(StuID, ClubID, Position)

Create a SQL request to Compute the average age of the members in the club "Tennis Club".*/


SELECT AVG(Age)
FROM Student
INNER JOIN Member_of_club ON Student.StuID = Member_of_club.StuID
INNER JOIN Club ON Member_of_club.ClubID = Club.ClubID
WHERE Club.ClubName = 'Tennis Club'

