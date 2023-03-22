/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer How many tracks do we have?*/


SELECT COUNT(*) FROM track

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Count the number of tracks.*/


SELECT COUNT(*) FROM track

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show the name and location for all tracks.*/


SELECT Name, Location FROM track

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the names and locations of all tracks?*/


SELECT Name, Location FROM track

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show names and seatings, ordered by seating for all tracks opened after 2000.*/


SELECT Name, Seating 
FROM track 
WHERE Year_Opened > 2000 
ORDER BY Seating

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the names and seatings for all tracks opened after 2000, ordered by seating?*/


SELECT Name, Seating 
FROM track 
WHERE Year_Opened > 2000 
ORDER BY Seating ASC

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What is the name, location and seating for the most recently opened track?*/


SELECT Name, Location, Seating 
FROM track 
ORDER BY Year_Opened DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Return the name, location, and seating of the track that was opened in the most recent year.*/


SELECT Name, Location, Seating 
FROM track 
WHERE Year_Opened = (SELECT MAX(Year_Opened) FROM track)

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to What is the minimum, maximum, and average seating for all tracks.*/


SELECT MIN(Seating) AS 'Minimum Seating', MAX(Seating) AS 'Maximum Seating', AVG(Seating) AS 'Average Seating'
FROM track

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Return the minimum, maximum, and average seating across all tracks.*/


SELECT MIN(Seating) AS 'Minimum Seating', MAX(Seating) AS 'Maximum Seating', AVG(Seating) AS 'Average Seating'
FROM track

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show the name, location, open year for all tracks with a seating higher than the average.*/


SELECT Name, Location, Year_Opened
FROM track
WHERE Seating > (SELECT AVG(Seating) FROM track)

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the names, locations, and years of opening for tracks with seating higher than average?*/


SELECT Name, Location, Year_Opened
FROM track
WHERE Seating > (SELECT AVG(Seating) FROM track)

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are distinct locations where tracks are located?*/


SELECT DISTINCT Location 
FROM track

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Give the different locations of tracks.*/


SELECT DISTINCT Location FROM track

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer How many races are there?*/


SELECT COUNT(*) FROM race

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Count the number of races.*/


SELECT COUNT(*) FROM race

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the distinct classes that races can have?*/


SELECT DISTINCT Class FROM race

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Return the different classes of races.*/


SELECT DISTINCT Class FROM race

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show name, class, and date for all races.*/


SELECT Name, Class, Date FROM race

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the names, classes, and dates for all races?*/


SELECT Name, Class, Date 
FROM race

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show the race class and number of races in each class.*/


SELECT Class, COUNT(*) AS 'Number of Races'
FROM race
GROUP BY Class

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the different classes of races, and how many races correspond to each?*/


SELECT Class, COUNT(*) AS 'Number of Races'
FROM race
GROUP BY Class

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to What is the race class with most number of races.*/


SELECT Class, COUNT(*) AS Num_Races
FROM race
GROUP BY Class
ORDER BY Num_Races DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Give the class of races that is most common.*/


SELECT Class, COUNT(*) AS Num_Races
FROM race
GROUP BY Class
ORDER BY Num_Races DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to List the race class with at least two races.*/


SELECT Class 
FROM race 
GROUP BY Class 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the classes of races that have two or more corresponding races?*/


SELECT Class 
FROM race 
GROUP BY Class 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to What are the names for tracks without a race in class 'GT'.*/


SELECT t.Name 
FROM track t 
LEFT JOIN race r ON t.Track_ID = r.Track_ID 
WHERE r.Class != 'GT' OR r.Class IS NULL

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Give the names of tracks that do not have a race in the class 'GT'.*/


SELECT t.Name 
FROM track t 
LEFT JOIN race r 
ON t.Track_ID = r.Track_ID 
WHERE r.Class != 'GT' OR r.Class IS NULL

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show all track names that have had no races.*/


SELECT Track.Name 
FROM Track 
LEFT JOIN Race 
ON Track.Track_ID = Race.Track_ID 
WHERE Race.Track_ID IS NULL

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Return the names of tracks that have no had any races.*/


SELECT Track_ID, Name, Location, Seating, Year_Opened
FROM track
WHERE Track_ID NOT IN (SELECT Track_ID FROM race)

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show year where a track with a seating at least 5000 opened and a track with seating no more than 4000 opened.*/


SELECT Year_Opened 
FROM track 
WHERE Seating >= 5000 OR Seating <= 4000

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the years of opening for tracks with seating between 4000 and 5000?*/


SELECT Year_Opened 
FROM track 
WHERE Seating BETWEEN 4000 AND 5000

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show the name of track and the number of races in each track.*/


SELECT t.Name, COUNT(r.Race_ID) AS 'Number of Races'
FROM track t
INNER JOIN race r ON t.Track_ID = r.Track_ID
GROUP BY t.Name

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the names of different tracks, and how many races has each had?*/


SELECT t.Name, COUNT(r.Race_ID) AS 'Number of Races'
FROM track t
INNER JOIN race r ON t.Track_ID = r.Track_ID
GROUP BY t.Name

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show the name of track with most number of races.*/


SELECT t.Name, COUNT(r.Race_ID) AS Num_Races
FROM track t
INNER JOIN race r ON t.Track_ID = r.Track_ID
GROUP BY t.Name
ORDER BY Num_Races DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What is the name of the track that has had the greatest number of races?*/


SELECT t.Name
FROM track t
INNER JOIN race r ON t.Track_ID = r.Track_ID
GROUP BY t.Name
ORDER BY COUNT(r.Race_ID) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show the name and date for each race and its track name.*/


SELECT race.Name, race.Date, track.Name
FROM race
INNER JOIN track
ON race.Track_ID = track.Track_ID

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the names and dates of races, and the names of the tracks where they are held?*/


SELECT race.Name, race.Date, track.Name
FROM race
INNER JOIN track
ON race.Track_ID = track.Track_ID

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Show the name and location of track with 1 race.*/


SELECT t.Name, t.Location 
FROM track t 
INNER JOIN race r 
ON t.Track_ID = r.Track_ID 
GROUP BY t.Name, t.Location 
HAVING COUNT(r.Race_ID) = 1

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the names and locations of tracks that have had exactly 1 race?*/


SELECT t.Name, t.Location
FROM track t
INNER JOIN race r ON t.Track_ID = r.Track_ID
GROUP BY t.Name, t.Location
HAVING COUNT(r.Race_ID) = 1

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to Find the locations where have both tracks with more than 90000 seats and tracks with less than 70000 seats.*/


SELECT Location 
FROM track 
WHERE Seating > 90000 OR Seating < 70000

/*Here are Mysql tables, with their properties:

race(Race_ID, Name, Class, Date, Track_ID)
track(Track_ID, Name, Location, Seating, Year_Opened)

Create a SQL request to answer What are the locations that have both tracks with more than 90000 seats, and tracks with fewer than 70000 seats?*/


SELECT Location
FROM track
WHERE Seating > 90000 OR Seating < 70000

