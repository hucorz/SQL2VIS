/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer How many body builders are there?*/


SELECT COUNT(*) FROM body_builder

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to List the total scores of body builders in ascending order.*/


SELECT Total FROM body_builder ORDER BY Total ASC

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to List the snatch score and clean jerk score of body builders in ascending order of snatch score.*/


SELECT Snatch, Clean_Jerk 
FROM body_builder 
ORDER BY Snatch ASC

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What is the average snatch score of body builders?*/


SELECT AVG(Snatch) FROM body_builder

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the clean and jerk score of the body builder with the highest total score?*/


SELECT Clean_Jerk 
FROM body_builder 
WHERE Total = (SELECT MAX(Total) FROM body_builder) 
ORDER BY Total DESC

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the birthdays of people in ascending order of height?*/


SELECT Name, Birth_Date, Height
FROM people
ORDER BY Height ASC

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the names of body builders?*/


SELECT Name 
FROM people 
INNER JOIN body_builder 
ON people.People_ID = body_builder.People_ID

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the names of body builders whose total score is higher than 300?*/


SELECT p.Name 
FROM body_builder bb 
INNER JOIN people p 
ON bb.People_ID = p.People_ID 
WHERE bb.Total > 300

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What is the name of the body builder with the greatest body weight?*/


SELECT Name 
FROM people 
INNER JOIN body_builder 
ON people.People_ID = body_builder.People_ID 
ORDER BY Weight DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the birth date and birth place of the body builder with the highest total points?*/


SELECT p.Birth_Date, p.Birth_Place
FROM body_builder bb
INNER JOIN people p ON bb.People_ID = p.People_ID
ORDER BY bb.Total DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the heights of body builders with total score smaller than 315?*/


SELECT p.Height 
FROM body_builder bb 
INNER JOIN people p 
ON bb.People_ID = p.People_ID 
WHERE bb.Total < 315

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What is the average total score of body builders with height bigger than 200?*/


SELECT AVG(Total)
FROM body_builder bb
INNER JOIN people p ON bb.People_ID = p.People_ID
WHERE p.Height > 200

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the names of body builders in descending order of total scores?*/


SELECT Name 
FROM people 
INNER JOIN body_builder 
ON people.People_ID = body_builder.People_ID 
ORDER BY Total DESC

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to List each birth place along with the number of people from there.*/


SELECT Birth_Place, COUNT(*) AS Number_of_People
FROM people
GROUP BY Birth_Place

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What is the most common birth place of people?*/


SELECT Birth_Place, COUNT(*) AS Count
FROM people
GROUP BY Birth_Place
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the birth places that are shared by at least two people?*/


SELECT Birth_Place 
FROM people 
GROUP BY Birth_Place 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to List the height and weight of people in descending order of height.*/


SELECT Height, Weight 
FROM people 
ORDER BY Height DESC

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to Show all information about each body builder.*/


SELECT bb.Body_Builder_ID, p.Name, p.Height, p.Weight, p.Birth_Date, p.Birth_Place, bb.Snatch, bb.Clean_Jerk, bb.Total
FROM body_builder bb
INNER JOIN people p ON bb.People_ID = p.People_ID

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to List the names and origins of people who are not body builders.*/


SELECT Name, Birth_Place
FROM people
WHERE People_ID NOT IN (SELECT People_ID FROM body_builder)

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer How many distinct birth places are there?*/


SELECT COUNT(DISTINCT Birth_Place) FROM people

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer How many persons are not body builders?*/


SELECT COUNT(*) 
FROM people 
WHERE People_ID NOT IN (SELECT People_ID FROM body_builder)

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to List the weight of the body builders who have snatch score higher than 140 or have the height greater than 200.*/


SELECT Weight 
FROM people 
INNER JOIN body_builder 
ON people.People_ID = body_builder.People_ID 
WHERE body_builder.Snatch > 140 OR people.Height > 200

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What are the total scores of the body builders whose birthday contains the string "January" ?*/


SELECT bb.Total 
FROM body_builder bb 
INNER JOIN people p ON bb.People_ID = p.People_ID 
WHERE p.Birth_Date LIKE '%January%'

/*Here are Mysql tables, with their properties:

body_builder(Body_Builder_ID, People_ID, Snatch, Clean_Jerk, Total)
people(People_ID, Name, Height, Weight, Birth_Date, Birth_Place)

Create a SQL request to answer What is the minimum snatch score?*/


SELECT MIN(Snatch) FROM body_builder

