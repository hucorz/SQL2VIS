/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer which course has most number of registered students?*/


SELECT course_name, COUNT(student_id) AS 'Number of Registered Students'
FROM Courses
INNER JOIN Student_Course_Registrations
ON Courses.course_id = Student_Course_Registrations.course_id
GROUP BY course_name
ORDER BY COUNT(student_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What is the name of the course with the most registered students?*/


SELECT course_name, COUNT(student_id) AS num_students
FROM Courses
INNER JOIN Student_Course_Registrations
ON Courses.course_id = Student_Course_Registrations.course_id
GROUP BY course_name
ORDER BY num_students DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer what is id of students who registered some courses but the least number of courses in these students?*/


SELECT student_id, COUNT(*) AS num_courses
FROM Student_Course_Registrations
GROUP BY student_id
ORDER BY num_courses ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of the students who registered for some courses but had the least number of courses for all students?*/


SELECT student_id
FROM Student_Course_Registrations
GROUP BY student_id
HAVING COUNT(*) = (SELECT MIN(num_courses)
                    FROM (SELECT student_id, COUNT(*) AS num_courses
                          FROM Student_Course_Registrations
                          GROUP BY student_id) AS t)

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer what are the first name and last name of all candidates?*/


SELECT first_name, last_name
FROM People
INNER JOIN Candidates
ON People.person_id = Candidates.candidate_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the first and last names of all the candidates?*/


SELECT first_name, last_name
FROM People
INNER JOIN Candidates
ON People.person_id = Candidates.candidate_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer List the id of students who never attends courses?*/


SELECT student_id
FROM Students
WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Attendance)

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the  ids of every student who has never attended a course?*/


SELECT student_id
FROM Students
WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Attendance)

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer List the id of students who attended some courses?*/


SELECT student_id 
FROM Student_Course_Attendance 
WHERE student_id IS NOT NULL

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of all students who have attended at least one course?*/


SELECT DISTINCT student_id 
FROM Student_Course_Attendance

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of all students for courses and what are the names of those courses?*/


SELECT s.student_id, c.course_name
FROM Students s
INNER JOIN Student_Course_Registrations scr ON s.student_id = scr.student_id
INNER JOIN Courses c ON scr.course_id = c.course_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What is detail of the student who most recently registered course?*/


SELECT s.student_id, s.student_details, c.course_name, c.course_description, c.other_details, sr.registration_date 
FROM Students s 
INNER JOIN Student_Course_Registrations sr ON s.student_id = sr.student_id 
INNER JOIN Courses c ON sr.course_id = c.course_id 
ORDER BY sr.registration_date DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What details do we have on the students who registered for courses most recently?*/


SELECT s.student_id, s.student_details, sc.registration_date 
FROM Students s 
INNER JOIN Student_Course_Registrations sc 
ON s.student_id = sc.student_id 
ORDER BY sc.registration_date DESC

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer How many students attend course English?*/


SELECT COUNT(*) 
FROM Student_Course_Attendance 
WHERE course_id = 'English'

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer How many students are attending English courses?*/


SELECT COUNT(*) 
FROM Student_Course_Registrations 
INNER JOIN Courses 
ON Student_Course_Registrations.course_id = Courses.course_id 
WHERE Courses.course_name = 'English'

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer How many courses do the student whose id is 171 attend?*/


SELECT COUNT(*)
FROM Student_Course_Registrations
WHERE student_id = 171

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer How many courses does the student with id 171 actually attend?*/


SELECT COUNT(*)
FROM Student_Course_Attendance
WHERE student_id = 171

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer Find id of the candidate whose email is stanley.monahan@example.org?*/


SELECT candidate_id 
FROM Candidates 
WHERE email_address = 'stanley.monahan@example.org'

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What is the id of the candidate whose email is stanley.monahan@example.org?*/


SELECT candidate_id 
FROM Candidates 
INNER JOIN People 
ON Candidates.candidate_id = People.person_id 
WHERE email_address = 'stanley.monahan@example.org'

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer Find id of the candidate who most recently accessed the course?*/


SELECT candidate_id 
FROM Candidates c 
INNER JOIN Student_Course_Attendance sca 
ON c.candidate_id = sca.student_id 
ORDER BY sca.date_of_attendance DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What is the id of the candidate who most recently accessed the course?*/


SELECT candidate_id
FROM Candidates c
INNER JOIN Candidate_Assessments ca ON c.candidate_id = ca.candidate_id
INNER JOIN Student_Course_Attendance sca ON ca.candidate_id = sca.student_id
ORDER BY sca.date_of_attendance DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What is detail of the student who registered the most number of courses?*/


SELECT s.student_id, s.student_details, COUNT(scr.course_id) AS 'Number of Courses Registered'
FROM Students s
INNER JOIN Student_Course_Registrations scr ON s.student_id = scr.student_id
GROUP BY s.student_id
ORDER BY COUNT(scr.course_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the details of the student who registered for the most number of courses?*/


SELECT s.student_id, s.student_details, COUNT(*) AS num_courses
FROM Students s
INNER JOIN Student_Course_Registrations scr ON s.student_id = scr.student_id
GROUP BY s.student_id
ORDER BY num_courses DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer List the id of students who registered some courses and the number of their registered courses?*/


SELECT student_id, COUNT(*) AS 'Number of Registered Courses'
FROM Student_Course_Registrations
GROUP BY student_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer For every student who is registered for some course, how many courses are they registered for?*/


SELECT s.student_id, COUNT(*) AS 'Number of Courses Registered'
FROM Students s
INNER JOIN Student_Course_Registrations scr ON s.student_id = scr.student_id
GROUP BY s.student_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer How many registed students do each course have? List course name and the number of their registered students?*/


SELECT c.course_name, COUNT(scr.student_id) AS 'Number of Registered Students'
FROM Courses c
INNER JOIN Student_Course_Registrations scr ON c.course_id = scr.course_id
GROUP BY c.course_name

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer For each course id, how many students are registered and what are the course names?*/


SELECT c.course_id, COUNT(sr.student_id) AS 'Number of Students Registered', c.course_name
FROM Courses c
INNER JOIN Student_Course_Registrations sr ON c.course_id = sr.course_id
GROUP BY c.course_id, c.course_name

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer Find id of candidates whose assessment code is "Pass"?*/


SELECT candidate_id 
FROM Candidates 
INNER JOIN Candidate_Assessments 
ON Candidates.candidate_id = Candidate_Assessments.candidate_id 
WHERE assessment_outcome_code = 'Pass'

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of the candidates that have an outcome code of Pass?*/


SELECT candidate_id 
FROM Candidates 
INNER JOIN Candidate_Assessments 
ON Candidates.candidate_id = Candidate_Assessments.candidate_id 
WHERE assessment_outcome_code = 'Pass'

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer Find the cell mobile number of the candidates whose assessment code is "Fail"?*/


SELECT p.cell_mobile_number 
FROM People p 
INNER JOIN Candidates c ON p.person_id = c.candidate_id 
INNER JOIN Candidate_Assessments ca ON c.candidate_id = ca.candidate_id 
WHERE ca.asessment_outcome_code = 'Fail'

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the cell phone numbers of the candidates that received an assessment code of "Fail"?*/


SELECT p.cell_mobile_number 
FROM People p 
INNER JOIN Candidates c ON p.person_id = c.candidate_id 
INNER JOIN Candidate_Assessments ca ON c.candidate_id = ca.candidate_id 
WHERE ca.asessment_outcome_code = 'Fail'

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the id of students who registered course 301?*/


SELECT student_id 
FROM Student_Course_Registrations 
WHERE course_id = 301

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of the students who registered for course 301?*/


SELECT student_id 
FROM Student_Course_Registrations 
WHERE course_id = 301

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What is the id of the student who most recently registered course 301?*/


SELECT student_id 
FROM Student_Course_Registrations 
WHERE course_id = 301 
ORDER BY registration_date DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of the students who registered for course 301 most recently?*/


SELECT student_id 
FROM Student_Course_Registrations 
WHERE course_id = 301 
ORDER BY registration_date DESC

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer Find distinct cities of addresses of people?*/


SELECT DISTINCT city FROM Addresses

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the different cities where people live?*/


SELECT DISTINCT city 
FROM Addresses 
INNER JOIN People_Addresses 
ON Addresses.address_id = People_Addresses.address_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer Find distinct cities of address of students?*/


SELECT DISTINCT city 
FROM Addresses 
INNER JOIN People_Addresses 
ON Addresses.address_id = People_Addresses.address_id 
INNER JOIN Students 
ON People_Addresses.person_id = Students.student_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the different cities where students live?*/


SELECT DISTINCT city 
FROM Addresses 
INNER JOIN People_Addresses 
ON Addresses.address_id = People_Addresses.address_id 
INNER JOIN People 
ON People_Addresses.person_id = People.person_id 
INNER JOIN Students 
ON People.person_id = Students.student_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer List the names of courses in alphabetical order?*/


SELECT course_name
FROM Courses
ORDER BY course_name ASC

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the names of the courses in alphabetical order?*/


SELECT course_name
FROM Courses
ORDER BY course_name ASC

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer List the first names of people in alphabetical order?*/


SELECT first_name 
FROM People 
ORDER BY first_name ASC

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the first names of the people in alphabetical order?*/


SELECT first_name 
FROM People 
ORDER BY first_name ASC

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the id of students who registered courses or attended courses?*/


SELECT DISTINCT student_id 
FROM Student_Course_Registrations 
UNION 
SELECT DISTINCT student_id 
FROM Student_Course_Attendance

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of the students who either registered or attended a course?*/


SELECT DISTINCT student_id 
FROM Student_Course_Registrations 
UNION 
SELECT DISTINCT student_id 
FROM Student_Course_Attendance

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer Find the id of courses which are registered or attended by student whose id is 121?*/


SELECT course_id 
FROM Courses c 
INNER JOIN Student_Course_Registrations scr ON c.course_id = scr.course_id 
INNER JOIN Student_Course_Attendance sca ON c.course_id = sca.course_id 
WHERE scr.student_id = 121 OR sca.student_id = 121

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of the courses that are registered or attended by the student whose id is 121?*/


SELECT course_id 
FROM Student_Course_Registrations 
WHERE student_id = 121 
UNION 
SELECT course_id 
FROM Student_Course_Attendance 
WHERE student_id = 121

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are all info of students who registered courses but not attended courses?*/


SELECT s.student_id, s.student_details
FROM Students s
INNER JOIN Student_Course_Registrations scr ON s.student_id = scr.student_id
LEFT JOIN Student_Course_Attendance sca ON s.student_id = sca.student_id
WHERE sca.student_id IS NULL

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are all details of the students who registered but did not attend any course?*/


SELECT s.student_id, s.student_details
FROM Students s
LEFT JOIN Student_Course_Registrations scr ON s.student_id = scr.student_id
LEFT JOIN Student_Course_Attendance sca ON s.student_id = sca.student_id
WHERE sca.student_id IS NULL

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to List the id of students who registered course statistics in the order of registration date.*/


SELECT student_id 
FROM Student_Course_Registrations 
WHERE course_id = 'Statistics' 
ORDER BY registration_date

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to answer What are the ids of the students who registered course statistics by order of registration date?*/


SELECT student_id 
FROM Student_Course_Registrations 
WHERE course_id = 'statistics' 
ORDER BY registration_date

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to List the id of students who attended  statistics courses in the order of attendance date.*/


SELECT student_id 
FROM Student_Course_Attendance 
INNER JOIN Courses 
ON Student_Course_Attendance.course_id = Courses.course_id 
WHERE Courses.course_name = 'Statistics' 
ORDER BY Student_Course_Attendance.date_of_attendance

/*Here are Mysql tables, with their properties:

Addresses(address_id, line_1, line_2, city, zip_postcode, state_province_county, country)
People(person_id, first_name, middle_name, last_name, cell_mobile_number, email_address, login_name, password)
Students(student_id, student_details)
Courses(course_id, course_name, course_description, other_details)
People_Addresses(person_address_id, person_id, address_id, date_from, date_to)
Student_Course_Registrations(student_id, course_id, registration_date)
Student_Course_Attendance(student_id, course_id, date_of_attendance)
Candidates(candidate_id, candidate_details)
Candidate_Assessments(candidate_id, qualification, assessment_date, asessment_outcome_code)

Create a SQL request to What are the ids of the students who attended courses in the statistics department in order of attendance date.*/


SELECT student_id 
FROM Student_Course_Attendance 
INNER JOIN Courses 
ON Student_Course_Attendance.course_id = Courses.course_id 
WHERE Courses.course_name LIKE '%Statistics%' 
ORDER BY Student_Course_Attendance.date_of_attendance

