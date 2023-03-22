/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to Show me all the restaurants.*/


SELECT ResID, ResName, Address, Rating FROM Restaurant

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer What is the address of the restaurant Subway?*/


SELECT Address 
FROM Restaurant 
WHERE ResName = 'Subway'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer What is the rating of the restaurant Subway?*/


SELECT Rating 
FROM Restaurant 
WHERE ResName = 'Subway'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to List all restaurant types.*/


SELECT ResTypeName FROM Restaurant_Type

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer What is the description of the restaurant type Sandwich?*/


SELECT ResTypeDescription 
FROM Restaurant_Type 
WHERE ResTypeName = 'Sandwich'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to Which restaurants have highest rating? List the restaurant name and its rating.*/


SELECT ResName, Rating
FROM Restaurant
ORDER BY Rating DESC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer What is the age of student Linda Smith?*/


SELECT Age 
FROM Student 
WHERE Fname = 'Linda' AND LName = 'Smith'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer What is the gender of the student Linda Smith?*/


SELECT Sex 
FROM Student 
WHERE Fname = 'Linda' AND LName = 'Smith'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to List all students' first names and last names who majored in 600.*/


SELECT Fname, LName 
FROM Student 
WHERE Major = 600

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer Which city does student Linda Smith live in?*/


SELECT city_code 
FROM Student 
WHERE Fname = 'Linda' AND LName = 'Smith'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer Advisor 1121 has how many students?*/


SELECT COUNT(*) 
FROM Student 
WHERE Advisor = 1121

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to Which Advisor has most of students? List advisor and the number of students.*/


SELECT Advisor, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY Advisor
ORDER BY COUNT(*) DESC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to Which major has least number of students? List the major and the number of students.*/


SELECT Major, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY Major
ORDER BY COUNT(*) ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to Which major has between 2 and 30 number of students? List major and the number of students.*/


SELECT Major, COUNT(*) AS 'Number of Students'
FROM Student
GROUP BY Major
HAVING COUNT(*) BETWEEN 2 AND 30

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to Which student's age is older than 18 and is majoring in 600? List each student's first and last name.*/


SELECT Fname, LName 
FROM Student 
WHERE Age > 18 AND Major = 600

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to List all female students age is older than 18 who is not majoring in 600. List students' first name and last name.*/


SELECT Fname, LName 
FROM Student 
WHERE Sex = 'Female' 
AND Age > 18 
AND Major != 600

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer How many restaurant is the Sandwich type restaurant?*/


SELECT COUNT(*) 
FROM Restaurant r 
INNER JOIN Type_Of_Restaurant t 
ON r.ResID = t.ResID 
INNER JOIN Restaurant_Type rt 
ON t.ResTypeID = rt.ResTypeID 
WHERE rt.ResTypeName = 'Sandwich'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer How long does student Linda Smith spend on the restaurant in total?*/


SELECT SUM(Spent) 
FROM Visits_Restaurant 
INNER JOIN Student 
ON Visits_Restaurant.StuID = Student.StuID 
WHERE Student.Fname = 'Linda' 
AND Student.LName = 'Smith'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer How many times has the student Linda Smith visited Subway?*/


SELECT COUNT(*) 
FROM Visits_Restaurant 
INNER JOIN Restaurant 
ON Visits_Restaurant.ResID = Restaurant.ResID 
INNER JOIN Student 
ON Visits_Restaurant.StuID = Student.StuID 
WHERE Student.Fname = 'Linda' 
AND Student.LName = 'Smith' 
AND Restaurant.ResName = 'Subway'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to answer When did Linda Smith visit Subway?*/


SELECT Time 
FROM Visits_Restaurant 
INNER JOIN Student 
ON Visits_Restaurant.StuID = Student.StuID 
INNER JOIN Restaurant 
ON Visits_Restaurant.ResID = Restaurant.ResID 
WHERE Student.Fname = 'Linda' 
AND Student.LName = 'Smith' 
AND Restaurant.ResName = 'Subway'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to At which restaurant did the students spend the least amount of time? List restaurant and the time students spent on in total.*/


SELECT ResName, SUM(Time) AS TotalTime
FROM Restaurant
INNER JOIN Visits_Restaurant
ON Restaurant.ResID = Visits_Restaurant.ResID
GROUP BY ResName
ORDER BY TotalTime ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Restaurant(ResID, ResName, Address, Rating)
Type_Of_Restaurant(ResID, ResTypeID)
Restaurant_Type(ResTypeID, ResTypeName, ResTypeDescription)
Visits_Restaurant(StuID, ResID, Time, Spent)

Create a SQL request to Which student visited restaurant most often? List student's first name and last name.*/


SELECT Fname, LName
FROM Student
INNER JOIN Visits_Restaurant
ON Student.StuID = Visits_Restaurant.StuID
GROUP BY Fname, LName
ORDER BY COUNT(*) DESC
LIMIT 1

