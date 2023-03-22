/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many allergies are there?*/


SELECT COUNT(*) FROM Allergy_Type

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many allergy entries are there?*/


SELECT COUNT(*) FROM Has_Allergy

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many different allergy types exist?*/


SELECT COUNT(DISTINCT AllergyType) 
FROM Allergy_Type

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many distinct allergies are there?*/


SELECT COUNT(DISTINCT Allergy) 
FROM Allergy_Type

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all allergy types.*/


SELECT AllergyType FROM Allergy_Type

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the different allergy types?*/


SELECT DISTINCT AllergyType 
FROM Allergy_Type

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all allergies and their types.*/


SELECT Allergy, AllergyType
FROM Allergy_Type

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the allergies and their types?*/


SELECT Allergy, AllergyType 
FROM Allergy_Type

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all allergies with type food.*/


SELECT Allergy, AllergyType 
FROM Allergy_Type 
WHERE AllergyType = 'Food'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are all the different food allergies?*/


SELECT Allergy 
FROM Allergy_Type 
WHERE AllergyType = 'Food'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What is the type of allergy Cat?*/


SELECT AllergyType 
FROM Allergy_Type 
WHERE Allergy = 'Cat'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What is allergy type of a cat allergy?*/


SELECT AllergyType 
FROM Allergy_Type 
WHERE Allergy = 'cat allergy'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many allergies have type animal?*/


SELECT COUNT(*) 
FROM Allergy_Type 
WHERE AllergyType = 'Animal'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many animal type allergies exist?*/


SELECT COUNT(*) 
FROM Allergy_Type 
WHERE AllergyType = 'Animal'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all allergy types and the number of allergies in each type.*/


SELECT AllergyType, COUNT(Allergy) AS 'Number of Allergies'
FROM Allergy_Type
GROUP BY AllergyType

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the allergy types and how many allergies correspond to each one?*/


SELECT AllergyType, COUNT(Allergy) 
FROM Allergy_Type 
INNER JOIN Has_Allergy 
ON Allergy_Type.Allergy = Has_Allergy.Allergy 
GROUP BY AllergyType

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which allergy type has most number of allergies?*/


SELECT AllergyType, COUNT(Allergy) AS NumAllergies
FROM Allergy_Type
INNER JOIN Has_Allergy
ON Allergy_Type.Allergy = Has_Allergy.Allergy
GROUP BY AllergyType
ORDER BY NumAllergies DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which allergy type is most common?*/


SELECT AllergyType, COUNT(*) AS Total
FROM Allergy_Type
INNER JOIN Has_Allergy
ON Allergy_Type.Allergy = Has_Allergy.Allergy
GROUP BY AllergyType
ORDER BY Total DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which allergy type has least number of allergies?*/


SELECT AllergyType, COUNT(Allergy) AS NumAllergies
FROM Allergy_Type
INNER JOIN Has_Allergy
ON Allergy_Type.Allergy = Has_Allergy.Allergy
GROUP BY AllergyType
ORDER BY NumAllergies ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which allergy type is the least common?*/


SELECT AllergyType, COUNT(*) AS Count
FROM Allergy_Type
INNER JOIN Has_Allergy
ON Allergy_Type.Allergy = Has_Allergy.Allergy
GROUP BY AllergyType
ORDER BY Count ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students are there?*/


SELECT COUNT(*) FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What is the total number of students?*/


SELECT COUNT(*) FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show first name and last name for all students.*/


SELECT Fname, LName FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to What are the full names of all students*/
 who have an allergy?

SELECT Fname, LName 
FROM Student 
INNER JOIN Has_Allergy 
ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type 
ON Has_Allergy.Allergy = Allergy_Type.Allergy

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many different advisors are listed?*/


SELECT COUNT(DISTINCT Advisor) 
FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many advisors are there?*/


SELECT COUNT(DISTINCT Advisor) FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all majors.*/


SELECT Major FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the different majors?*/


SELECT DISTINCT Major FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all cities where students live.*/


SELECT DISTINCT city_code 
FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What cities do students live in?*/


SELECT city_code 
FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show first name, last name, age for all female students. Their sex is F.*/


SELECT Fname, LName, Age 
FROM Student 
WHERE Sex = 'F'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the full names and ages for all female students whose sex is F?*/


SELECT Fname, LName, Age 
FROM Student 
WHERE Sex = 'F'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show student ids for all male students.*/


SELECT StuID
FROM Student
WHERE Sex = 'Male'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the student ids for all male students?*/


SELECT StuID
FROM Student
WHERE Sex = 'Male'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students are age 18?*/


SELECT COUNT(*) 
FROM Student 
WHERE Age = 18

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students are 18 years old?*/


SELECT COUNT(*) 
FROM Student 
WHERE Age = 18

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all student ids who are older than 20.*/


SELECT StuID 
FROM Student 
WHERE Age > 20

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the student ids for students over 20 years old?*/


SELECT StuID 
FROM Student 
WHERE Age > 20

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which city does the student whose last name is "Kim" live in?*/


SELECT city_code 
FROM Student 
WHERE LName = 'Kim'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Give the city that the student whose family name is Kim lives in.*/


SELECT city_code 
FROM Student 
WHERE LName = 'Kim'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Who is the advisor of student with ID 1004?*/


SELECT Advisor 
FROM Student 
WHERE StuID = 1004

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Who advises student 1004?*/


SELECT Advisor 
FROM Student 
WHERE StuID = 1004

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students live in HKG or CHI?*/


SELECT COUNT(*) 
FROM Student 
WHERE city_code IN ('HKG', 'CHI')

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Give the number of students living in either HKG or CHI.*/


SELECT COUNT(*) 
FROM Student 
WHERE city_code IN ('HKG', 'CHI')

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show the minimum, average, and maximum age of all students.*/


SELECT MIN(Age) AS 'Minimum Age', AVG(Age) AS 'Average Age', MAX(Age) AS 'Maximum Age'
FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What is the minimum, mean, and maximum age across all students?*/


SELECT MIN(Age) AS MinAge, AVG(Age) AS MeanAge, MAX(Age) AS MaxAge FROM Student

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What is the last name of the youngest student?*/


SELECT LName 
FROM Student 
WHERE Age = (SELECT MIN(Age) FROM Student) 

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Provide the last name of the youngest student.*/


SELECT LName 
FROM Student 
WHERE Age = (SELECT MIN(Age) FROM Student)

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show the student id of the oldest student.*/


SELECT StuID FROM Student ORDER BY Age DESC LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What student id corresponds to the oldest student?*/


SELECT StuID
FROM Student
ORDER BY Age DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all majors and corresponding number of students.*/


SELECT Major, COUNT(StuID) AS 'Number of Students'
FROM Student
GROUP BY Major

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students are there for each major?*/


SELECT Major, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY Major

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which major has most number of students?*/


SELECT Major, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY Major
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What is the largest major?*/


SELECT Major, COUNT(*) AS Major_Count
FROM Student
GROUP BY Major
ORDER BY Major_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all ages and corresponding number of students.*/


SELECT Age, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY Age

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How old is each student and how many students are each age?*/


SELECT Age, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY Age

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show the average age for male and female students.*/


SELECT AVG(Age) AS AverageAge, Sex
FROM Student
GROUP BY Sex

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the average ages for male and female students?*/


SELECT AVG(Age) AS AverageAge, Sex
FROM Student
GROUP BY Sex

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all cities and corresponding number of students.*/


SELECT city_code, COUNT(StuID) AS 'Number of Students'
FROM Student
GROUP BY city_code

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students live in each city?*/


SELECT city_code, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY city_code

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all advisors and corresponding number of students.*/


SELECT Advisor, COUNT(StuID) AS 'Number of Students'
FROM Student
GROUP BY Advisor

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students does each advisor have?*/


SELECT Advisor, COUNT(StuID) AS 'Number of Students'
FROM Student
GROUP BY Advisor

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which advisor has most number of students?*/


SELECT Advisor, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY Advisor
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Give the advisor with the most students.*/


SELECT Advisor, COUNT(*) AS NumStudents
FROM Student
GROUP BY Advisor
ORDER BY NumStudents DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students have cat allergies?*/


SELECT COUNT(*) 
FROM Has_Allergy 
INNER JOIN Allergy_Type 
ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType = 'Cat'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students are affected by cat allergies?*/


SELECT COUNT(*) 
FROM Has_Allergy 
INNER JOIN Allergy_Type 
ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType = 'Cat'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all student IDs who have at least two allergies.*/


SELECT Has_Allergy.StuID
FROM Has_Allergy
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy
GROUP BY Has_Allergy.StuID
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the students ids of students who have more than one allergy?*/


SELECT Has_Allergy.StuID
FROM Has_Allergy
GROUP BY Has_Allergy.StuID
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the student ids of students who don't have any allergies?*/


SELECT StuID
FROM Student
WHERE StuID NOT IN (SELECT StuID FROM Has_Allergy)

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which students are unaffected by allergies?*/


SELECT S.StuID, S.LName, S.Fname, S.Age, S.Sex, S.Major, S.Advisor, S.city_code
FROM Student S
LEFT JOIN Has_Allergy HA ON S.StuID = HA.StuID
WHERE HA.Allergy IS NULL

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many female students have milk or egg allergies?*/


SELECT COUNT(*) 
FROM Student 
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType IN ('milk', 'egg') AND Sex = 'female'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students who are female are allergic to milk or eggs?*/


SELECT COUNT(*) 
FROM Has_Allergy 
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy 
INNER JOIN Student ON Has_Allergy.StuID = Student.StuID 
WHERE AllergyType IN ('milk', 'eggs') AND Sex = 'female'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students have a food allergy?*/


SELECT COUNT(*) 
FROM Has_Allergy 
INNER JOIN Allergy_Type 
ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType = 'Food'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students are affected by food related allergies?*/


SELECT COUNT(*) 
FROM Has_Allergy 
INNER JOIN Allergy_Type 
ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType = 'Food'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which allergy has most number of students affected?*/


SELECT Allergy, COUNT(StuID) AS NumStudents
FROM Has_Allergy
INNER JOIN Allergy_Type
ON Has_Allergy.Allergy = Allergy_Type.Allergy
GROUP BY Allergy
ORDER BY NumStudents DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer Which allergy is the most common?*/


SELECT Allergy, COUNT(*) AS Total
FROM Has_Allergy
INNER JOIN Allergy_Type
ON Has_Allergy.Allergy = Allergy_Type.Allergy
GROUP BY Allergy
ORDER BY Total DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all allergies with number of students affected.*/


SELECT Allergy, COUNT(StuID) AS 'Number of Students Affected'
FROM Has_Allergy
JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy
GROUP BY Allergy

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students have each different allergy?*/


SELECT Allergy, COUNT(StuID) AS 'Number of Students'
FROM Has_Allergy
INNER JOIN Allergy_Type
ON Has_Allergy.Allergy = Allergy_Type.Allergy
GROUP BY Allergy

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Show all allergy type with number of students affected.*/


SELECT AllergyType, COUNT(StuID) AS 'Number of Students Affected'
FROM Allergy_Type
JOIN Has_Allergy
ON Allergy_Type.Allergy = Has_Allergy.Allergy
GROUP BY AllergyType

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students are affected by each allergy type?*/


SELECT AllergyType, COUNT(*) AS 'Number of Students Affected'
FROM Allergy_Type
INNER JOIN Has_Allergy
ON Allergy_Type.Allergy = Has_Allergy.Allergy
GROUP BY AllergyType

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Find the last name and age of the student who has allergy to both milk and cat.*/


SELECT LName, Age 
FROM Student 
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType = 'milk' 
AND AllergyType = 'cat'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the last names and ages of the students who are allergic to milk and cat?*/


SELECT LName, Age 
FROM Student 
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType = 'milk' OR AllergyType = 'cat'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to What are the allergies and their types that the student with first name Lisa has? And order the result by name of allergies.*/


SELECT Allergy, AllergyType 
FROM Allergy_Type 
INNER JOIN Has_Allergy 
ON Allergy_Type.Allergy = Has_Allergy.Allergy 
INNER JOIN Student 
ON Has_Allergy.StuID = Student.StuID 
WHERE Student.Fname = 'Lisa' 
ORDER BY Allergy

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to What are the allergies the girl named Lisa has? And what are the types of them? Order the result by allergy names.*/


SELECT Allergy, AllergyType 
FROM Allergy_Type 
INNER JOIN Has_Allergy ON Allergy_Type.Allergy = Has_Allergy.Allergy 
INNER JOIN Student ON Has_Allergy.StuID = Student.StuID 
WHERE Student.Fname = 'Lisa' 
ORDER BY Allergy

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Find the first name and gender of the student who has allergy to milk but not cat.*/


SELECT Fname, Sex 
FROM Student 
WHERE StuID IN (SELECT StuID 
                 FROM Has_Allergy 
                 WHERE Allergy IN (SELECT Allergy 
                                    FROM Allergy_Type 
                                    WHERE AllergyType = 'Milk') 
                 AND StuID NOT IN (SELECT StuID 
                                    FROM Has_Allergy 
                                    WHERE Allergy IN (SELECT Allergy 
                                                       FROM Allergy_Type 
                                                       WHERE AllergyType = 'Cat'))) 

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the first name and gender of the students who have allergy to milk but can put up with cats?*/


SELECT Fname, Sex 
FROM Student 
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE Allergy_Type.AllergyType = 'Milk' AND Allergy_Type.AllergyType != 'Cats'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Find the average age of the students who have allergies with food and animal types.*/


SELECT AVG(Age)
FROM Student s
INNER JOIN Has_Allergy ha ON s.StuID = ha.StuID
INNER JOIN Allergy_Type at ON ha.Allergy = at.Allergy
WHERE at.AllergyType IN ('Food', 'Animal')

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How old are the students with allergies to food and animal types on average?*/


SELECT AVG(Age)
FROM Student
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy
WHERE AllergyType IN ('Food', 'Animal')

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to List the first and last name of the students who do not have any food type allergy.*/


SELECT Fname, LName 
FROM Student 
WHERE StuID NOT IN (SELECT StuID 
                    FROM Has_Allergy 
                    WHERE Allergy IN (SELECT Allergy 
                                      FROM Allergy_Type 
                                      WHERE AllergyType = 'Food')) 

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to What is the full name of each student who is not allergic to any type of food.*/


SELECT Fname, LName 
FROM Student 
WHERE StuID NOT IN (SELECT StuID FROM Has_Allergy WHERE Allergy IN (SELECT Allergy FROM Allergy_Type WHERE AllergyType = 'Food')) 

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Find the number of male (sex is 'M') students who have some food type allery.*/


SELECT COUNT(*) 
FROM Student 
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE Student.Sex = 'M' 
AND Allergy_Type.AllergyType = 'Food'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many male students (sex is 'M') are allergic to any type of food?*/


SELECT COUNT(*)
FROM Student s
INNER JOIN Has_Allergy ha ON s.StuID = ha.StuID
INNER JOIN Allergy_Type at ON ha.Allergy = at.Allergy
WHERE s.Sex = 'M' AND at.AllergyType = 'Food'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Find the different first names and cities of the students who have allergy to milk or cat.*/


SELECT Fname, city_code 
FROM Student 
INNER JOIN Has_Allergy 
ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type 
ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType = 'milk' OR AllergyType = 'cat'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the distinct first names and cities of the students who have allergy either to milk or to cat?*/


SELECT DISTINCT Fname, city_code
FROM Student
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy
WHERE AllergyType = 'milk' OR AllergyType = 'cat'

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Find the number of students who are older than 18 and do not have allergy to either food or animal.*/


SELECT COUNT(*) 
FROM Student 
INNER JOIN Has_Allergy 
ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type 
ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE Student.Age > 18 
AND Allergy_Type.AllergyType NOT IN ('Food', 'Animal')

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer How many students are over 18 and do not have allergy to food type or animal type?*/


SELECT COUNT(*) 
FROM Student 
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE Student.Age > 18 
AND Allergy_Type.AllergyType NOT IN ('Food', 'Animal')

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to Find the first name and major of the students who are not allegry to soy.*/


SELECT Fname, Major 
FROM Student 
WHERE StuID NOT IN (SELECT StuID 
                    FROM Has_Allergy 
                    WHERE Allergy IN (SELECT Allergy 
                                      FROM Allergy_Type 
                                      WHERE AllergyType = 'soy')) 

/*Here are Mysql tables, with their properties:

Allergy_Type(Allergy, AllergyType)
Has_Allergy(StuID, Allergy)
Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)

Create a SQL request to answer What are the first name and major of the students who are able to consume soy?*/


SELECT Fname, Major 
FROM Student 
INNER JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID 
INNER JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy 
WHERE AllergyType = 'Soy'

