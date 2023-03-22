/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to answer How many performances are there?*/


SELECT COUNT(*) FROM performance

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to List the hosts of performances in ascending order of attendance.*/


SELECT Host, Attendance 
FROM performance 
ORDER BY Attendance ASC

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to answer What are the dates and locations of performances?*/


SELECT Date, Location
FROM performance

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show the attendances of the performances at location "TD Garden" or "Bell Centre"*/


SELECT Performance_ID, Date, Host, Location, Attendance 
FROM performance 
WHERE Location IN ('TD Garden', 'Bell Centre')

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to answer What is the average number of attendees for performances?*/


SELECT AVG(Attendance)
FROM performance

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to answer What is the date of the performance with the highest number of attendees?*/


SELECT Date 
FROM performance 
ORDER BY Attendance DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show different locations and the number of performances at each location.*/


SELECT Location, COUNT(Performance_ID) AS 'Number of Performances'
FROM performance
GROUP BY Location

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show the most common location of performances.*/


SELECT Location, COUNT(Location) AS Num_of_Performances
FROM performance
GROUP BY Location
ORDER BY Num_of_Performances DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show the locations that have at least two performances.*/


SELECT Location
FROM performance
GROUP BY Location
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show the locations that have both performances with more than 2000 attendees and performances with less than 1000 attendees.*/


SELECT Location
FROM performance
WHERE Attendance > 2000 OR Attendance < 1000
GROUP BY Location
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show the names of members and the location of the performances they attended.*/


SELECT m.Name, p.Location 
FROM member m 
INNER JOIN member_attendance ma ON m.Member_ID = ma.Member_ID 
INNER JOIN performance p ON ma.Performance_ID = p.Performance_ID

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show the names of members and the location of performances they attended in ascending alphabetical order of their names.*/


SELECT m.Name, p.Location 
FROM member m 
INNER JOIN member_attendance ma ON m.Member_ID = ma.Member_ID 
INNER JOIN performance p ON ma.Performance_ID = p.Performance_ID 
ORDER BY m.Name ASC

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show the dates of performances with attending members whose roles are "Violin".*/


SELECT p.Date 
FROM performance p 
INNER JOIN member_attendance ma ON p.Performance_ID = ma.Performance_ID 
INNER JOIN member m ON ma.Member_ID = m.Member_ID 
WHERE m.Role = 'Violin'

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to Show the names of members and the dates of performances they attended in descending order of attendance of the performances.*/


SELECT m.Name, p.Date 
FROM member m 
INNER JOIN member_attendance ma ON m.Member_ID = ma.Member_ID 
INNER JOIN performance p ON ma.Performance_ID = p.Performance_ID 
ORDER BY ma.Num_of_Pieces DESC

/*Here are Mysql tables, with their properties:

member(Member_ID, Name, Nationality, Role)
performance(Performance_ID, Date, Host, Location, Attendance)
member_attendance(Member_ID, Performance_ID, Num_of_Pieces)

Create a SQL request to List the names of members who did not attend any performance.*/


SELECT Name 
FROM member 
WHERE Member_ID NOT IN (SELECT Member_ID FROM member_attendance)

