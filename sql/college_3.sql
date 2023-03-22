/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer How many courses are there in total?*/


SELECT COUNT(*) FROM Course

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Count the number of courses.*/


SELECT COUNT(*) FROM Course

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer How many courses have more than 2 credits?*/


SELECT COUNT(*) 
FROM Course 
WHERE Credits > 2

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Count the number of courses with more than 2 credits.*/


SELECT COUNT(*) 
FROM Course 
WHERE Credits > 2

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer List all names of courses with 1 credit?*/


SELECT CName 
FROM Course 
WHERE Credits = 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the names of courses with 1 credit?*/


SELECT CName 
FROM Course 
WHERE Credits = 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer Which courses are taught on days MTW?*/


SELECT CName 
FROM Course 
WHERE Days LIKE '%MTW%'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the course names for courses taught on MTW?*/


SELECT CName 
FROM Course 
WHERE Days LIKE '%MTW%'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the number of departments in Division "AS"?*/


SELECT COUNT(*) 
FROM Department 
WHERE Division = 'AS'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer How many departments are in the division AS?*/


SELECT COUNT(*) 
FROM Department 
WHERE Division = 'AS'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the phones of departments in Room 268?*/


SELECT DPhone 
FROM Department 
WHERE Room = '268'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Give the phones for departments in room 268.*/


SELECT DPhone 
FROM Department 
WHERE Room = '268'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the number of students that have at least one grade "B".*/


SELECT COUNT(DISTINCT StuID) 
FROM Enrolled_in 
INNER JOIN Gradeconversion 
ON Enrolled_in.Grade = Gradeconversion.lettergrade 
WHERE Gradeconversion.gradepoint >= 3

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer How many students have had at least one "B" grade?*/


SELECT COUNT(DISTINCT StuID)
FROM Enrolled_in
INNER JOIN Gradeconversion
ON Enrolled_in.Grade = Gradeconversion.lettergrade
WHERE Gradeconversion.gradepoint >= 3

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the max and min grade point for all letter grade.*/


SELECT MAX(gradepoint) AS MaxGradePoint, MIN(gradepoint) AS MinGradePoint FROM Gradeconversion

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the maximum and minumum grade points?*/


SELECT MAX(gradepoint), MIN(gradepoint) FROM Gradeconversion

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the first names of students whose first names contain letter "a".*/


SELECT Fname 
FROM Student 
WHERE Fname LIKE '%a%'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the first names for students who have an "a" in their first name?*/


SELECT Fname 
FROM Student 
WHERE Fname LIKE 'A%'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the first names and last names of male (sex is M) faculties who live in building NEB.*/


SELECT Fname, Lname 
FROM Faculty 
WHERE Sex = 'M' AND Building = 'NEB'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the full names of faculties with sex M and who live in building NEB?*/


SELECT Fname, Lname 
FROM Faculty 
WHERE Sex = 'M' 
AND Building = 'NEB'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the rooms of faculties with rank professor who live in building NEB.*/


SELECT Room 
FROM Faculty 
WHERE Rank = 'Professor' 
AND Building = 'NEB'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the rooms for members of the faculty who are professors and who live in building NEB?*/


SELECT Room 
FROM Faculty 
INNER JOIN Member_of 
ON Faculty.FacID = Member_of.FacID 
WHERE Rank = 'Professor' 
AND Building = 'NEB'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the department name that is in Building "Mergenthaler".*/


SELECT DName 
FROM Department 
WHERE Building = 'Mergenthaler'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the name of the department in the Building Mergenthaler?*/


SELECT DName 
FROM Department 
WHERE Building = 'Mergenthaler'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to List all information about courses sorted by credits in the ascending order.*/


SELECT CID, CName, Credits, Instructor, Days, Hours, DNO
FROM Course
ORDER BY Credits ASC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is all the information about courses, ordered by credits ascending?*/


SELECT CID, CName, Credits, Instructor, Days, Hours, DNO
FROM Course
ORDER BY Credits ASC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to List the course name of courses sorted by credits.*/


SELECT CName, Credits 
FROM Course 
ORDER BY Credits

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the course names, ordered by credits?*/


SELECT CName, Credits 
FROM Course 
ORDER BY Credits

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the first name of students in the descending order of age.*/


SELECT Fname 
FROM Student 
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the first names of students, ordered by age from greatest to least?*/


SELECT Fname 
FROM Student 
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the last name of female (sex is F) students in the descending order of age.*/


SELECT LName 
FROM Student 
WHERE Sex = 'F' 
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the last names of female students, ordered by age descending?*/


SELECT LName 
FROM Student 
WHERE Sex = 'Female' 
ORDER BY Age DESC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the last names of faculties in building Barton in alphabetic order.*/


SELECT Lname 
FROM Faculty 
WHERE Building = 'Barton' 
ORDER BY Lname ASC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the last names of faculty in building Barton, sorted by last name?*/


SELECT Lname 
FROM Faculty 
WHERE Building = 'Barton' 
ORDER BY Lname

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the first names of faculties of rank Professor in alphabetic order.*/


SELECT Fname 
FROM Faculty 
WHERE Rank = 'Professor' 
ORDER BY Fname ASC

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the first names for all faculty professors, ordered by first name?*/


SELECT Fname 
FROM Faculty 
WHERE Rank = 'Professor' 
ORDER BY Fname

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer Find the name of the department that has the biggest number of students minored in?*/


SELECT DName
FROM Department d
INNER JOIN Minor_in m ON d.DNO = m.DNO
GROUP BY d.DNO
ORDER BY COUNT(m.StuID) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the name of the department with the most students minoring in it?*/


SELECT DName
FROM Department
WHERE DNO = (SELECT DNO
              FROM Minor_in
              GROUP BY DNO
              ORDER BY COUNT(*) DESC
              LIMIT 1)

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer Find the name of the department that has no students minored in?*/


SELECT DName 
FROM Department 
WHERE DNO NOT IN (SELECT DNO FROM Minor_in)

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the name of the department htat has no students minoring in it?*/


SELECT DName
FROM Department
WHERE DNO NOT IN (SELECT DNO FROM Minor_in)

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the name of the department that has the fewest members.*/


SELECT DName 
FROM Department 
WHERE DNO IN (SELECT DNO 
               FROM Member_of 
               GROUP BY DNO 
               ORDER BY COUNT(*) ASC 
               LIMIT 1)

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the name of the department with the fewest members?*/


SELECT DName
FROM Department
WHERE DNO = (SELECT DNO
              FROM Member_of
              GROUP BY DNO
              ORDER BY COUNT(*) ASC
              LIMIT 1)

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the rank of the faculty that the fewest faculties belong to.*/


SELECT Rank 
FROM Faculty 
WHERE FacID IN (SELECT FacID 
                FROM Member_of 
                GROUP BY DNO 
                ORDER BY COUNT(*) ASC 
                LIMIT 1)

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the least common faculty rank?*/


SELECT Rank, COUNT(Rank) AS Rank_Count
FROM Faculty
GROUP BY Rank
ORDER BY Rank_Count ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the first and last names of the instructors who teach the top 3 number of courses?*/


SELECT Fname, Lname
FROM Faculty
INNER JOIN Course ON Faculty.FacID = Course.Instructor
GROUP BY Fname, Lname
ORDER BY COUNT(CID) DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the full names of the 3 instructors who teach the most courses?*/


SELECT Fname, Lname
FROM Faculty
INNER JOIN Course ON Faculty.FacID = Course.Instructor
GROUP BY Fname, Lname
ORDER BY COUNT(CID) DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer Which building does the instructor who teaches the most number of courses live in?*/


SELECT Building
FROM Faculty
INNER JOIN Course ON Faculty.FacID = Course.Instructor
GROUP BY Building
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Give the building that the instructor who teaches the greatest number of courses lives in.*/


SELECT Building
FROM Faculty
INNER JOIN Course ON Faculty.FacID = Course.Instructor
GROUP BY Building
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the name of courses that have at least five enrollments?*/


SELECT CName 
FROM Course 
INNER JOIN Enrolled_in 
ON Course.CID = Enrolled_in.CID 
GROUP BY CName 
HAVING COUNT(*) >= 5

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Give the names of the courses with at least five enrollments.*/


SELECT CName 
FROM Course 
INNER JOIN Enrolled_in 
ON Course.CID = Enrolled_in.CID 
GROUP BY CName 
HAVING COUNT(*) >= 5

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the first name and last name of the instructor of course that has course name*/
 ¡°Database¡±

SELECT Fname, Lname 
FROM Faculty 
INNER JOIN Course 
ON Faculty.FacID = Course.Instructor 
WHERE Course.CName = 'Database'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the full name of the instructor who has a course named COMPUTER LITERACY?*/


SELECT Fname, Lname 
FROM Faculty 
INNER JOIN Course 
ON Faculty.FacID = Course.Instructor 
WHERE Course.CName = 'COMPUTER LITERACY'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the department name and room of the course INTRODUCTION TO COMPUTER SCIENCE.*/


SELECT Department.DName, Department.Room
FROM Department
INNER JOIN Course
ON Department.DNO = Course.DNO
WHERE Course.CName = 'INTRODUCTION TO COMPUTER SCIENCE'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the department name and room for the course INTRODUCTION TO COMPUTER SCIENCE?*/


SELECT Department.DName, Department.Room
FROM Department
INNER JOIN Course ON Department.DNO = Course.DNO
WHERE Course.CName = 'INTRODUCTION TO COMPUTER SCIENCE'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the student first and last names and grade points of all enrollments.*/


SELECT S.Fname, S.Lname, G.gradepoint
FROM Student S
INNER JOIN Enrolled_in E ON S.StuID = E.StuID
INNER JOIN Gradeconversion G ON E.Grade = G.lettergrade

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the full names and gradepoints for all enrollments?*/


SELECT s.LName, s.FName, g.gradepoint
FROM Student s
INNER JOIN Enrolled_in e ON s.StuID = e.StuID
INNER JOIN Gradeconversion g ON e.Grade = g.lettergrade

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the distinct student first names of all students that have grade point at least 3.8 in one course.*/


SELECT DISTINCT Fname 
FROM Student 
INNER JOIN Enrolled_in 
ON Student.StuID = Enrolled_in.StuID 
INNER JOIN Gradeconversion 
ON Enrolled_in.Grade = Gradeconversion.lettergrade 
WHERE Gradeconversion.gradepoint >= 3.8

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the distinct first names for students with a grade point of 3.8 or above in at least one course?*/


SELECT DISTINCT Fname 
FROM Student s 
INNER JOIN Enrolled_in e 
ON s.StuID = e.StuID 
INNER JOIN Gradeconversion g 
ON e.Grade = g.lettergrade 
WHERE g.gradepoint >= 3.8

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the full names of faculties who are members of department with department number 520.*/


SELECT Fname, Lname 
FROM Faculty 
INNER JOIN Member_of 
ON Faculty.FacID = Member_of.FacID 
WHERE Member_of.DNO = 520

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the full names of faculty members who are a part of department 520?*/


SELECT Fname, Lname 
FROM Faculty 
INNER JOIN Member_of 
ON Faculty.FacID = Member_of.FacID 
WHERE Member_of.DNO = 520

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to What are the first names and last names of the students that minor in the department with DNO 140.*/


SELECT Fname, Lname 
FROM Student 
INNER JOIN Minor_in 
ON Student.StuID = Minor_in.StuID 
WHERE Minor_in.DNO = 140

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the full names of students minoring in department 140?*/


SELECT Fname, Lname 
FROM Student 
INNER JOIN Minor_in 
ON Student.StuID = Minor_in.StuID 
WHERE Minor_in.DNO = 140

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the last names of faculties who are members of computer science department.*/


SELECT Faculty.LName 
FROM Faculty 
INNER JOIN Member_of ON Faculty.FacID = Member_of.FacID 
INNER JOIN Department ON Member_of.DNO = Department.DNO 
WHERE Department.DName = 'Computer Science'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the last names of faculty who are part of the computer science department?*/


SELECT Lname 
FROM Faculty 
INNER JOIN Member_of 
ON Faculty.FacID = Member_of.FacID 
INNER JOIN Department 
ON Member_of.DNO = Department.DNO 
WHERE Department.DName = 'Computer Science'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the average grade point of student whose last name is Smith.*/


SELECT AVG(Gradeconversion.gradepoint)
FROM Student
INNER JOIN Enrolled_in ON Student.StuID = Enrolled_in.StuID
INNER JOIN Gradeconversion ON Enrolled_in.Grade = Gradeconversion.lettergrade
WHERE Student.LName = 'Smith'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the average gradepoint for students with the last name Smith?*/


SELECT AVG(Gradeconversion.gradepoint)
FROM Student
INNER JOIN Enrolled_in ON Student.StuID = Enrolled_in.StuID
INNER JOIN Gradeconversion ON Enrolled_in.Grade = Gradeconversion.lettergrade
WHERE Student.LName = 'Smith'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What is the maximum and minimum grade point of students who live in NYC?*/


SELECT MAX(gc.gradepoint), MIN(gc.gradepoint)
FROM Gradeconversion gc
INNER JOIN Enrolled_in ei ON gc.lettergrade = ei.grade
INNER JOIN Student s ON s.StuID = ei.StuID
WHERE s.city_code = 'NYC'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer Give the maximum and minimum gradepoints for students living in NYC?*/


SELECT MAX(gc.gradepoint) AS Max_GradePoint, MIN(gc.gradepoint) AS Min_GradePoint
FROM Gradeconversion gc
INNER JOIN Enrolled_in ei ON gc.lettergrade = ei.grade
INNER JOIN Student s ON s.StuID = ei.StuID
WHERE s.city_code = 'NYC'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the names of courses that have either 3 credits or 1 credit but 4 hours.*/


SELECT CName 
FROM Course 
WHERE (Credits = 3 OR Credits = 1) AND Hours = 4

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the names of courses that give either 3 credits, or 1 credit and 4 hours?*/


SELECT CName 
FROM Course 
WHERE Credits = 3 OR (Credits = 1 AND Hours = 4)

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the names of departments that are either in division AS or in division EN and in Building NEB.*/


SELECT DName 
FROM Department 
WHERE Division IN ('AS', 'EN') 
AND Building = 'NEB'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the names of departments either in division AS, or in division EN and in building NEB?*/


SELECT DName 
FROM Department 
WHERE Division = 'AS' OR Division = 'EN' AND Building = 'NEB'

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to Find the first name of students not enrolled in any course.*/


SELECT Fname 
FROM Student 
WHERE StuID NOT IN (SELECT StuID FROM Enrolled_in)

/*Here are Mysql tables, with their properties:

Student(StuID, LName, Fname, Age, Sex, Major, Advisor, city_code)
Faculty(FacID, Lname, Fname, Rank, Sex, Phone, Room, Building)
Department(DNO, Division, DName, Room, Building, DPhone)
Member_of(FacID, DNO, Appt_Type)
Course(CID, CName, Credits, Instructor, Days, Hours, DNO)
Minor_in(StuID, DNO)
Enrolled_in(StuID, CID, Grade)
Gradeconversion(lettergrade, gradepoint)

Create a SQL request to answer What are the first names of all students that are not enrolled in courses?*/


SELECT Fname 
FROM Student 
WHERE StuID NOT IN (SELECT StuID FROM Enrolled_in)

