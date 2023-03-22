/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer How many assessment notes are there in total?*/


SELECT COUNT(*) FROM Assessment_Notes

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the dates of the assessment notes?*/


SELECT date_of_notes 
FROM Assessment_Notes

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer How many addresses have zip code 197?*/


SELECT COUNT(*) 
FROM Addresses 
WHERE zip_postcode = '197'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer How many distinct incident type codes are there?*/


SELECT COUNT(DISTINCT incident_type_code) 
FROM Ref_Incident_Type

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Return all distinct detention type codes.*/


SELECT DISTINCT detention_type_code FROM Ref_Detention_Type

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the start and end dates for incidents with incident type code "NOISE"?*/


SELECT date_incident_start, date_incident_end 
FROM Behavior_Incident 
WHERE incident_type_code = 'NOISE'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Return all detention summaries.*/


SELECT Detention.detention_summary 
FROM Detention

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Return the cell phone number and email address for all students.*/


SELECT cell_mobile_number, email_address
FROM Students

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What is the email of the student with first name "Emma" and last name "Rohan"?*/


SELECT email_address 
FROM Students 
WHERE first_name = 'Emma' AND last_name = 'Rohan'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer How many distinct students have been in detention?*/


SELECT COUNT(DISTINCT student_id) 
FROM Students_in_Detention

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What is the gender of the teacher with last name "Medhurst"?*/


SELECT gender 
FROM Teachers 
WHERE last_name = 'Medhurst'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What is the incident type description for the incident type with code "VIOLENCE"?*/


SELECT incident_type_description 
FROM Ref_Incident_Type 
WHERE incident_type_code = 'VIOLENCE'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the maximum and minimum monthly rental for all student addresses.*/


SELECT MAX(monthly_rental) AS Max_Rental, MIN(monthly_rental) AS Min_Rental
FROM Student_Addresses

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the first names of teachers whose email address contains the word "man".*/


SELECT first_name 
FROM Teachers 
WHERE email_address LIKE '%man%'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to List all information about the assessment notes sorted by date in ascending order.*/


SELECT * FROM Assessment_Notes ORDER BY date_of_notes ASC

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to List all cities of addresses in alphabetical order.*/


SELECT city FROM Addresses ORDER BY city ASC

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the first names and last names of teachers in alphabetical order of last name.*/


SELECT first_name, last_name 
FROM Teachers 
ORDER BY last_name ASC

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find all information about student addresses, and sort by monthly rental in descending order.*/


SELECT s.student_id, a.line_1, a.line_2, a.line_3, a.city, a.zip_postcode, a.state_province_county, a.country, a.other_address_details, sa.date_address_from, sa.date_address_to, sa.monthly_rental, sa.other_details
FROM Students s
INNER JOIN Student_Addresses sa ON s.student_id = sa.student_id
INNER JOIN Addresses a ON sa.address_id = a.address_id
ORDER BY sa.monthly_rental DESC

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer Find the id and first name of the student that has the most number of assessment notes?*/


SELECT s.student_id, s.first_name
FROM Students s
INNER JOIN Assessment_Notes an ON s.student_id = an.student_id
GROUP BY s.student_id, s.first_name
ORDER BY COUNT(an.notes_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer Find the ids and first names of the 3 teachers that have the most number of assessment notes?*/


SELECT teacher_id, first_name
FROM Teachers
INNER JOIN Assessment_Notes
ON Teachers.teacher_id = Assessment_Notes.teacher_id
GROUP BY teacher_id
ORDER BY COUNT(*) DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer Find the id and last name of the student that has the most behavior incidents?*/


SELECT s.student_id, s.last_name
FROM Students s
INNER JOIN Behavior_Incident bi ON s.student_id = bi.student_id
GROUP BY s.student_id, s.last_name
ORDER BY COUNT(bi.incident_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer Find the id and last name of the teacher that has the most detentions with detention type code "AFTER"?*/


SELECT t.teacher_id, t.last_name
FROM Teachers t
INNER JOIN Detention d ON t.teacher_id = d.teacher_id
INNER JOIN Students_in_Detention sd ON d.detention_id = sd.detention_id
WHERE d.detention_type_code = 'AFTER'
GROUP BY t.teacher_id, t.last_name
ORDER BY COUNT(sd.student_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the id and first name of the student whose addresses have the highest average monthly rental?*/


SELECT s.student_id, s.first_name
FROM Students s
INNER JOIN Student_Addresses sa ON s.student_id = sa.student_id
INNER JOIN Addresses a ON sa.address_id = a.address_id
GROUP BY s.student_id, s.first_name
ORDER BY AVG(sa.monthly_rental) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the id and city of the student address with the highest average monthly rental.*/


SELECT Addresses.address_id, Addresses.city
FROM Addresses
INNER JOIN Student_Addresses ON Addresses.address_id = Student_Addresses.address_id
GROUP BY Addresses.address_id, Addresses.city
ORDER BY AVG(Student_Addresses.monthly_rental) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the code and description of the most frequent behavior incident type?*/


SELECT incident_type_code, incident_type_description
FROM Ref_Incident_Type
INNER JOIN Behavior_Incident
ON Ref_Incident_Type.incident_type_code = Behavior_Incident.incident_type_code
GROUP BY incident_type_code
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the code and description of the least frequent detention type ?*/


SELECT detention_type_code, detention_type_description 
FROM Ref_Detention_Type 
WHERE detention_type_code IN (SELECT detention_type_code 
                              FROM Detention 
                              GROUP BY detention_type_code 
                              ORDER BY COUNT(*) ASC 
                              LIMIT 1)

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the dates of assessment notes for students with first name "Fanny".*/


SELECT date_of_notes 
FROM Assessment_Notes 
INNER JOIN Students ON Assessment_Notes.student_id = Students.student_id 
WHERE Students.first_name = 'Fanny'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the texts of assessment notes for teachers with last name "Schuster".*/


SELECT text_of_notes 
FROM Assessment_Notes 
INNER JOIN Teachers 
ON Assessment_Notes.teacher_id = Teachers.teacher_id 
WHERE Teachers.last_name = 'Schuster'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the start and end dates of behavior incidents of students with last name "Fahey".*/


SELECT date_incident_start, date_incident_end 
FROM Behavior_Incident 
INNER JOIN Students ON Behavior_Incident.student_id = Students.student_id 
WHERE Students.last_name = 'Fahey'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the start and end dates of detentions of teachers with last name "Schultz".*/


SELECT t.last_name, d.datetime_detention_start, d.datetime_detention_end
FROM Teachers t
INNER JOIN Detention d ON t.teacher_id = d.teacher_id
WHERE t.last_name = 'Schultz'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the id and zip code of the address with the highest monthly rental?*/


SELECT Addresses.address_id, Addresses.zip_postcode 
FROM Addresses 
INNER JOIN Student_Addresses 
ON Addresses.address_id = Student_Addresses.address_id 
ORDER BY Student_Addresses.monthly_rental DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What is the cell phone number of the student whose address has the lowest monthly rental?*/


SELECT s.cell_mobile_number 
FROM Students s 
INNER JOIN Student_Addresses sa ON s.student_id = sa.student_id 
INNER JOIN Addresses a ON sa.address_id = a.address_id 
ORDER BY sa.monthly_rental ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the monthly rentals of student addresses in Texas state?*/


SELECT s.student_id, a.state_province_county, sa.monthly_rental
FROM Students s
INNER JOIN Student_Addresses sa ON s.student_id = sa.student_id
INNER JOIN Addresses a ON sa.address_id = a.address_id
WHERE a.state_province_county = 'Texas'
ORDER BY s.student_id

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the first names and last names of students with address in Wisconsin state?*/


SELECT first_name, last_name 
FROM Students 
INNER JOIN Addresses 
ON Students.address_id = Addresses.address_id 
WHERE state_province_county = 'Wisconsin'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the line 1 and average monthly rentals of all student addresses?*/


SELECT Addresses.line_1, AVG(Student_Addresses.monthly_rental)
FROM Addresses
INNER JOIN Student_Addresses
ON Addresses.address_id = Student_Addresses.address_id
GROUP BY Addresses.line_1

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What is the zip code of the address where the teacher with first name "Lyla" lives?*/


SELECT Addresses.zip_postcode 
FROM Addresses 
INNER JOIN Teachers 
ON Addresses.address_id = Teachers.address_id 
WHERE Teachers.first_name = 'Lyla'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the email addresses of teachers whose address has zip code "918"?*/


SELECT t.email_address 
FROM Teachers t 
INNER JOIN Addresses a 
ON t.address_id = a.address_id 
WHERE a.zip_postcode = '918'

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer How many students are not involved in any behavior incident?*/


SELECT COUNT(*) 
FROM Students 
WHERE student_id NOT IN (SELECT student_id FROM Behavior_Incident)

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to Find the last names of teachers who are not involved in any detention.*/


SELECT last_name 
FROM Teachers 
WHERE teacher_id NOT IN (SELECT teacher_id FROM Detention)

/*Here are Mysql tables, with their properties:

Ref_Address_Types(address_type_code, address_type_description)
Ref_Detention_Type(detention_type_code, detention_type_description)
Ref_Incident_Type(incident_type_code, incident_type_description)
Addresses(address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details)
Students(student_id, address_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_first_rental, date_left_university, other_student_details)
Teachers(teacher_id, address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details)
Assessment_Notes(notes_id, student_id, teacher_id, date_of_notes, text_of_notes, other_details)
Behavior_Incident(incident_id, incident_type_code, student_id, date_incident_start, date_incident_end, incident_summary, recommendations, other_details)
Detention(detention_id, detention_type_code, teacher_id, datetime_detention_start, datetime_detention_end, detention_summary, other_details)
Student_Addresses(student_id, address_id, date_address_from, date_address_to, monthly_rental, other_details)
Students_in_Detention(student_id, detention_id, incident_id)

Create a SQL request to answer What are the line 1 of addresses shared by some students and some teachers?*/


SELECT a.line_1 
FROM Addresses a 
INNER JOIN Students s ON a.address_id = s.address_id 
INNER JOIN Teachers t ON a.address_id = t.address_id 
GROUP BY a.line_1

