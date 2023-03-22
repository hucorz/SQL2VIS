/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many friends does Dan have?*/


SELECT COUNT(*) 
FROM PersonFriend 
WHERE name = 'Dan'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many friends does Dan have?*/


SELECT COUNT(*) 
FROM PersonFriend 
WHERE name = 'Dan'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many females does this network has?*/


SELECT COUNT(*) 
FROM Person 
WHERE gender = 'female'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many females are in the network?*/


SELECT COUNT(*) 
FROM Person 
WHERE gender = 'female'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the average age for all person?*/


SELECT AVG(age) FROM Person

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the average age for all people in the table?*/


SELECT AVG(age) FROM Person

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many different cities are they from?*/


SELECT COUNT(DISTINCT city) FROM Person

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many different cities do people originate from?*/


SELECT COUNT(DISTINCT city) FROM Person

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many type of jobs do they have?*/


SELECT COUNT(DISTINCT job) FROM Person

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many different jobs are listed?*/


SELECT COUNT(DISTINCT job) FROM Person

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who is the oldest person?*/


SELECT name, MAX(age) 
FROM Person 
GROUP BY name

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the name of the person who is the oldest?*/


SELECT name 
FROM Person 
ORDER BY age DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who is the oldest person whose job is student?*/


SELECT name 
FROM Person 
WHERE job = 'student' 
ORDER BY age DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the name of the oldest student?*/


SELECT name 
FROM Person 
WHERE job = 'student' 
ORDER BY age DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who is the youngest male?*/


SELECT name 
FROM Person 
WHERE gender = 'male' 
ORDER BY age ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the name of the youngest male?*/


SELECT name 
FROM Person 
WHERE gender = 'male' 
ORDER BY age ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How old is the doctor named Zach?*/


SELECT age 
FROM Person 
WHERE name = 'Zach' AND job = 'Doctor'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the age of the doctor named Zach?*/


SELECT age 
FROM Person 
WHERE name = 'Zach' AND job = 'Doctor'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who is the person whose age is below 30?*/


SELECT name 
FROM Person 
WHERE age < 30

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the name of the person whose age is below 30?*/


SELECT name 
FROM Person 
WHERE age < 30

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many people whose age is greater 30 and job is engineer?*/


SELECT COUNT(*) 
FROM Person 
WHERE age > 30 AND job = 'engineer'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer HOw many engineers are older than 30?*/


SELECT COUNT(*) 
FROM Person 
WHERE age > 30 AND job = 'Engineer'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the average age for each gender?*/


SELECT gender, AVG(age)
FROM Person
GROUP BY gender

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How old is each gender, on average?*/


SELECT AVG(age) AS AverageAge, gender
FROM Person
GROUP BY gender

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is average age for different job title?*/


SELECT job, AVG(age)
FROM Person
GROUP BY job

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How old is the average person for each job?*/


SELECT job, AVG(age) AS Average_Age
FROM Person
GROUP BY job

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is average age of male for different job title?*/


SELECT job, AVG(age) 
FROM Person 
WHERE gender = 'male' 
GROUP BY job

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the average age for a male in each job?*/


SELECT job, AVG(age) 
FROM Person 
WHERE gender = 'male' 
GROUP BY job

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is minimum age for different job title?*/


SELECT job, MIN(age) 
FROM Person 
GROUP BY job

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How old is the youngest person for each job?*/


SELECT job, MIN(age) AS 'Youngest Person'
FROM Person
GROUP BY job

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the number of people who is under 40 for each gender.*/


SELECT gender, COUNT(*) AS 'Number of People Under 40'
FROM Person
WHERE age < 40
GROUP BY gender

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many people are under 40 for each gender?*/


SELECT gender, COUNT(*) AS 'Number of People Under 40'
FROM Person
WHERE age < 40
GROUP BY gender

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the name of people whose age is greater than any engineer sorted by their age.*/


SELECT name 
FROM Person 
WHERE age > (SELECT MAX(age) FROM Person WHERE job = 'Engineer') 
ORDER BY age DESC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to What is the name of all the people who are older than at least one engineer? Order them by age.*/


SELECT p.name, p.age 
FROM Person p 
JOIN PersonFriend pf ON p.name = pf.name 
JOIN Person p2 ON pf.friend = p2.name 
WHERE p2.job = 'Engineer' AND p.age > p2.age 
ORDER BY p.age ASC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the number of people whose age is greater than all engineers.*/


SELECT COUNT(*) 
FROM Person 
WHERE age > (SELECT MAX(age) 
              FROM Person 
              WHERE job = 'engineer')

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer How many people are older than every engineer?*/


SELECT COUNT(*) 
FROM Person 
WHERE age > (SELECT MAX(age) 
              FROM Person 
              WHERE job = 'Engineer')

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to list the name, job title of all people ordered by their names.*/


SELECT name, job FROM Person ORDER BY name

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names and job titles of every person ordered alphabetically by name?*/


SELECT name, job FROM Person ORDER BY name ASC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the names of all person sorted in the descending order using age.*/


SELECT name FROM Person ORDER BY age DESC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of everybody sorted by age in descending order?*/


SELECT name FROM Person ORDER BY age DESC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the name and age of all males in order of their age.*/


SELECT name, age 
FROM Person 
WHERE gender = 'male' 
ORDER BY age ASC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to What is the name and age of every male? Order the results by age.*/


SELECT name, age 
FROM Person 
WHERE gender = 'male' 
ORDER BY age

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the name and age of the person who is a friend of both Dan and Alice.*/


SELECT p.name, p.age 
FROM Person p 
INNER JOIN PersonFriend pf1 ON p.name = pf1.friend 
INNER JOIN PersonFriend pf2 ON p.name = pf2.friend 
WHERE pf1.name = 'Dan' AND pf2.name = 'Alice'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names and ages of every person who is a friend of both Dan and Alice?*/


SELECT p.name, p.age 
FROM Person p 
INNER JOIN PersonFriend pf1 ON p.name = pf1.friend 
INNER JOIN PersonFriend pf2 ON p.name = pf2.friend 
WHERE pf1.name = 'Dan' AND pf2.name = 'Alice'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the name and age of the person who is a friend of Dan or Alice.*/


SELECT Person.name, Person.age 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.friend 
WHERE PersonFriend.name = 'Dan' OR PersonFriend.name = 'Alice'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the different names and ages of every friend of either Dan or alice?*/


SELECT Person.name, Person.age 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.friend 
WHERE PersonFriend.name = 'Dan' OR PersonFriend.name = 'Alice'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Find the name of the person who has friends with age above 40 and under age 30?*/


SELECT p.name 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
INNER JOIN Person p2 
ON pf.friend = p2.name 
WHERE p2.age > 40 
AND p2.age < 30

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of every person who has a friend over 40 and under 30?*/


SELECT p.name 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
WHERE pf.friend > 40 AND pf.friend < 30

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Find the name of the person who has friends with age above 40 but not under age 30?*/


SELECT p.name 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
INNER JOIN Person p2 
ON pf.friend = p2.name 
WHERE p2.age > 40 
AND p2.age < 30

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of the people who are older 40 but no friends under age 30?*/


SELECT p.name 
FROM Person p 
LEFT JOIN PersonFriend pf 
ON p.name = pf.name 
WHERE p.age > 40 
AND (pf.friend IS NULL OR pf.friend NOT IN (SELECT name FROM Person WHERE age < 30)) 
GROUP BY p.name

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the name of the person who has no student friends.*/


SELECT name 
FROM Person 
WHERE name NOT IN (SELECT name 
                   FROM PersonFriend 
                   WHERE job = 'student')

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of the people who have no friends who are students?*/


SELECT name 
FROM Person 
WHERE name NOT IN (SELECT name 
                   FROM PersonFriend 
                   WHERE friend IN (SELECT name 
                                    FROM Person 
                                    WHERE job = 'student')) 

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the person who has exactly one friend.*/


SELECT name 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.name 
GROUP BY name 
HAVING COUNT(friend) = 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of everybody who has exactly one friend?*/


SELECT p.name 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
GROUP BY p.name 
HAVING COUNT(pf.friend) = 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who are the friends of Bob?*/


SELECT PersonFriend.friend 
FROM PersonFriend 
WHERE PersonFriend.name = 'Bob'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who are Bob's friends?*/


SELECT PersonFriend.friend 
FROM PersonFriend 
WHERE PersonFriend.name = 'Bob'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the name of persons who are friends with Bob.*/


SELECT name 
FROM PersonFriend 
WHERE friend = 'Bob'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of all of Bob's friends?*/


SELECT Person.name 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.friend 
WHERE PersonFriend.name = 'Bob'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the names of females who are friends with Zach*/


SELECT p.name 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
WHERE pf.friend = 'Zach' 
AND p.gender = 'Female'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of all females who are friends with Zach?*/


SELECT p.name 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
WHERE pf.friend = 'Zach' 
AND p.gender = 'Female'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the female friends of Alice.*/


SELECT PersonFriend.friend 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.name 
WHERE Person.name = 'Alice' 
AND Person.gender = 'Female'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are all the friends of Alice who are female?*/


SELECT PersonFriend.friend 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.name 
WHERE Person.name = 'Alice' 
AND Person.gender = 'female'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Find the male friend of Alice whose job is a doctor?*/


SELECT pf.friend 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
WHERE p.name = 'Alice' 
AND p.gender = 'male' 
AND p.job = 'doctor'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who are the friends of Alice that are doctors?*/


SELECT Person.name 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.friend 
WHERE PersonFriend.name = 'Alice' 
AND Person.job = 'Doctor'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who has a friend that is from new york city?*/


SELECT p.name 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
INNER JOIN Person p2 
ON pf.friend = p2.name 
WHERE p2.city = 'New York City'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of all friends who are from New York?*/


SELECT Person.name 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.friend 
WHERE Person.city = 'New York'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who has friends that are younger than the average age?*/


SELECT p.name 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.name 
INNER JOIN Person p2 
ON pf.friend = p2.name 
WHERE p2.age < (SELECT AVG(age) FROM Person) 
GROUP BY p.name

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the different names of friends who are younger than the average age for a friend?*/


SELECT PersonFriend.friend 
FROM PersonFriend 
INNER JOIN Person 
ON PersonFriend.name = Person.name 
WHERE Person.age < (SELECT AVG(Person.age) FROM Person) 
GROUP BY PersonFriend.friend

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Who has friends that are older than the average age? Print their friends and their ages as well*/


SELECT p.name, pf.friend, pf.age
FROM Person p
INNER JOIN PersonFriend pf
ON p.name = pf.name
WHERE pf.age > (SELECT AVG(age) FROM Person)
ORDER BY pf.age DESC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Whare the names, friends, and ages of all people who are older than the average age of a person?*/


SELECT p.name, pf.friend, p.age
FROM Person p
INNER JOIN PersonFriend pf ON p.name = pf.name
WHERE p.age > (SELECT AVG(age) FROM Person)
ORDER BY p.name

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who is the friend of Zach with longest year relationship?*/


SELECT pf.friend 
FROM Person p 
INNER JOIN PersonFriend pf ON p.name = pf.name 
WHERE p.name = 'Zach' 
ORDER BY pf.year DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Which friend of Zach has the longest-lasting friendship?*/


SELECT pf.friend 
FROM PersonFriend pf 
INNER JOIN Person p ON pf.name = p.name 
WHERE p.name = 'Zach' 
ORDER BY pf.year DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the age of the friend of Zach with longest year relationship?*/


SELECT age 
FROM Person 
INNER JOIN PersonFriend 
ON Person.name = PersonFriend.friend 
WHERE PersonFriend.name = 'Zach' 
ORDER BY PersonFriend.year DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the ages of all of Zach's friends who are in the longest relationship?*/


SELECT p.age 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.friend 
WHERE pf.name = 'Zach' 
AND pf.year = (SELECT MAX(year) FROM PersonFriend WHERE name = 'Zach')

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the name of persons who are friends with Alice for the shortest years.*/


SELECT name 
FROM PersonFriend 
WHERE friend = 'Alice' 
ORDER BY year ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of all people who are friends with Alice for the shortest amount of time?*/


SELECT pf.name 
FROM PersonFriend pf 
INNER JOIN Person p ON pf.name = p.name 
WHERE pf.friend = 'Alice' 
ORDER BY pf.year ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find the name, age, and job title of persons who are friends with Alice for the longest years.*/


SELECT p.name, p.age, p.job 
FROM Person p 
INNER JOIN PersonFriend pf 
ON p.name = pf.friend 
WHERE pf.name = 'Alice' 
ORDER BY pf.year DESC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names, ages, and jobs of all people who are friends with Alice for the longest amount of time?*/


SELECT p.name, p.age, p.job
FROM Person p
INNER JOIN PersonFriend pf ON p.name = pf.friend
WHERE pf.name = 'Alice'
ORDER BY pf.year DESC

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Who is the person that has no friend?*/


SELECT name
FROM Person
WHERE name NOT IN (SELECT friend FROM PersonFriend)

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of all people who do not have friends?*/


SELECT name
FROM Person
WHERE name NOT IN (SELECT friend FROM PersonFriend)

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer Which person whose friends have the oldest average age?*/


SELECT p.name
FROM Person p
INNER JOIN PersonFriend pf ON p.name = pf.name
GROUP BY p.name
ORDER BY AVG(p2.age) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the name of the person who has the oldest average age for their friends, and what is that average age?*/


SELECT p.name, AVG(f.age) AS avg_age
FROM Person p
JOIN PersonFriend pf ON p.name = pf.name
JOIN Person f ON pf.friend = f.name
GROUP BY p.name
ORDER BY avg_age DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to What is the total number of people who has no friend living in the city of Austin.*/


SELECT COUNT(*) 
FROM Person 
WHERE name NOT IN (SELECT friend 
                   FROM PersonFriend 
                   WHERE city = 'Austin') 
AND city = 'Austin'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What is the total number of people who have no friends living in Austin?*/


SELECT COUNT(*) 
FROM Person 
WHERE city = 'Austin' 
AND name NOT IN (SELECT friend FROM PersonFriend)

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to Find Alice's friends of friends.*/


SELECT pf2.friend 
FROM PersonFriend pf1 
INNER JOIN PersonFriend pf2 ON pf1.friend = pf2.name 
WHERE pf1.name = 'Alice'

/*Here are Mysql tables, with their properties:

Person(name, age, city, gender, job)
PersonFriend(name, friend, year)

Create a SQL request to answer What are the names of all of Alice's friends of friends?*/


SELECT pf2.name
FROM PersonFriend pf1
INNER JOIN PersonFriend pf2 ON pf1.friend = pf2.name
WHERE pf1.name = 'Alice'

