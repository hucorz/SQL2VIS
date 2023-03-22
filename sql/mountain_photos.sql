/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer How many camera lenses have a focal length longer than 15 mm?*/


SELECT COUNT(*) 
FROM camera_lens 
WHERE focal_length_mm > 15

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to Find the brand and name for each camera lens, and sort in descending order of maximum aperture.*/


SELECT brand, name, max_aperture
FROM camera_lens
ORDER BY max_aperture DESC

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to List the id, color scheme, and name for all the photos.*/


SELECT photos.id, photos.color, photos.name
FROM photos

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer What are the maximum and average height of the mountains?*/


SELECT MAX(Height) AS MaxHeight, AVG(Height) AS AvgHeight FROM mountain

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer What are the average prominence of the mountains in country 'Morocco'?*/


SELECT AVG(Prominence)
FROM mountain
WHERE Country = 'Morocco'

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer What are the name, height and prominence of mountains which do not belong to the range 'Aberdare Range'?*/


SELECT name, height, prominence FROM mountain WHERE range != 'Aberdare Range'

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer What are the id and name of the photos for mountains?*/


SELECT photos.id, photos.name 
FROM photos 
INNER JOIN mountain ON photos.mountain_id = mountain.id

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer What are the id and name of the mountains that have at least 2 photos?*/


SELECT mountain.id, mountain.name
FROM mountain
INNER JOIN photos ON mountain.id = photos.mountain_id
GROUP BY mountain.id, mountain.name
HAVING COUNT(photos.id) >= 2

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer What are the names of the cameras that have taken picture of the most mountains?*/


SELECT c.name, COUNT(p.mountain_id) AS mountain_count
FROM camera_lens c
INNER JOIN photos p ON c.id = p.camera_lens_id
GROUP BY c.name
ORDER BY mountain_count DESC

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer What are the names of photos taken with the lens brand 'Sigma' or 'Olympus'?*/


SELECT photos.name 
FROM photos 
INNER JOIN camera_lens 
ON photos.camera_lens_id = camera_lens.id 
WHERE camera_lens.brand = 'Sigma' OR camera_lens.brand = 'Olympus'

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer How many different kinds of lens brands are there?*/


SELECT COUNT(DISTINCT brand) FROM camera_lens

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer How many camera lenses are not used in taking any photos?*/


SELECT COUNT(*)
FROM camera_lens
WHERE id NOT IN (SELECT camera_lens_id FROM photos)

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to answer How many distinct kinds of camera lenses are used to take photos of mountains in the country 'Ethiopia'?*/


SELECT COUNT(DISTINCT camera_lens.id)
FROM camera_lens
INNER JOIN photos ON camera_lens.id = photos.camera_lens_id
INNER JOIN mountain ON mountain.id = photos.mountain_id
WHERE mountain.country = 'Ethiopia'

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to List the brands of lenses that took both a picture of mountains with range 'Toubkal Atlas' and a picture of mountains with range 'Lasta Massif'*/


SELECT DISTINCT brand 
FROM camera_lens 
INNER JOIN photos ON camera_lens.id = photos.camera_lens_id 
INNER JOIN mountain ON photos.mountain_id = mountain.id 
WHERE mountain.Range = 'Toubkal Atlas' OR mountain.Range = 'Lasta Massif'

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to Show the name and prominence of the mountains whose picture is not taken by a lens of brand 'Sigma'.*/


SELECT mountain.name, mountain.Prominence
FROM mountain
LEFT JOIN photos ON mountain.id = photos.mountain_id
LEFT JOIN camera_lens ON photos.camera_lens_id = camera_lens.id
WHERE camera_lens.brand != 'Sigma'
GROUP BY mountain.name, mountain.Prominence

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to List the camera lens names containing substring "Digital".*/


SELECT name 
FROM camera_lens 
WHERE name LIKE '%Digital%'

/*Here are Mysql tables, with their properties:

mountain(id, name, Height, Prominence, Range, Country)
camera_lens(id, brand, name, focal_length_mm, max_aperture)
photos(id, camera_lens_id, mountain_id, color, name)

Create a SQL request to What is the name of each camera lens and the number of photos taken by it? Order the result by the count of photos.*/


SELECT camera_lens.name, COUNT(photos.id) AS photo_count
FROM camera_lens
LEFT JOIN photos ON camera_lens.id = photos.camera_lens_id
GROUP BY camera_lens.name
ORDER BY photo_count DESC

