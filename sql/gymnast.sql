/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer How many gymnasts are there?*/


SELECT COUNT(Gymnast_ID) FROM gymnast

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Count the number of gymnasts.*/


SELECT COUNT(Gymnast_ID) FROM gymnast

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to List the total points of gymnasts in descending order.*/


SELECT Total_Points 
FROM gymnast 
ORDER BY Total_Points DESC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the total points for all gymnasts, ordered by total points descending?*/


SELECT Total_Points 
FROM gymnast 
ORDER BY Total_Points DESC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to List the total points of gymnasts in descending order of floor exercise points.*/


SELECT Floor_Exercise_Points, Total_Points 
FROM gymnast 
ORDER BY Floor_Exercise_Points DESC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the total points of gymnasts, ordered by their floor exercise points descending?*/


SELECT Floor_Exercise_Points, Total_Points
FROM gymnast
ORDER BY Floor_Exercise_Points DESC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What is the average horizontal bar points for all gymnasts?*/


SELECT AVG(Horizontal_Bar_Points)
FROM gymnast

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Return the average horizontal bar points across all gymnasts.*/


SELECT AVG(Horizontal_Bar_Points) FROM gymnast

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the names of people in ascending alphabetical order?*/


SELECT Name
FROM people
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Return the names of people, ordered alphabetically.*/


SELECT Name FROM people ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the names of gymnasts?*/


SELECT Name 
FROM people 
INNER JOIN gymnast 
ON people.People_ID = gymnast.Gymnast_ID

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Return the names of the gymnasts.*/


SELECT Name FROM people INNER JOIN gymnast ON people.People_ID = gymnast.Gymnast_ID

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the names of gymnasts whose hometown is not "Santo Domingo"?*/


SELECT Name 
FROM people 
INNER JOIN gymnast 
ON people.People_ID = gymnast.Gymnast_ID 
WHERE Hometown != 'Santo Domingo'

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Return the names of gymnasts who did not grow up in Santo Domingo.*/


SELECT Name 
FROM people 
WHERE Hometown != 'Santo Domingo'

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What is the age of the tallest person?*/


SELECT Age 
FROM people 
ORDER BY Height DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Return the age of the person with the greatest height.*/


SELECT Age 
FROM people 
WHERE Height = (SELECT MAX(Height) FROM people)

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to List the names of the top 5 oldest people.*/


SELECT Name 
FROM people 
ORDER BY Age DESC 
LIMIT 5

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the names of the five oldest people?*/


SELECT Name 
FROM people 
ORDER BY Age DESC 
LIMIT 5

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What is the total point count of the youngest gymnast?*/


SELECT Total_Points 
FROM gymnast 
INNER JOIN people ON gymnast.Gymnast_ID = people.People_ID 
WHERE Age = (SELECT MIN(Age) FROM people) 
ORDER BY Total_Points DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Return the total points of the gymnast with the lowest age.*/


SELECT Total_Points 
FROM gymnast 
INNER JOIN people ON gymnast.Gymnast_ID = people.People_ID 
ORDER BY Age ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What is the average age of all gymnasts?*/


SELECT AVG(Age)
FROM people
INNER JOIN gymnast
ON people.People_ID = gymnast.Gymnast_ID

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Return the average age across all gymnasts.*/


SELECT AVG(Age)
FROM people
INNER JOIN gymnast
ON people.People_ID = gymnast.Gymnast_ID

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the distinct hometowns of gymnasts with total points more than 57.5?*/


SELECT DISTINCT Hometown 
FROM people 
INNER JOIN gymnast 
ON people.People_ID = gymnast.Gymnast_ID 
WHERE Total_Points > 57.5

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Give the different hometowns of gymnasts that have a total point score of above 57.5.*/


SELECT DISTINCT Hometown 
FROM people 
INNER JOIN gymnast 
ON people.People_ID = gymnast.Gymnast_ID 
WHERE Total_Points > 57.5

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the hometowns of gymnasts and the corresponding number of gymnasts?*/


SELECT Hometown, COUNT(Gymnast_ID) AS Number_of_Gymnasts
FROM people
INNER JOIN gymnast
ON people.People_ID = gymnast.Gymnast_ID
GROUP BY Hometown

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer How many gymnasts are from each hometown?*/


SELECT Hometown, COUNT(Gymnast_ID) AS 'Number of Gymnasts'
FROM people
INNER JOIN gymnast
ON people.People_ID = gymnast.Gymnast_ID
GROUP BY Hometown

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What is the most common hometown of gymnasts?*/


SELECT Hometown, COUNT(*) AS Num_Gymnasts
FROM people
INNER JOIN gymnast
ON people.People_ID = gymnast.Gymnast_ID
GROUP BY Hometown
ORDER BY Num_Gymnasts DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Return the hometown that is most common among gymnasts.*/


SELECT Hometown, COUNT(*) AS Count
FROM people
INNER JOIN gymnast
ON people.People_ID = gymnast.Gymnast_ID
GROUP BY Hometown
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the hometowns that are shared by at least two gymnasts?*/


SELECT Hometown
FROM people
WHERE People_ID IN (SELECT People_ID
                    FROM gymnast
                    GROUP BY People_ID
                    HAVING COUNT(*) > 1)
GROUP BY Hometown

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Give the hometowns from which two or more gymnasts are from.*/


SELECT Hometown 
FROM people 
WHERE People_ID IN (SELECT Gymnast_ID 
                    FROM gymnast 
                    GROUP BY Gymnast_ID 
                    HAVING COUNT(*) > 1) 
GROUP BY Hometown

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to List the names of gymnasts in ascending order by their heights.*/


SELECT Name 
FROM people 
INNER JOIN gymnast 
ON people.People_ID = gymnast.Gymnast_ID 
ORDER BY Height ASC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the names of gymnasts, ordered by their heights ascending?*/


SELECT Name 
FROM people 
INNER JOIN gymnast ON people.People_ID = gymnast.Gymnast_ID 
ORDER BY Height ASC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to List the distinct hometowns that are not associated with any gymnast.*/


SELECT DISTINCT Hometown
FROM people
WHERE People_ID NOT IN (SELECT Gymnast_ID FROM gymnast)

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer From which hometowns did no gymnasts come from?*/


SELECT Hometown
FROM people
WHERE People_ID NOT IN (SELECT Gymnast_ID FROM gymnast)

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Show the hometowns shared by people older than 23 and younger than 20.*/


SELECT Hometown 
FROM people 
WHERE Age > 23 OR Age < 20

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer From which hometowns did both people older than 23 and younger than 20 come from?*/


SELECT Hometown 
FROM people 
WHERE Age > 23 OR Age < 20

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer How many distinct hometowns did these people have?*/


SELECT COUNT(DISTINCT Hometown)
FROM people

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Count the number of different hometowns of these people.*/


SELECT COUNT(DISTINCT Hometown) FROM people

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to Show the ages of gymnasts in descending order of total points.*/


SELECT people.Age 
FROM people 
INNER JOIN gymnast 
ON people.People_ID = gymnast.Gymnast_ID 
ORDER BY gymnast.Total_Points DESC

/*Here are Mysql tables, with their properties:

gymnast(Gymnast_ID, Floor_Exercise_Points, Pommel_Horse_Points, Rings_Points, Vault_Points, Parallel_Bars_Points, Horizontal_Bar_Points, Total_Points)
people(People_ID, Name, Age, Height, Hometown)

Create a SQL request to answer What are the ages of the gymnasts, ordered descending by their total points?*/


SELECT people.Age 
FROM people 
INNER JOIN gymnast 
ON people.People_ID = gymnast.Gymnast_ID 
ORDER BY gymnast.Total_Points DESC

