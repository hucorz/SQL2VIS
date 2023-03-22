/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer How many courses are there in total?*/


SELECT COUNT(*) FROM Courses

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the total number of courses offered.*/


SELECT COUNT(*) FROM Courses

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the descriptions of the courses with name "database"?*/


SELECT course_description 
FROM Courses 
WHERE course_name = 'database'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Return the description for the courses named "database".*/


SELECT course_description 
FROM Courses 
WHERE course_name = 'database'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to What are the addresses of the course authors or tutors with personal name "Cathrine"*/


SELECT address_line_1 
FROM Course_Authors_and_Tutors 
WHERE personal_name = 'Cathrine'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Return the addresses of the course authors or tutors whose personal name is "Cathrine".*/


SELECT address_line_1 
FROM Course_Authors_and_Tutors 
WHERE personal_name = 'Cathrine'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List the addresses of all the course authors or tutors.*/


SELECT address_line_1 
FROM Course_Authors_and_Tutors 
WHERE author_tutor_ATB = 'Author' OR author_tutor_ATB = 'Tutor'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What is the address of each course author or tutor?*/


SELECT author_id, address_line_1
FROM Course_Authors_and_Tutors

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List all the login names and family names of course author and tutors.*/


SELECT login_name, family_name 
FROM Course_Authors_and_Tutors 
WHERE author_tutor_ATB = 'A' OR author_tutor_ATB = 'T'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the login names and family names of course author and tutors?*/


SELECT login_name, family_name 
FROM Course_Authors_and_Tutors 
WHERE author_tutor_ATB = 'Author' OR author_tutor_ATB = 'Tutor'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List all the dates of enrollment and completion of students.*/


SELECT Student_Course_Enrolment.date_of_enrolment, Student_Course_Enrolment.date_of_completion
FROM Student_Course_Enrolment

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are all the dates of enrollment and completion in record?*/


SELECT date_of_enrolment, date_of_completion
FROM Student_Course_Enrolment

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer How many distinct students are enrolled in courses?*/


SELECT COUNT(DISTINCT student_id) 
FROM Student_Course_Enrolment

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the number of distinct students enrolled in courses.*/


SELECT COUNT(DISTINCT student_id) 
FROM Student_Course_Enrolment

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer How many distinct courses are enrolled in by students?*/


SELECT COUNT(DISTINCT course_id) 
FROM Student_Course_Enrolment

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the number of distinct courses that have enrolled students.*/


SELECT COUNT(DISTINCT course_id) 
FROM Student_Course_Enrolment

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the dates of the tests taken with result "Pass".*/


SELECT date_test_taken 
FROM Student_Tests_Taken 
WHERE test_result = 'Pass'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Which tests have "Pass" results? Return the dates when the tests were taken.*/


SELECT date_test_taken 
FROM Student_Tests_Taken 
WHERE test_result = 'Pass'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer How many tests have result "Fail"?*/


SELECT COUNT(*) 
FROM Student_Tests_Taken 
WHERE test_result = 'Fail'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Count the number of tests with "Fail" result.*/


SELECT COUNT(*) 
FROM Student_Tests_Taken 
WHERE test_result = 'Fail'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the login names of the students with family name "Ward"?*/


SELECT login_name 
FROM Students 
WHERE family_name = 'Ward'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Return the login names of the students whose family name is "Ward".*/


SELECT login_name 
FROM Students 
WHERE family_name = 'Ward'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the dates of the latest logon of the students with family name "Jaskolski" or "Langosh"?*/


SELECT Students.date_of_latest_logon 
FROM Students 
WHERE Students.family_name IN ('Jaskolski', 'Langosh')

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the latest logon date of the students whose family name is "Jaskolski" or "Langosh".*/


SELECT Students.date_of_latest_logon 
FROM Students 
WHERE Students.family_name = 'Jaskolski' OR Students.family_name = 'Langosh'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer How many students have personal names that contain the word "son"?*/


SELECT COUNT(*) 
FROM Students 
WHERE personal_name LIKE '%son%'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the number of students who have the word "son" in their personal names.*/


SELECT COUNT(*) 
FROM Students 
WHERE personal_name LIKE '%son%'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List all the subject names.*/


SELECT subject_name FROM Subjects

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to What are the names of all the subjects.*/


SELECT subject_name FROM Subjects

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List all the information about course authors and tutors in alphabetical order of the personal name.*/


SELECT * 
FROM Course_Authors_and_Tutors 
ORDER BY personal_name ASC

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Sort the information about course authors and tutors in alphabetical order of the personal name.*/


SELECT author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1
FROM Course_Authors_and_Tutors
ORDER BY personal_name ASC

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List the personal names and family names of all the students in alphabetical order of family name.*/


SELECT personal_name, family_name 
FROM Students 
ORDER BY family_name ASC

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to What are the personal names and family names of the students? Sort the result in alphabetical order of the family name.*/


SELECT personal_name, family_name 
FROM Students 
ORDER BY family_name ASC

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List each test result and its count in descending order of count.*/


SELECT test_result, COUNT(test_result) AS count 
FROM Student_Tests_Taken 
GROUP BY test_result 
ORDER BY count DESC

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to For each distinct test result, find the number of students who got the result.*/


SELECT test_result, COUNT(*) AS num_students
FROM Student_Tests_Taken
GROUP BY test_result

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the login name of the course author that teaches the course with name "advanced database".*/


SELECT login_name 
FROM Course_Authors_and_Tutors 
INNER JOIN Courses 
ON Course_Authors_and_Tutors.author_id = Courses.author_id 
WHERE course_name = 'advanced database'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Which course author teaches the "advanced database" course? Give me his or her login name.*/


SELECT login_name 
FROM Course_Authors_and_Tutors 
INNER JOIN Courses 
ON Course_Authors_and_Tutors.author_id = Courses.author_id 
WHERE course_name = 'Advanced Database'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the addresses of the course authors who teach the course with name "operating system" or "data structure".*/


SELECT address_line_1 
FROM Course_Authors_and_Tutors 
INNER JOIN Courses 
ON Course_Authors_and_Tutors.author_id = Courses.author_id 
WHERE course_name = 'Operating System' OR course_name = 'Data Structure'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to What are the addresses of the course authors who teach either "operating system" or "data structure" course.*/


SELECT address_line_1 
FROM Course_Authors_and_Tutors 
INNER JOIN Courses 
ON Course_Authors_and_Tutors.author_id = Courses.author_id 
INNER JOIN Subjects 
ON Courses.subject_id = Subjects.subject_id 
WHERE Subjects.subject_name IN ('operating system', 'data structure')

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the personal name, family name, and author ID of the course author that teaches the most courses.*/


SELECT personal_name, family_name, author_id 
FROM Course_Authors_and_Tutors 
INNER JOIN Courses 
ON Course_Authors_and_Tutors.author_id = Courses.author_id 
GROUP BY author_id 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the personal name, family name, and author ID of the course author who teaches the most courses?*/


SELECT personal_name, family_name, author_id
FROM Course_Authors_and_Tutors
INNER JOIN Courses ON Course_Authors_and_Tutors.author_id = Courses.author_id
GROUP BY author_id
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the addresses and author IDs of the course authors that teach at least two courses.*/


SELECT author_id, address_line_1
FROM Course_Authors_and_Tutors
WHERE author_id IN (SELECT author_id
                    FROM Courses
                    GROUP BY author_id
                    HAVING COUNT(*) >= 2)

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Which course authors teach two or more courses? Give me their addresses and author IDs.*/


SELECT author_id, address_line_1
FROM Course_Authors_and_Tutors
WHERE author_id IN (SELECT author_id
                    FROM Courses
                    GROUP BY author_id
                    HAVING COUNT(*) >= 2)


/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the names of courses taught by the tutor who has personal name "Julio".*/


SELECT c.course_name 
FROM Course_Authors_and_Tutors ca 
INNER JOIN Courses c ON ca.author_id = c.author_id 
WHERE ca.personal_name = 'Julio'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the names of the courses taught by the tutor whose personal name is "Julio"?*/


SELECT c.course_name 
FROM Course_Authors_and_Tutors ca 
INNER JOIN Courses c ON ca.author_id = c.author_id 
WHERE ca.personal_name = 'Julio'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the names and descriptions of courses that belong to the subject named "Computer Science".*/


SELECT course_name, course_description 
FROM Courses 
INNER JOIN Subjects 
ON Courses.subject_id = Subjects.subject_id 
WHERE Subjects.subject_name = 'Computer Science'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the names and descriptions of the all courses under the "Computer Science" subject?*/


SELECT course_name, course_description 
FROM Courses 
INNER JOIN Subjects 
ON Courses.subject_id = Subjects.subject_id 
WHERE Subjects.subject_name = 'Computer Science'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the subject ID, subject name, and the corresponding number of available courses for each subject.*/


SELECT Subjects.subject_id, Subjects.subject_name, COUNT(Courses.course_id) AS 'Number of Available Courses'
FROM Subjects
LEFT JOIN Courses ON Subjects.subject_id = Courses.subject_id
GROUP BY Subjects.subject_id, Subjects.subject_name

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the subject ID, subject name, and the number of available courses for each subject?*/


SELECT Subjects.subject_id, Subjects.subject_name, COUNT(Courses.course_id) AS 'Number of Available Courses'
FROM Subjects
LEFT JOIN Courses ON Subjects.subject_id = Courses.subject_id
GROUP BY Subjects.subject_id, Subjects.subject_name

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the subject ID, name of subject and the corresponding number of courses for each subject, and sort by the course count in ascending order.*/


SELECT Subjects.subject_id, Subjects.subject_name, COUNT(Courses.course_id) AS course_count
FROM Subjects
LEFT JOIN Courses ON Subjects.subject_id = Courses.subject_id
GROUP BY Subjects.subject_id
ORDER BY course_count ASC

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List the subject ID, name of subject and the number of courses available for each subject in ascending order of the course counts.*/


SELECT Subjects.subject_id, Subjects.subject_name, COUNT(Courses.course_id) AS 'Number of Courses'
FROM Subjects
LEFT JOIN Courses ON Subjects.subject_id = Courses.subject_id
GROUP BY Subjects.subject_id, Subjects.subject_name
ORDER BY 'Number of Courses' ASC

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What is the date of enrollment of the course named "Spanish"?*/


SELECT date_of_enrolment 
FROM Student_Course_Enrolment 
INNER JOIN Courses 
ON Student_Course_Enrolment.course_id = Courses.course_id 
WHERE Courses.course_name = 'Spanish'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the the date of enrollment of the "Spanish" course.*/


SELECT date_of_enrolment 
FROM Student_Course_Enrolment 
INNER JOIN Courses 
ON Student_Course_Enrolment.course_id = Courses.course_id 
WHERE Courses.course_name = 'Spanish'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What is the name of the course that has the most student enrollment?*/


SELECT c.course_name
FROM Courses c
INNER JOIN Student_Course_Enrolment sce ON c.course_id = sce.course_id
GROUP BY c.course_name
ORDER BY COUNT(sce.registration_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Which course is enrolled in by the most students? Give me the course name.*/


SELECT course_name, COUNT(*) AS num_students
FROM Courses c
INNER JOIN Student_Course_Enrolment sce ON c.course_id = sce.course_id
GROUP BY course_name
ORDER BY num_students DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the names of the courses that have exactly 1 student enrollment?*/


SELECT c.course_name 
FROM Courses c 
INNER JOIN Student_Course_Enrolment sce ON c.course_id = sce.course_id 
GROUP BY c.course_name 
HAVING COUNT(sce.registration_id) = 1

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the names of the courses that have just one student enrollment.*/


SELECT course_name 
FROM Courses c 
INNER JOIN Student_Course_Enrolment sce 
ON c.course_id = sce.course_id 
GROUP BY course_name 
HAVING COUNT(*) = 1

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the descriptions and names of the courses that have student enrollment bigger than 2?*/


SELECT course_name, course_description 
FROM Courses 
INNER JOIN Student_Course_Enrolment 
ON Courses.course_id = Student_Course_Enrolment.course_id 
GROUP BY course_name, course_description 
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Return the descriptions and names of the courses that have more than two students enrolled in.*/


SELECT c.course_name, c.course_description 
FROM Courses c 
INNER JOIN Student_Course_Enrolment sce ON c.course_id = sce.course_id 
GROUP BY c.course_name, c.course_description 
HAVING COUNT(sce.student_id) > 2

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What is the name of each course and the corresponding number of student enrollment?*/


SELECT c.course_name, COUNT(sce.registration_id) AS 'Number of Student Enrollment'
FROM Courses c
INNER JOIN Student_Course_Enrolment sce ON c.course_id = sce.course_id
GROUP BY c.course_name

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List the name and the number of enrolled student for each course.*/


SELECT c.course_name, COUNT(sce.student_id) AS 'Number of Enrolled Students'
FROM Courses c
INNER JOIN Student_Course_Enrolment sce ON c.course_id = sce.course_id
GROUP BY c.course_name

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the enrollment dates of all the tests that have result "Pass"?*/


SELECT Student_Course_Enrolment.date_of_enrolment 
FROM Student_Course_Enrolment 
INNER JOIN Student_Tests_Taken 
ON Student_Course_Enrolment.registration_id = Student_Tests_Taken.registration_id 
WHERE Student_Tests_Taken.test_result = 'Pass'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the enrollment date for all the tests that have "Pass" result.*/


SELECT Student_Course_Enrolment.date_of_enrolment 
FROM Student_Course_Enrolment 
INNER JOIN Student_Tests_Taken 
ON Student_Course_Enrolment.registration_id = Student_Tests_Taken.registration_id 
WHERE Student_Tests_Taken.test_result = 'Pass'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the completion dates of all the tests that have result "Fail"?*/


SELECT Student_Tests_Taken.date_test_taken 
FROM Student_Tests_Taken 
WHERE test_result = 'Fail'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Return the completion date for all the tests that have "Fail" result.*/


SELECT Student_Tests_Taken.date_test_taken 
FROM Student_Tests_Taken 
WHERE test_result = 'Fail'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List the dates of enrollment and completion of the student with personal name "Karson".*/


SELECT date_of_enrolment, date_of_completion 
FROM Student_Course_Enrolment 
INNER JOIN Students 
ON Student_Course_Enrolment.student_id = Students.student_id 
WHERE Students.personal_name = 'Karson'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer On what dates did the student whose personal name is "Karson" enroll in and complete the courses?*/


SELECT sce.date_of_enrolment, sce.date_of_completion
FROM Students s
INNER JOIN Student_Course_Enrolment sce ON s.student_id = sce.student_id
WHERE s.personal_name = 'Karson'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to List the dates of enrollment and completion of the student with family name "Zieme" and personal name "Bernie".*/


SELECT date_of_enrolment, date_of_completion 
FROM Student_Course_Enrolment 
INNER JOIN Students 
ON Student_Course_Enrolment.student_id = Students.student_id 
WHERE family_name = 'Zieme' AND personal_name = 'Bernie'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer On what dates did the student with family name "Zieme" and personal name "Bernie" enroll in and complete the courses?*/


SELECT sce.date_of_enrolment, sce.date_of_completion
FROM Students s
INNER JOIN Student_Course_Enrolment sce ON s.student_id = sce.student_id
WHERE s.family_name = 'Zieme' AND s.personal_name = 'Bernie'

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the student ID and login name of the student with the most course enrollments*/


SELECT student_id, login_name
FROM Students
INNER JOIN Student_Course_Enrolment
ON Students.student_id = Student_Course_Enrolment.student_id
GROUP BY student_id
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the student ID and login name of the student who are enrolled in the most courses?*/


SELECT Students.student_id, Students.login_name
FROM Students
INNER JOIN Student_Course_Enrolment
ON Students.student_id = Student_Course_Enrolment.student_id
GROUP BY Students.student_id
ORDER BY COUNT(Student_Course_Enrolment.course_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the student ID and personal name of the student with at least two enrollments.*/


SELECT s.student_id, s.personal_name 
FROM Students s 
INNER JOIN Student_Course_Enrolment sc 
ON s.student_id = sc.student_id 
GROUP BY s.student_id, s.personal_name 
HAVING COUNT(sc.registration_id) >= 2

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Which student are enrolled in at least two courses? Give me the student ID and personal name.*/


SELECT s.student_id, s.personal_name
FROM Students s
INNER JOIN Student_Course_Enrolment e ON s.student_id = e.student_id
GROUP BY s.student_id, s.personal_name
HAVING COUNT(e.course_id) >= 2

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the student ID and middle name for all the students with at most two enrollments.*/


SELECT Students.student_id, Students.middle_name 
FROM Students 
INNER JOIN Student_Course_Enrolment 
ON Students.student_id = Student_Course_Enrolment.student_id 
GROUP BY Students.student_id 
HAVING COUNT(Student_Course_Enrolment.registration_id) <= 2

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the student IDs and middle names of the students enrolled in at most two courses?*/


SELECT Students.student_id, Students.middle_name
FROM Students
INNER JOIN Student_Course_Enrolment
ON Students.student_id = Student_Course_Enrolment.student_id
GROUP BY Students.student_id
HAVING COUNT(Student_Course_Enrolment.course_id) <= 2

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the personal names of students not enrolled in any course.*/


SELECT s.personal_name 
FROM Students s 
LEFT JOIN Student_Course_Enrolment sc 
ON s.student_id = sc.student_id 
WHERE sc.registration_id IS NULL

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Which students not enrolled in any course? Find their personal names.*/


SELECT s.personal_name 
FROM Students s 
LEFT JOIN Student_Course_Enrolment sc 
ON s.student_id = sc.student_id 
WHERE sc.registration_id IS NULL

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer How many students did not have any course enrollment?*/


SELECT COUNT(*)
FROM Students
WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Enrolment)

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Count the number of students who did not enroll in any course.*/


SELECT COUNT(*) 
FROM Students 
WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Enrolment)

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the common login name of course authors and students.*/


SELECT DISTINCT a.login_name
FROM Course_Authors_and_Tutors a
INNER JOIN Students b
ON a.login_name = b.login_name

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the login names used both by some course authors and some students?*/


SELECT login_name
FROM Course_Authors_and_Tutors
INNER JOIN Students
ON Course_Authors_and_Tutors.login_name = Students.login_name

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to Find the common personal name of course authors and students.*/


SELECT DISTINCT ca.personal_name 
FROM Course_Authors_and_Tutors ca 
INNER JOIN Courses c ON ca.author_id = c.author_id 
INNER JOIN Student_Course_Enrolment sce ON c.course_id = sce.course_id 
INNER JOIN Students s ON sce.student_id = s.student_id 
WHERE ca.personal_name = s.personal_name

/*Here are Mysql tables, with their properties:

Course_Authors_and_Tutors(author_id, author_tutor_ATB, login_name, password, personal_name, middle_name, family_name, gender_mf, address_line_1)
Students(student_id, date_of_registration, date_of_latest_logon, login_name, password, personal_name, middle_name, family_name)
Subjects(subject_id, subject_name)
Courses(course_id, author_id, subject_id, course_name, course_description)
Student_Course_Enrolment(registration_id, student_id, course_id, date_of_enrolment, date_of_completion)
Student_Tests_Taken(registration_id, date_test_taken, test_result)

Create a SQL request to answer What are the personal names used both by some course authors and some students?*/


SELECT DISTINCT ca.personal_name 
FROM Course_Authors_and_Tutors ca 
INNER JOIN Students s 
ON ca.personal_name = s.personal_name

