/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the titles of all movies directed by steven spielberg.*/


SELECT title 
FROM Movie 
WHERE director = 'Steven Spielberg'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all movies directed by Steven Spielberg?*/


SELECT title 
FROM Movie 
WHERE director = 'Steven Spielberg'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the name of the movie produced after 2000 and directed by James Cameron?*/


SELECT title 
FROM Movie 
WHERE year > 2000 
AND director = 'James Cameron'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the titles of all movies that James Cameron directed after 2000?*/


SELECT title 
FROM Movie 
WHERE director = 'James Cameron' 
AND year > 2000

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer How many movies were made before 2000?*/


SELECT COUNT(*) 
FROM Movie 
WHERE year < 2000

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer How many movies were made before 2000?*/


SELECT COUNT(*) 
FROM Movie 
WHERE year < 2000

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer Who is the director of movie Avatar?*/


SELECT director FROM Movie WHERE title = 'Avatar'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer Who directed Avatar?*/


SELECT director 
FROM Movie 
WHERE title = 'Avatar'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer How many reviewers listed?*/


SELECT COUNT(*) FROM Reviewer

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer How many reviewers are there?*/


SELECT COUNT(*) FROM Reviewer

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the id of the reviewer whose name has substring ¡°Mike¡±?*/


SELECT rID FROM Reviewer WHERE name LIKE '%Mike%'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the id of the reviewer whose name includes the word "Mike"?*/


SELECT rID FROM Reviewer WHERE name LIKE '%Mike%'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the reviewer id of Daniel Lewis?*/


SELECT rID FROM Reviewer WHERE name = 'Daniel Lewis'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the id of the reviewer named Daniel Lewis?*/


SELECT rID FROM Reviewer WHERE name = 'Daniel Lewis'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the total number of ratings that has more than 3 stars?*/


SELECT COUNT(*) 
FROM Rating 
WHERE stars > 3

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer How many movie ratings have more than 3 stars?*/


SELECT COUNT(*) 
FROM Rating 
WHERE stars > 3

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the lowest and highest rating star?*/


SELECT MIN(stars) AS LowestRating, MAX(stars) AS HighestRating FROM Rating

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the maximum and mininum number of stars a rating can receive?*/


SELECT MAX(stars) AS Max_Stars, MIN(stars) AS Min_Stars FROM Rating

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order of year.*/


SELECT DISTINCT year 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
WHERE stars >= 4 
ORDER BY year ASC

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer In what years did a movie receive a 4 or 5 star rating, and list the years from oldest to most recently?*/


SELECT year 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
WHERE stars >= 4 
ORDER BY year ASC

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to What are the names of directors who directed movies with 5 star rating? Also return the title of these movies.*/


SELECT DISTINCT director, title 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
WHERE stars = 5

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of the directors who created a movie with a 5 star rating, and what was the name of those movies?*/


SELECT DISTINCT director, title 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
WHERE stars = 5

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the average rating star for each reviewer?*/


SELECT r.name, AVG(r.stars) AS 'Average Rating'
FROM Rating r
JOIN Reviewer rev ON r.rID = rev.rID
GROUP BY r.name

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the average number of stars that each reviewer awards for a movie?*/


SELECT AVG(stars) 
FROM Rating 
GROUP BY rID, mID

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the titles of all movies that have no ratings.*/


SELECT title 
FROM Movie 
WHERE mID NOT IN (SELECT mID FROM Rating)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the titles of all movies that have not been rated?*/


SELECT title 
FROM Movie 
WHERE mID NOT IN (SELECT mID FROM Rating)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the names of all reviewers who have ratings with a NULL value for the date.*/


SELECT name 
FROM Reviewer 
INNER JOIN Rating 
ON Reviewer.rID = Rating.rID 
WHERE Rating.ratingDate IS NULL

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the different names of all reviewers whose ratings do not have a date field?*/


SELECT name 
FROM Reviewer 
WHERE rID NOT IN (SELECT rID FROM Rating WHERE ratingDate IS NOT NULL)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the average rating stars and title for the oldest movie?*/


SELECT AVG(stars), title 
FROM Movie 
JOIN Rating ON Movie.mID = Rating.mID 
WHERE year = (SELECT MIN(year) FROM Movie) 
GROUP BY title

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer For the oldest movie listed, what is its average rating and title?*/


SELECT title, AVG(stars) AS AverageRating
FROM Movie
JOIN Rating ON Movie.mID = Rating.mID
WHERE year = (SELECT MIN(year) FROM Movie)
GROUP BY title

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the name of the most recent movie?*/


SELECT title 
FROM Movie 
ORDER BY year DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the title of the newest movie?*/


SELECT title 
FROM Movie 
ORDER BY year DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the maximum stars and year for the most recent movie?*/


SELECT MAX(stars), MAX(year) 
FROM Movie 
INNER JOIN Rating ON Movie.mID = Rating.mID 
ORDER BY ratingDate DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is highest rating for the most recent movie and when was it released?*/


SELECT MAX(Rating.stars) AS HighestRating, Movie.title, Movie.year
FROM Rating
INNER JOIN Movie ON Rating.mID = Movie.mID
ORDER BY Movie.year DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the names of movies whose created year is after all movies directed by Steven Spielberg?*/


SELECT title 
FROM Movie 
WHERE year > (SELECT MAX(year) 
              FROM Movie 
              WHERE director = 'Steven Spielberg')

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all movies that were created after the most recent Steven Spielberg film?*/


SELECT title 
FROM Movie 
WHERE year > (SELECT MAX(year) 
              FROM Movie 
              WHERE director = 'Steven Spielberg')

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the titles and directors of the movies whose star is greater than the average stars of the movies directed by James Cameron?*/


SELECT title, director 
FROM Movie 
WHERE director = 'James Cameron' 
AND stars > (SELECT AVG(stars) 
             FROM Rating 
             WHERE mID IN (SELECT mID 
                           FROM Movie 
                           WHERE director = 'James Cameron')) 

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the titles and directors of all movies that have a rating higher than the average James Cameron film rating?*/


SELECT title, director
FROM Movie
WHERE mID IN (SELECT mID
              FROM Rating
              WHERE rID IN (SELECT rID
                            FROM Reviewer
                            WHERE name = 'James Cameron')
              GROUP BY mID
              HAVING AVG(stars) < (SELECT AVG(stars)
                                   FROM Rating
                                   WHERE rID IN (SELECT rID
                                                 FROM Reviewer
                                                 WHERE name = 'James Cameron'))) 

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Return reviewer name, movie title, stars, and ratingDate. And sort the data first by reviewer name, then by movie title, and lastly by number of stars.*/


SELECT Reviewer.name, Movie.title, Rating.stars, Rating.ratingDate
FROM Reviewer
INNER JOIN Rating ON Reviewer.rID = Rating.rID
INNER JOIN Movie ON Rating.mID = Movie.mID
ORDER BY Reviewer.name, Movie.title, Rating.stars

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the reviewer name, film title, movie rating, and rating date  for every movie ordered by reviewer name, movie title, then finally rating?*/


SELECT Reviewer.name, Movie.title, Rating.stars, Rating.ratingDate
FROM Reviewer
INNER JOIN Rating ON Reviewer.rID = Rating.rID
INNER JOIN Movie ON Rating.mID = Movie.mID
ORDER BY Reviewer.name, Movie.title, Rating.stars, Rating.ratingDate

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the names of all reviewers who have contributed three or more ratings.*/


SELECT name 
FROM Reviewer 
WHERE rID IN (SELECT rID 
              FROM Rating 
              GROUP BY rID 
              HAVING COUNT(*) >= 3)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all reviewers that have rated 3 or more movies?*/


SELECT name
FROM Reviewer
WHERE rID IN (SELECT rID
              FROM Rating
              GROUP BY rID
              HAVING COUNT(*) >= 3)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the names of all reviewers who rated Gone with the Wind.*/


SELECT Reviewer.name 
FROM Reviewer 
INNER JOIN Rating 
ON Reviewer.rID = Rating.rID 
INNER JOIN Movie 
ON Rating.mID = Movie.mID 
WHERE Movie.title = 'Gone with the Wind'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all the different reviewers who rates Gone with the Wind?*/


SELECT Reviewer.name 
FROM Reviewer 
INNER JOIN Rating ON Reviewer.rID = Rating.rID 
INNER JOIN Movie ON Rating.mID = Movie.mID 
WHERE Movie.title = 'Gone with the Wind'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the names of all directors whose movies are rated by Sarah Martinez.*/


SELECT DISTINCT director 
FROM Movie 
INNER JOIN Rating ON Movie.mID = Rating.mID 
INNER JOIN Reviewer ON Rating.rID = Reviewer.rID 
WHERE Reviewer.name = 'Sarah Martinez'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all directors whose movies have been reviewed by Sarah Martinez?*/


SELECT DISTINCT director 
FROM Movie 
INNER JOIN Rating ON Movie.mID = Rating.mID 
INNER JOIN Reviewer ON Rating.rID = Reviewer.rID 
WHERE Reviewer.name = 'Sarah Martinez'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to For any rating where the name of reviewer is the same as the director of the movie, return the reviewer name, movie title, and number of stars.*/


SELECT Reviewer.name, Movie.title, Rating.stars
FROM Reviewer
INNER JOIN Rating ON Reviewer.rID = Rating.rID
INNER JOIN Movie ON Rating.mID = Movie.mID
WHERE Reviewer.name = Movie.director

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the different reviewer names, movie titles, and stars for every rating where the reviewer had the same name as the director?*/


SELECT r.name, m.title, r.stars 
FROM Movie m 
INNER JOIN Rating r ON m.mID = r.mID 
INNER JOIN Reviewer rev ON r.rID = rev.rID 
WHERE m.director = rev.name

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Return all reviewer names and movie names together in a single list.*/


SELECT Reviewer.name, Movie.title 
FROM Reviewer 
INNER JOIN Rating ON Reviewer.rID = Rating.rID 
INNER JOIN Movie ON Rating.mID = Movie.mID

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all the reviewers and movie names?*/


SELECT Reviewer.name, Movie.title
FROM Reviewer
INNER JOIN Rating ON Reviewer.rID = Rating.rID
INNER JOIN Movie ON Rating.mID = Movie.mID

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the titles of all movies not reviewed by Chris Jackson.*/


SELECT title 
FROM Movie 
WHERE mID NOT IN (SELECT mID 
                  FROM Rating 
                  WHERE rID IN (SELECT rID 
                                FROM Reviewer 
                                WHERE name = 'Chris Jackson'))

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the titles of all movies that were not reviewed by Chris Jackson?*/


SELECT title 
FROM Movie 
WHERE mID NOT IN (SELECT mID 
                  FROM Rating 
                  WHERE rID IN (SELECT rID 
                                FROM Reviewer 
                                WHERE name = 'Chris Jackson'))

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to For all directors who directed more than one movie, return the titles of all movies directed by them, along with the director name. Sort by director name, then movie title.*/


SELECT DISTINCT m.title, m.director 
FROM Movie m 
INNER JOIN (SELECT director, COUNT(*) AS num_movies 
            FROM Movie 
            GROUP BY director 
            HAVING num_movies > 1) d 
ON m.director = d.director 
ORDER BY m.director, m.title

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer For all directors who have directed more than one movie, what movies have they directed and what are their names?*/


SELECT DISTINCT director, title 
FROM Movie 
WHERE director IN (SELECT director 
                   FROM Movie 
                   GROUP BY director 
                   HAVING COUNT(*) > 1) 
ORDER BY director

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to For directors who had more than one movie, return the titles and produced years of all movies directed by them.*/


SELECT title, year 
FROM Movie 
WHERE director IN (SELECT director 
                   FROM Movie 
                   GROUP BY director 
                   HAVING COUNT(*) > 1) 
ORDER BY director

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer For each director who directed more than one movie, what are the titles and dates of release for all those movies?*/


SELECT title, year 
FROM Movie 
WHERE director IN (SELECT director 
                   FROM Movie 
                   GROUP BY director 
                   HAVING COUNT(*) > 1) 
ORDER BY year

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of the directors who made exactly one movie?*/


SELECT DISTINCT director 
FROM Movie 
WHERE mID IN (SELECT mID 
              FROM Movie 
              GROUP BY director 
              HAVING COUNT(*) = 1)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all directors who made one movie?*/


SELECT DISTINCT director 
FROM Movie 
GROUP BY director 
HAVING COUNT(*) = 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of the directors who made exactly one movie excluding director NULL?*/


SELECT DISTINCT director 
FROM Movie 
WHERE director IS NOT NULL 
GROUP BY director 
HAVING COUNT(*) = 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all directors who have made one movie except for the director named NULL?*/


SELECT DISTINCT director 
FROM Movie 
WHERE director != 'NULL' 
GROUP BY director 
HAVING COUNT(*) = 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer How many movie reviews does each director get?*/


SELECT director, COUNT(*) AS 'Number of Reviews'
FROM Movie
INNER JOIN Rating ON Movie.mID = Rating.mID
GROUP BY director

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer For each director, how many reviews have they received?*/


SELECT director, COUNT(*) AS 'Number of Reviews'
FROM Movie
INNER JOIN Rating ON Movie.mID = Rating.mID
GROUP BY director

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the movies with the highest average rating. Return the movie titles and average rating.*/


SELECT title, AVG(stars) AS AverageRating
FROM Movie
INNER JOIN Rating ON Movie.mID = Rating.mID
GROUP BY title
ORDER BY AverageRating DESC

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the movie titles with the highest average rating and what are those ratings?*/


SELECT title, AVG(stars) AS avg_rating
FROM Movie
JOIN Rating ON Movie.mID = Rating.mID
GROUP BY title
ORDER BY avg_rating DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the movie titles and average rating of the movies with the lowest average rating?*/


SELECT title, AVG(stars) AS avg_rating
FROM Movie
INNER JOIN Rating ON Movie.mID = Rating.mID
GROUP BY title
ORDER BY avg_rating ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the titles and average ratings for all movies that have the lowest average rating?*/


SELECT title, AVG(stars) AS avg_rating
FROM Movie
INNER JOIN Rating ON Movie.mID = Rating.mID
GROUP BY title
ORDER BY avg_rating ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names and years of the movies that has the top 3 highest rating star?*/


SELECT title, year 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
ORDER BY stars DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names and years released for the movies with the top 3 highest ratings?*/


SELECT title, year 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
ORDER BY stars DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to For each director, return the director's name together with the title of the movie they directed that received the highest rating among all of their movies, and the value of that rating. Ignore movies whose director is NULL.*/


SELECT director, title, MAX(stars)
FROM Movie
JOIN Rating ON Movie.mID = Rating.mID
WHERE director IS NOT NULL
GROUP BY director, title

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer For each director, what are the titles and ratings for all the movies they reviewed?*/


SELECT Movie.title, Rating.stars 
FROM Movie 
INNER JOIN Rating ON Movie.mID = Rating.mID 
WHERE Movie.director = Rating.rID

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the title and star rating of the movie that got the least rating star for each reviewer.*/


SELECT m.title, r.stars 
FROM Movie m 
INNER JOIN Rating r ON m.mID = r.mID 
INNER JOIN (SELECT rID, MIN(stars) AS min_stars 
            FROM Rating 
            GROUP BY rID) AS min_rating 
ON r.rID = min_rating.rID 
AND r.stars = min_rating.min_stars

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer For each reviewer id, what is the title and rating for the movie with the smallest rating?*/


SELECT r.rID, m.title, r.stars 
FROM Reviewer r 
INNER JOIN Rating rt ON r.rID = rt.rID 
INNER JOIN Movie m ON m.mID = rt.mID 
WHERE rt.stars = (SELECT MIN(stars) FROM Rating WHERE rID = r.rID) 
ORDER BY r.rID

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the title and score of the movie with the lowest rating among all movies directed by each director.*/


SELECT title, MIN(stars) 
FROM Movie 
INNER JOIN Rating ON Movie.mID = Rating.mID 
GROUP BY director

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer For each director, what is the title and score of their most poorly rated movie?*/


SELECT m.title, r.stars 
FROM Movie m 
INNER JOIN Rating r ON m.mID = r.mID 
WHERE m.director = ? 
ORDER BY r.stars ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the name of the movie that is rated by most of times?*/


SELECT title 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
GROUP BY title 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the name of the movie that has been reviewed the most?*/


SELECT title 
FROM Movie 
WHERE mID IN (SELECT mID 
              FROM Rating 
              GROUP BY mID 
              ORDER BY COUNT(*) DESC 
              LIMIT 1)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the titles of all movies that have rating star is between 3 and 5?*/


SELECT title 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
WHERE Rating.stars BETWEEN 3 AND 5

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the titles of all movies that have between 3 and 5 stars?*/


SELECT title 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
WHERE stars BETWEEN 3 AND 5

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the names of reviewers who had given higher than 3 star ratings.*/


SELECT Reviewer.name 
FROM Reviewer 
INNER JOIN Rating 
ON Reviewer.rID = Rating.rID 
WHERE Rating.stars > 3

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of the reviewers who have rated a movie more than 3 stars before?*/


SELECT r.name 
FROM Reviewer r 
INNER JOIN Rating ra ON r.rID = ra.rID 
WHERE ra.stars > 3

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the average rating star for each movie that are not reviewed by Brittany Harris.*/


SELECT m.title, AVG(r.stars) AS avg_stars
FROM Movie m
JOIN Rating r ON m.mID = r.mID
JOIN Reviewer rev ON r.rID = rev.rID
WHERE rev.name != 'Brittany Harris'
GROUP BY m.title

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What is the average rating for each movie that has never been reviewed by Brittany Harris?*/


SELECT m.title, AVG(r.stars)
FROM Movie m
LEFT JOIN Rating r ON m.mID = r.mID
LEFT JOIN Reviewer rev ON r.rID = rev.rID
WHERE rev.name != 'Brittany Harris'
GROUP BY m.title

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to What are the ids of the movies that are not reviewed by Brittany Harris.*/


SELECT mID 
FROM Movie 
WHERE mID NOT IN (SELECT mID 
                  FROM Rating 
                  WHERE rID IN (SELECT rID 
                                FROM Reviewer 
                                WHERE name = 'Brittany Harris'))

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the ids of all moviest hat have not been reviewed by Britanny Harris?*/


SELECT mID 
FROM Movie 
WHERE mID NOT IN (SELECT mID 
                  FROM Rating 
                  WHERE rID IN (SELECT rID 
                                FROM Reviewer 
                                WHERE name = 'Britanny Harris'))

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the average rating star for each movie that received at least 2 ratings.*/


SELECT mID, AVG(stars) 
FROM Rating 
GROUP BY mID 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer For each movie that received more than 3 reviews, what is the average rating?*/


SELECT m.title, AVG(r.stars)
FROM Movie m
INNER JOIN Rating r ON m.mID = r.mID
GROUP BY m.title
HAVING COUNT(r.mID) > 3

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to find the ids of reviewers who did not give 4 star.*/


SELECT rID 
FROM Reviewer 
WHERE rID NOT IN (SELECT rID FROM Rating WHERE stars = 4)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the ids of all reviewers who did not give 4 stars?*/


SELECT rID
FROM Reviewer
WHERE rID NOT IN (SELECT rID FROM Rating WHERE stars = 4)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to Find the ids of reviewers who didn't only give 4 star.*/


SELECT rID 
FROM Reviewer 
WHERE rID NOT IN (SELECT rID FROM Rating WHERE stars = 4)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the ids of all reviewers who have not given 4 stars at least once?*/


SELECT rID
FROM Reviewer
WHERE rID NOT IN (SELECT rID FROM Rating WHERE stars = 4)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are names of the movies that are either made after 2000 or reviewed by Brittany Harris?*/


SELECT title 
FROM Movie 
WHERE year > 2000 
OR mID IN (SELECT mID 
            FROM Rating 
            WHERE rID IN (SELECT rID 
                          FROM Reviewer 
                          WHERE name = 'Brittany Harris'))

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all movies that were made after 2000 or reviewed by Brittany Harris?*/


SELECT title 
FROM Movie 
WHERE year > 2000 
OR mID IN (SELECT mID 
            FROM Rating 
            WHERE rID IN (SELECT rID 
                          FROM Reviewer 
                          WHERE name = 'Brittany Harris'))

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are names of the movies that are either made before 1980 or directed by James Cameron?*/


SELECT title 
FROM Movie 
WHERE year < 1980 OR director = 'James Cameron'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all movies made before 1980 or had James Cameron as the director?*/


SELECT title 
FROM Movie 
WHERE year < 1980 OR director = 'James Cameron'

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of reviewers who had rated 3 star and 4 star?*/


SELECT name 
FROM Reviewer 
INNER JOIN Rating 
ON Reviewer.rID = Rating.rID 
WHERE Rating.stars IN (3,4)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all reviewers that have given 3 or 4 stars for reviews?*/


SELECT Reviewer.name 
FROM Reviewer 
INNER JOIN Rating 
ON Reviewer.rID = Rating.rID 
WHERE Rating.stars >= 3 AND Rating.stars <= 4

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of movies that get 3 star and 4 star?*/


SELECT title 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
WHERE stars IN (3,4)

/*Here are Mysql tables, with their properties:

Movie(mID, title, year, director)
Reviewer(rID, name)
Rating(rID, mID, stars, ratingDate)

Create a SQL request to answer What are the names of all movies that received 3 or 4 stars?*/


SELECT title 
FROM Movie 
INNER JOIN Rating 
ON Movie.mID = Rating.mID 
WHERE stars >= 3 AND stars <= 4

