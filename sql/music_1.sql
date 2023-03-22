/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the name of the song that was released in the most recent year?*/


SELECT song_name 
FROM song 
ORDER BY releasedate DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the name of the song that was released most recently?*/


SELECT song_name 
FROM song 
ORDER BY releasedate DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the id of the longest song?*/


SELECT f_id 
FROM files 
ORDER BY duration DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the id of the song that lasts the longest.*/


SELECT f_id 
FROM files 
ORDER BY duration DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the names of all English songs.*/


SELECT song_name 
FROM song 
WHERE languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of all songs in English?*/


SELECT song_name 
FROM song 
WHERE languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to What are the id of songs whose format is mp3.*/


SELECT f_id 
FROM files 
WHERE formats = 'mp3'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the id of all the files in mp3 format?*/


SELECT f_id FROM files WHERE formats = 'mp3'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to List the name and country of origin for all singers who have produced songs with rating above 9.*/


SELECT artist_name, country FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE song.rating > 9

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the different names and countries of origins for all artists whose song ratings are above 9?*/


SELECT artist_name, country 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE song.rating > 9

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to List the file size and format for all songs that have resolution lower than 800.*/


SELECT file_size, formats 
FROM files 
INNER JOIN song 
ON files.f_id = song.f_id 
WHERE resolution < 800

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the file sizes and formats for all songs with a resolution lower than 800?*/


SELECT file_size, formats 
FROM files 
INNER JOIN song 
ON files.f_id = song.f_id 
WHERE resolution < 800

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the name of the artist who produced the shortest song?*/


SELECT artist_name 
FROM song 
INNER JOIN files ON song.f_id = files.f_id 
ORDER BY files.duration ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the artists who sang the shortest song?*/


SELECT artist_name 
FROM song 
INNER JOIN files ON song.f_id = files.f_id 
ORDER BY files.duration ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to What are the names and countries of origin for the artists who produced the top three highly rated songs.*/


SELECT artist_name, country 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE song.rating IN (SELECT MAX(rating) FROM song ORDER BY rating DESC LIMIT 3) 
ORDER BY rating DESC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the singers who sang the top 3 most highly rated songs and what countries do they hail from?*/


SELECT artist_name, country 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
INNER JOIN genre ON song.genre_is = genre.g_name 
WHERE rating = (SELECT MAX(rating) FROM genre) 
ORDER BY rating DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer How many songs have 4 minute duration?*/


SELECT COUNT(*) 
FROM song 
INNER JOIN files 
ON song.f_id = files.f_id 
WHERE files.duration = '4 minutes'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the count of the songs that last approximately 4 minutes?*/


SELECT COUNT(*) 
FROM song 
WHERE duration BETWEEN 240 AND 260

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer How many artists are from Bangladesh?*/


SELECT COUNT(*) 
FROM artist 
WHERE country = 'Bangladesh'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer How many Bangladeshi artists are listed?*/


SELECT COUNT(*) 
FROM artist 
WHERE country = 'Bangladesh'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the average rating of songs produced by female artists?*/


SELECT AVG(rating)
FROM song
INNER JOIN artist
ON song.artist_name = artist.artist_name
WHERE artist.gender = 'female'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer How many songs, on average, are sung by a female artist?*/


SELECT AVG(COUNT(song_name)) 
FROM song 
WHERE artist_name IN (SELECT artist_name FROM artist WHERE gender = 'female')

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the most popular file format?*/


SELECT formats, COUNT(*) AS Popularity
FROM files
GROUP BY formats
ORDER BY Popularity DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the file format that is used by the most files.*/


SELECT formats, COUNT(*) AS num_files
FROM files
GROUP BY formats
ORDER BY num_files DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the names of the artists who are from UK and have produced English songs.*/


SELECT artist_name 
FROM artist 
INNER JOIN song 
ON artist.artist_name = song.artist_name 
WHERE artist.country = 'UK' 
AND song.languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the artists that are from the UK and sang songs in English?*/


SELECT artist_name 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE artist.country = 'UK' AND song.languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the id of songs that are available in mp4 format and have resolution lower than 1000.*/


SELECT f_id 
FROM files 
WHERE formats = 'mp4' AND resolution < 1000

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the id of the files that are available in the format of mp4 and a resolution smaller than 1000?*/


SELECT f_id 
FROM files 
WHERE formats = 'mp4' AND resolution < 1000

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the country of origin of the artist who is female and produced a song in Bangla?*/


SELECT country FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE gender = 'female' AND languages = 'Bangla'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What countries are the female artists who sung in the language Bangla from?*/


SELECT country 
FROM artist 
WHERE gender = 'female' 
AND preferred_genre IN (SELECT genre_is 
                        FROM song 
                        WHERE languages = 'Bangla')

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the average duration of songs that have mp3 format and resolution below 800?*/


SELECT AVG(duration) 
FROM song 
INNER JOIN files 
ON song.f_id = files.f_id 
WHERE files.formats = 'mp3' 
AND song.resolution < 800

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the average song duration for the songs that are in mp3 format and whose resolution below 800?*/


SELECT AVG(duration) 
FROM song 
INNER JOIN files 
ON song.f_id = files.f_id 
WHERE files.formats = 'mp3' 
AND song.resolution < 800

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the number of artists for each gender?*/


SELECT gender, COUNT(artist_name) AS 'Number of Artists'
FROM artist
GROUP BY gender

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer How many artists are male and how many are female?*/


SELECT gender, COUNT(*) 
FROM artist 
GROUP BY gender

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the average rating of songs for each language?*/


SELECT languages, AVG(rating)
FROM song
GROUP BY languages

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the average song rating for each language?*/


SELECT languages, AVG(rating)
FROM song
GROUP BY languages

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Return the gender and name of artist who produced the song with the lowest resolution.*/


SELECT artist_name, gender 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
ORDER BY resolution ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the gender and name of the artist who sang the song with the smallest resolution?*/


SELECT artist_name, gender 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE resolution = (SELECT MIN(resolution) FROM song) 

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to For each file format, return the number of artists who released songs in that format.*/


SELECT formats, COUNT(DISTINCT artist_name) 
FROM files 
GROUP BY formats

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer How many songs were released for each format?*/


SELECT formats, COUNT(*) AS 'Number of Songs'
FROM files
GROUP BY formats

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the distinct names of all songs that have a higher resolution than some songs in English.*/


SELECT DISTINCT song_name 
FROM song 
WHERE resolution > (SELECT resolution FROM song WHERE languages = 'English') 
AND languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the different names for all songs that have a higher resolution than English songs?*/


SELECT song_name 
FROM song 
WHERE resolution > (SELECT resolution FROM song WHERE languages = 'English') 
GROUP BY song_name

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of all songs that have a lower rating than some song of blues genre?*/


SELECT song_name 
FROM song 
WHERE genre_is = 'Blues' AND rating < (SELECT rating FROM song WHERE genre_is = 'Blues' LIMIT 1)

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the songs that have a lower rating than at least one blues song?*/


SELECT song_name 
FROM song 
WHERE rating < (SELECT rating FROM song WHERE genre_is = 'blues') 
AND genre_is != 'blues'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the name and country of origin of the artist who released a song that has "love" in its title?*/


SELECT artist_name, country FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE song_name LIKE '%love%'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the artists who released a song that has the word love in its title, and where are the artists from?*/


SELECT artist_name, country 
FROM artist 
INNER JOIN song 
ON artist.artist_name = song.artist_name 
WHERE song_name LIKE '%love%'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to List the name and gender for all artists who released songs in March.*/


SELECT artist_name, gender 
FROM artist 
INNER JOIN song 
ON artist.artist_name = song.artist_name 
WHERE MONTH(releasedate) = 3

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names and genders of all artists who released songs in the month of March?*/


SELECT artist_name, gender 
FROM artist 
INNER JOIN song 
ON artist.artist_name = song.artist_name 
WHERE MONTH(releasedate) = 3

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to List the names of all genres in alphabetical oder, together with its ratings.*/


SELECT g_name, rating FROM genre ORDER BY g_name ASC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of all genres in alphabetical order, combined with its ratings?*/


SELECT g_name, rating
FROM genre
ORDER BY g_name ASC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Give me a list of the names of all songs ordered by their resolution.*/


SELECT song_name 
FROM song 
ORDER BY resolution

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of all songs that are ordered by their resolution numbers?*/


SELECT song_name 
FROM song 
ORDER BY resolution

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the ids of songs that are available in either mp4 format or have resolution above 720?*/


SELECT f_id 
FROM files 
WHERE formats = 'mp4' OR resolution > 720

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the ids of all songs that are available on mp4 or have a higher resolution than 720?*/


SELECT f_id 
FROM files 
INNER JOIN song 
ON files.artist_name = song.artist_name 
WHERE formats LIKE '%mp4%' OR resolution > 720

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to List the names of all songs that have 4 minute duration or are in English.*/


SELECT song_name 
FROM song 
WHERE duration = 240 OR languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of all songs that are approximately 4 minutes long or are in English?*/


SELECT song_name 
FROM song 
WHERE duration BETWEEN 3.5 AND 4.5 
OR languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the language used most often in the songs?*/


SELECT languages, COUNT(*) AS language_count
FROM song
GROUP BY languages
ORDER BY language_count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the languages that are used most often in songs?*/


SELECT languages, COUNT(*) AS language_count
FROM song
GROUP BY languages
ORDER BY language_count DESC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the language that was used most often in songs with resolution above 500?*/


SELECT languages 
FROM song 
WHERE resolution > 500 
GROUP BY languages 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the name of the artist, for each language, that has the most songs with a higher resolution than 500?*/


SELECT artist_name 
FROM song 
WHERE resolution > 500 
GROUP BY artist_name, languages 
ORDER BY COUNT(*) DESC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of artists who are Male and are from UK?*/


SELECT artist_name 
FROM artist 
WHERE gender = 'Male' AND country = 'UK'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of all male British artists?*/


SELECT artist_name 
FROM artist 
WHERE country = 'British' AND gender = 'Male'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the names of songs whose genre is modern or language is English.*/


SELECT song_name 
FROM song 
WHERE genre_is = 'modern' OR languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the songs that are modern or sung in English?*/


SELECT song_name 
FROM song 
WHERE genre_is = 'modern' OR languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Return the names of songs for which format is mp3 and resolution is below 1000.*/


SELECT song_name 
FROM song 
INNER JOIN files 
ON song.f_id = files.f_id 
WHERE files.formats = 'mp3' 
AND song.resolution < 1000

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of all songs that are in mp3 format and have a resolution lower than 1000?*/


SELECT song_name 
FROM song 
INNER JOIN files 
ON song.f_id = files.f_id 
WHERE files.formats = 'mp3' 
AND song.resolution < 1000

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Return the names of singers who are from UK and released an English song.*/


SELECT artist_name 
FROM artist 
INNER JOIN song 
ON artist.artist_name = song.artist_name 
WHERE artist.country = 'UK' 
AND song.languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of all singers that are from the UK and released a song in English?*/


SELECT artist_name 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE country = 'UK' AND languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the average rating and resolution of songs that are in Bangla?*/


SELECT AVG(rating), AVG(resolution)
FROM song
WHERE languages = 'Bangla'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the average rating and resolution of all bangla songs?*/


SELECT AVG(rating), AVG(resolution)
FROM song
WHERE languages = 'Bangla'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the maximum and minimum resolution of songs whose duration is 3 minutes?*/


SELECT MAX(resolution), MIN(resolution) 
FROM song 
WHERE duration = 3

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the maximum and minimum resolution of all songs that are approximately 3 minutes long?*/


SELECT MAX(resolution), MIN(resolution)
FROM song
WHERE duration BETWEEN 180 AND 210

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the maximum duration and resolution of songs grouped and ordered by languages?*/


SELECT languages, MAX(duration) AS max_duration, MAX(resolution) AS max_resolution
FROM song
GROUP BY languages
ORDER BY languages

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the maximum duration and resolution of all songs, for each language, ordered alphabetically by language?*/


SELECT languages, MAX(duration) AS max_duration, MAX(resolution) AS max_resolution
FROM song
GROUP BY languages
ORDER BY languages ASC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the shortest duration and lowest rating of songs grouped by genre and ordered by genre?*/


SELECT g_name, MIN(duration) AS shortest_duration, MIN(rating) AS lowest_rating
FROM genre
JOIN song ON genre.g_name = song.genre_is
GROUP BY g_name
ORDER BY g_name

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the shortest and most poorly rated song for each genre, ordered alphabetically by genre?*/


SELECT g_name, song_name, duration, rating
FROM genre
JOIN song ON genre.g_name = song.genre_is
ORDER BY g_name ASC, duration ASC, rating ASC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the names and number of works of all artists who have at least one English songs.*/


SELECT artist_name, COUNT(*) 
FROM song 
WHERE languages = 'English' 
GROUP BY artist_name

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names and number of works for all artists who have sung at least one song in English?*/


SELECT artist_name, COUNT(*) 
FROM song 
WHERE languages = 'English' 
GROUP BY artist_name

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the name and country of origin for all artists who have release at least one song of resolution above 900.*/


SELECT artist_name, country FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE resolution > 900

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the name and country of origin for each artist who has released a song with a resolution higher than 900?*/


SELECT artist_name, country FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE resolution > 900

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the names and number of works of the three artists who have produced the most songs.*/


SELECT artist_name, COUNT(*) AS num_works 
FROM song 
GROUP BY artist_name 
ORDER BY num_works DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the three artists who have produced the most songs, and how many works did they produce?*/


SELECT artist_name, COUNT(*) AS total_songs
FROM song
GROUP BY artist_name
ORDER BY total_songs DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer Find the country of origin for the artist who made the least number of songs?*/


SELECT country FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
GROUP BY country 
ORDER BY COUNT(*) ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What country is the artist who made the fewest songs from?*/


SELECT country, COUNT(*) AS num_songs
FROM artist
JOIN song ON artist.artist_name = song.artist_name
GROUP BY country
ORDER BY num_songs ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the songs whose rating is below the rating of all songs in English?*/


SELECT song_name 
FROM song 
WHERE rating < (SELECT MIN(rating) FROM song WHERE languages = 'English')

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the song names for every song whose rating is less than the minimum rating for English songs?*/


SELECT song_name 
FROM song 
WHERE rating < (SELECT MIN(rating) FROM song WHERE languages = 'English') 
AND languages = 'English'

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is ids of the songs whose resolution is higher than the resolution of any songs with rating lower than 8?*/


SELECT song.f_id
FROM song
WHERE song.resolution > (SELECT MAX(song.resolution)
                         FROM song
                         WHERE song.rating < 8) 

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the id of every song that has a resolution higher than that of a song with a rating below 8?*/


SELECT f_id 
FROM song 
WHERE resolution > (SELECT resolution 
                    FROM song 
                    WHERE rating < 8) 
ORDER BY f_id

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is ids of the songs whose resolution is higher than the average resolution of songs in modern genre?*/


SELECT song.f_id
FROM song
INNER JOIN genre ON song.genre_is = genre.g_name
WHERE genre.g_name = 'modern'
AND song.resolution > (SELECT AVG(resolution) FROM song WHERE genre_is = 'modern')

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the ids of all songs that have higher resolution of the average resolution in the modern genre?*/


SELECT f_id 
FROM song 
WHERE genre_is = 'modern' 
AND resolution > (SELECT AVG(resolution) FROM song WHERE genre_is = 'modern')

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the top 3 artists who have the largest number of songs works whose language is Bangla.*/


SELECT artist_name, COUNT(*) AS num_songs
FROM song
WHERE languages = 'Bangla'
GROUP BY artist_name
ORDER BY num_songs DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the top 3 artists with the largest number of songs in the language Bangla?*/


SELECT artist_name, COUNT(*) AS num_songs
FROM song
WHERE languages = 'Bangla'
GROUP BY artist_name
ORDER BY num_songs DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to List the id, genre and artist name of English songs ordered by rating.*/


SELECT f_id, genre_is, artist_name 
FROM song 
WHERE languages = 'English' 
ORDER BY rating DESC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the id, genre, and name of the artist for every English song ordered by ascending rating?*/


SELECT f_id, genre.g_name, artist.artist_name 
FROM song 
INNER JOIN genre ON song.genre_is = genre.g_name 
INNER JOIN artist ON song.artist_name = artist.artist_name 
WHERE song.languages = 'English' 
ORDER BY song.rating ASC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer List the duration, file size and format of songs whose genre is pop, ordered by title?*/


SELECT duration, file_size, formats 
FROM files 
INNER JOIN song ON files.f_id = song.f_id 
INNER JOIN genre ON song.genre_is = genre.g_name 
WHERE genre.g_name = 'pop' 
ORDER BY song_name

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What is the duration, file size, and song format for every pop song, ordered by title alphabetically?*/


SELECT song_name, duration, file_size, formats 
FROM song 
INNER JOIN files ON song.f_id = files.f_id 
INNER JOIN genre ON song.genre_is = genre.g_name 
WHERE genre.rating = 'pop' 
ORDER BY song_name ASC

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the names of the artists who have produced English songs but have never received rating higher than 8.*/


SELECT artist_name 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE song.languages = 'English' 
AND song.rating <= 8

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the different artists that have produced a song in English but have never receieved a rating higher than 8?*/


SELECT artist_name 
FROM artist 
INNER JOIN song ON artist.artist_name = song.artist_name 
WHERE song.languages = 'English' 
AND song.rating <= 8

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to Find the names of the artists who are from Bangladesh and have never received rating higher than 7.*/


SELECT artist_name 
FROM artist 
WHERE country = 'Bangladesh' 
AND NOT EXISTS (SELECT * FROM genre WHERE artist_name = artist.artist_name AND rating > 7)

/*Here are Mysql tables, with their properties:

genre(g_name, rating, most_popular_in)
artist(artist_name, country, gender, preferred_genre, CONSTRAINT)
files(f_id, artist_name, file_size, duration, formats)
song(song_name, artist_name, country, f_id, genre_is, rating, languages, releasedate, resolution, CONSTRAINT)

Create a SQL request to answer What are the names of the different artists from Bangladesh who never received a rating higher than a 7?*/


SELECT artist_name 
FROM artist 
WHERE country = 'Bangladesh' 
AND NOT EXISTS (SELECT * FROM genre WHERE rating > 7 AND artist_name = artist.artist_name)

