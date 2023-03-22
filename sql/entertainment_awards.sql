/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to answer How many artworks are there?*/


SELECT COUNT(*) FROM artwork

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to List the name of artworks in ascending alphabetical order.*/


SELECT Name 
FROM artwork 
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to List the name of artworks whose type is not "Program Talent Show".*/


SELECT Name 
FROM artwork 
WHERE Type != 'Program Talent Show'

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to answer What are the names and locations of festivals?*/


SELECT Festival_Name, Location FROM festival_detail

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to answer What are the names of the chairs of festivals, sorted in ascending order of the year held?*/


SELECT Chair_Name 
FROM festival_detail 
ORDER BY Year ASC

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to answer What is the location of the festival with the largest number of audience?*/


SELECT Location 
FROM festival_detail 
ORDER BY Num_of_Audience DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to answer What are the names of festivals held in year 2007?*/


SELECT Festival_Name 
FROM festival_detail 
WHERE Year = 2007

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to answer What is the average number of audience for festivals?*/


SELECT AVG(Num_of_Audience)
FROM festival_detail

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to Show the names of the three most recent festivals.*/


SELECT Festival_Name 
FROM festival_detail 
ORDER BY Year DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to For each nomination, show the name of the artwork and name of the festival where it is nominated.*/


SELECT artwork.Name, festival_detail.Festival_Name
FROM artwork
INNER JOIN nomination ON artwork.Artwork_ID = nomination.Artwork_ID
INNER JOIN festival_detail ON nomination.Festival_ID = festival_detail.Festival_ID

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to Show distinct types of artworks that are nominated in festivals in 2007.*/


SELECT DISTINCT Type 
FROM artwork 
INNER JOIN nomination ON artwork.Artwork_ID = nomination.Artwork_ID 
INNER JOIN festival_detail ON nomination.Festival_ID = festival_detail.Festival_ID 
WHERE festival_detail.Year = 2007

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to Show the names of artworks in ascending order of the year they are nominated in.*/


SELECT artwork.Name 
FROM artwork 
INNER JOIN nomination ON artwork.Artwork_ID = nomination.Artwork_ID 
INNER JOIN festival_detail ON nomination.Festival_ID = festival_detail.Festival_ID 
ORDER BY festival_detail.Year ASC

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to Show the names of festivals that have nominated artworks of type "Program Talent Show".*/


SELECT Festival_Name 
FROM festival_detail 
INNER JOIN nomination ON festival_detail.Festival_ID = nomination.Festival_ID 
INNER JOIN artwork ON nomination.Artwork_ID = artwork.Artwork_ID 
WHERE artwork.Type = 'Program Talent Show'

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to Show the ids and names of festivals that have at least two nominations for artworks.*/


SELECT Festival_ID, Festival_Name
FROM festival_detail
WHERE Festival_ID IN (SELECT Festival_ID
                      FROM nomination
                      GROUP BY Festival_ID
                      HAVING COUNT(*) >= 2)

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to Show the id, name of each festival and the number of artworks it has nominated.*/


SELECT fd.Festival_ID, fd.Festival_Name, COUNT(n.Artwork_ID) AS 'Number of Artworks Nominated'
FROM festival_detail fd
INNER JOIN nomination n ON fd.Festival_ID = n.Festival_ID
GROUP BY fd.Festival_ID, fd.Festival_Name

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to Please show different types of artworks with the corresponding number of artworks of each type.*/


SELECT Type, COUNT(*) AS Num_of_Artworks
FROM artwork
GROUP BY Type

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to List the most common type of artworks.*/


SELECT Type, COUNT(*) AS Num_of_Artwork
FROM artwork
GROUP BY Type
ORDER BY Num_of_Artwork DESC

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to List the year in which there are more than one festivals.*/


SELECT Year 
FROM festival_detail 
GROUP BY Year 
HAVING COUNT(Festival_ID) > 1

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to List the name of artworks that are not nominated.*/


SELECT Name 
FROM artwork 
WHERE Artwork_ID NOT IN (SELECT Artwork_ID FROM nomination)

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to Show the number of audience in year 2008 or 2010.*/


SELECT Festival_Name, Year, Num_of_Audience 
FROM festival_detail 
WHERE Year IN (2008, 2010)

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to answer What are the total number of the audiences who visited any of the festivals?*/


SELECT SUM(Num_of_Audience) 
FROM festival_detail

/*Here are Mysql tables, with their properties:

festival_detail(Festival_ID, Festival_Name, Chair_Name, Location, Year, Num_of_Audience)
artwork(Artwork_ID, Type, Name)
nomination(Artwork_ID, Festival_ID, Result)

Create a SQL request to answer In which year are there festivals both inside the 'United States' and outside the 'United States'?*/


SELECT Year 
FROM festival_detail 
WHERE Location IN ('United States', 'Outside United States') 
GROUP BY Year

