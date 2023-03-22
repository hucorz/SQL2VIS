/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to answer How many journalists are there?*/


SELECT COUNT(*) FROM journalist

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to List the names of journalists in ascending order of years working.*/


SELECT Name, Years_working 
FROM journalist 
ORDER BY Years_working ASC

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to answer What are the nationalities and ages of journalists?*/


SELECT Nationality, Age FROM journalist

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the names of journalists from "England" or "Wales".*/


SELECT Name 
FROM journalist 
WHERE Nationality = 'England' OR Nationality = 'Wales'

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to answer What is the average number of years spent working as a journalist?*/


SELECT AVG(Years_working)
FROM journalist

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to answer What is the nationality of the journalist with the largest number of years working?*/


SELECT Nationality 
FROM journalist 
WHERE Years_working = (SELECT MAX(Years_working) FROM journalist)

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the different nationalities and the number of journalists of each nationality.*/


SELECT Nationality, COUNT(*) AS Number_of_Journalists
FROM journalist
GROUP BY Nationality

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the most common nationality for journalists.*/


SELECT Nationality, COUNT(*) AS Frequency 
FROM journalist 
GROUP BY Nationality 
ORDER BY Frequency DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the nations that have both journalists with more than 10 years of working and journalists with less than 3 years of working.*/


SELECT DISTINCT Nationality 
FROM journalist 
WHERE Years_working > 10 OR Years_working < 3

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the dates, places, and names of events in descending order of the attendance.*/


SELECT Date, Venue, Name, Event_Attendance 
FROM event 
ORDER BY Event_Attendance DESC

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the names of journalists and the dates of the events they reported.*/


SELECT journalist.Name, event.Date
FROM journalist
INNER JOIN news_report ON journalist.journalist_ID = news_report.journalist_ID
INNER JOIN event ON news_report.Event_ID = event.Event_ID

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the names of journalists and the names of the events they reported in ascending order*/
 by journalist name

SELECT j.Name AS 'Journalist Name', e.Name AS 'Event Name'
FROM journalist j
INNER JOIN news_report nr ON j.journalist_ID = nr.journalist_ID
INNER JOIN event e ON nr.Event_ID = e.Event_ID
ORDER BY j.Name ASC

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the names of journalists and the number of events they reported.*/


SELECT journalist.Name, COUNT(news_report.Event_ID) AS Number_of_Events_Reported
FROM journalist
INNER JOIN news_report
ON journalist.journalist_ID = news_report.journalist_ID
GROUP BY journalist.Name

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Show the names of journalists that have reported more than one event.*/


SELECT Name 
FROM journalist 
INNER JOIN news_report 
ON journalist.journalist_ID = news_report.journalist_ID 
GROUP BY Name 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to List the names of journalists who have not reported any event.*/


SELECT Name 
FROM journalist 
WHERE journalist_ID NOT IN (SELECT journalist_ID FROM news_report)

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to answer what are the average and maximum attendances of all events?*/


SELECT AVG(Event_Attendance) AS Average_Attendance, MAX(Event_Attendance) AS Maximum_Attendance
FROM event

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to Find the average age and experience working length of journalists working on different role type.*/


SELECT AVG(Age) AS Average_Age, AVG(Years_working) AS Average_Experience 
FROM journalist 
INNER JOIN news_report 
ON journalist.journalist_ID = news_report.journalist_ID 
GROUP BY Work_Type

/*Here are Mysql tables, with their properties:

event(Event_ID, Date, Venue, Name, Event_Attendance)
journalist(journalist_ID, Name, Nationality, Age, Years_working)
news_report(journalist_ID, Event_ID, Work_Type)

Create a SQL request to List the event venues and names that have the top 2 most number of people attended.*/


SELECT Venue, Name, Event_Attendance 
FROM event 
ORDER BY Event_Attendance DESC 
LIMIT 2

