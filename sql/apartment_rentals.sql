/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer How many apartment bookings are there in total?*/


SELECT COUNT(*) FROM Apartment_Bookings

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Count the total number of apartment bookings.*/


SELECT COUNT(*) FROM Apartment_Bookings

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the start dates and end dates of all the apartment bookings.*/


SELECT booking_start_date, booking_end_date
FROM Apartment_Bookings

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the start date and end date of each apartment booking?*/


SELECT apt_booking_id, booking_start_date, booking_end_date
FROM Apartment_Bookings

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show all distinct building descriptions.*/


SELECT DISTINCT building_description 
FROM Apartment_Buildings

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Give me a list of all the distinct building descriptions.*/


SELECT DISTINCT building_description 
FROM Apartment_Buildings

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the short names of the buildings managed by "Emma".*/


SELECT building_short_name 
FROM Apartment_Buildings 
WHERE building_manager = 'Emma'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Which buildings does "Emma" manage? Give me the short names of the buildings.*/


SELECT building_short_name 
FROM Apartment_Buildings 
WHERE building_manager = 'Emma'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the addresses and phones of all the buildings managed by "Brenden".*/


SELECT building_address, building_phone 
FROM Apartment_Buildings 
WHERE building_manager = 'Brenden'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the address and phone number of the buildings managed by "Brenden"?*/


SELECT building_address, building_phone 
FROM Apartment_Buildings 
WHERE building_manager = 'Brenden'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the building full names that contain the word "court"?*/


SELECT building_full_name 
FROM Apartment_Buildings 
WHERE building_full_name LIKE '%court%'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Find all the building full names containing the word "court".*/


SELECT building_full_name 
FROM Apartment_Buildings 
WHERE building_full_name LIKE '%court%'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What is the minimum and maximum number of bathrooms of all the apartments?*/


SELECT MIN(bathroom_count) AS min_bathrooms, MAX(bathroom_count) AS max_bathrooms
FROM Apartments

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Give me the minimum and maximum bathroom count among all the apartments.*/


SELECT MIN(bathroom_count) AS min_bathroom_count, MAX(bathroom_count) AS max_bathroom_count
FROM Apartments

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What is the average number of bedrooms of all apartments?*/


SELECT AVG(bedroom_count)
FROM Apartments

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Find the average number of bedrooms of all the apartments.*/


SELECT AVG(bedroom_count)
FROM Apartments

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return the apartment number and the number of rooms for each apartment.*/


SELECT Apartments.apt_number, Apartments.room_count 
FROM Apartments

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the apartment number and the room count of each apartment?*/


SELECT Apartments.apt_number, Apartments.room_count
FROM Apartments

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What is the average number of rooms of apartments with type code "Studio"?*/


SELECT AVG(room_count)
FROM Apartments
WHERE apt_type_code = 'Studio'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Find the average room count of the apartments that have the "Studio" type code.*/


SELECT AVG(room_count) 
FROM Apartments 
WHERE apt_type_code = 'Studio'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return the apartment numbers of the apartments with type code "Flat".*/


SELECT apt_number 
FROM Apartments 
WHERE apt_type_code = 'Flat'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Which apartments have type code "Flat"? Give me their apartment numbers.*/


SELECT apt_number 
FROM Apartments 
WHERE apt_type_code = 'Flat'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return the first names and last names of all guests*/
 who have booked an apartment in a building with a building_id of 1

SELECT guest_first_name, guest_last_name
FROM Guests
INNER JOIN Apartment_Bookings ON Guests.guest_id = Apartment_Bookings.guest_id
INNER JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id
WHERE Apartments.building_id = 1

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the first names and last names of all the guests?*/


SELECT guest_first_name, guest_last_name
FROM Guests

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return the date of birth for all the guests with gender code "Male".*/


SELECT guest_first_name, guest_last_name, date_of_birth 
FROM Guests 
WHERE gender_code = 'Male'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are dates of birth of all the guests whose gender is "Male"?*/


SELECT guest_first_name, guest_last_name, date_of_birth
FROM Guests
WHERE gender_code = 'Male'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the apartment numbers, start dates, and end dates of all the apartment bookings.*/


SELECT Apartments.apt_number, Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date
FROM Apartments
INNER JOIN Apartment_Bookings
ON Apartments.apt_id = Apartment_Bookings.apt_id

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the apartment number, start date, and end date of each apartment booking?*/


SELECT Apartments.apt_number, Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date
FROM Apartments
INNER JOIN Apartment_Bookings
ON Apartments.apt_id = Apartment_Bookings.apt_id

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the booking start and end dates of the apartments with type code "Duplex"?*/


SELECT Apartments.apt_type_code, Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date
FROM Apartments
INNER JOIN Apartment_Bookings
ON Apartments.apt_id = Apartment_Bookings.apt_id
WHERE Apartments.apt_type_code = 'Duplex'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return the booking start date and end date for the apartments that have type code "Duplex".*/


SELECT booking_start_date, booking_end_date 
FROM Apartment_Bookings 
INNER JOIN Apartments 
ON Apartment_Bookings.apt_id = Apartments.apt_id 
WHERE Apartments.apt_type_code = 'Duplex'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the booking start and end dates of the apartments with more than 2 bedrooms?*/


SELECT Apartments.apt_id, Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date
FROM Apartments
INNER JOIN Apartment_Bookings
ON Apartments.apt_id = Apartment_Bookings.apt_id
WHERE Apartments.bedroom_count > 2

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Find the booking start date and end date for the apartments that have more than two bedrooms.*/


SELECT booking_start_date, booking_end_date 
FROM Apartments 
INNER JOIN Apartment_Bookings 
ON Apartments.apt_id = Apartment_Bookings.apt_id 
WHERE bedroom_count > 2

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What is the booking status code of the apartment with apartment number "Suite 634"?*/


SELECT booking_status_code 
FROM Apartment_Bookings 
INNER JOIN Apartments 
ON Apartment_Bookings.apt_id = Apartments.apt_id 
WHERE apt_number = 'Suite 634'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Tell me the booking status code for the apartment with number "Suite 634".*/


SELECT Apartment_Bookings.booking_status_code 
FROM Apartment_Bookings 
INNER JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id 
WHERE Apartments.apt_number = 'Suite 634'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the distinct apartment numbers of the apartments that have bookings with status code "Confirmed".*/


SELECT DISTINCT apt_number 
FROM Apartments 
INNER JOIN Apartment_Bookings 
ON Apartments.apt_id = Apartment_Bookings.apt_id 
WHERE Apartment_Bookings.booking_status_code = 'Confirmed'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Which apartments have bookings with status code "Confirmed"? Return their apartment numbers.*/


SELECT Apartments.apt_number 
FROM Apartments 
INNER JOIN Apartment_Bookings 
ON Apartments.apt_id = Apartment_Bookings.apt_id 
WHERE Apartment_Bookings.booking_status_code = 'Confirmed'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the average room count of the apartments that have booking status code "Provisional".*/


SELECT AVG(room_count)
FROM Apartments a
INNER JOIN Apartment_Bookings b
ON a.apt_id = b.apt_id
WHERE b.booking_status_code = 'Provisional'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What is the average room count of the apartments whose booking status code is "Provisional"?*/


SELECT AVG(room_count)
FROM Apartments a
INNER JOIN Apartment_Bookings b
ON a.apt_id = b.apt_id
WHERE b.booking_status_code = 'Provisional'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the guest first names, start dates, and end dates of all the apartment bookings.*/


SELECT guest_first_name, booking_start_date, booking_end_date
FROM Guests
INNER JOIN Apartment_Bookings
ON Guests.guest_id = Apartment_Bookings.guest_id

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the guest first name, start date, and end date of each apartment booking?*/


SELECT g.guest_first_name, ab.booking_start_date, ab.booking_end_date
FROM Guests g
INNER JOIN Apartment_Bookings ab ON g.guest_id = ab.guest_id

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the start dates and end dates of all the apartment bookings made by guests with gender code "Female".*/


SELECT booking_start_date, booking_end_date 
FROM Apartment_Bookings 
INNER JOIN Guests 
ON Apartment_Bookings.guest_id = Guests.guest_id 
WHERE Guests.gender_code = 'Female'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the start date and end date of the apartment bookings made by female guests (gender code "Female")?*/


SELECT booking_start_date, booking_end_date 
FROM Apartment_Bookings 
INNER JOIN Guests 
ON Apartment_Bookings.guest_id = Guests.guest_id 
WHERE Guests.gender_code = 'Female'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the first names and last names of all the guests that have apartment bookings with status code "Confirmed".*/


SELECT guest_first_name, guest_last_name 
FROM Guests 
INNER JOIN Apartment_Bookings 
ON Guests.guest_id = Apartment_Bookings.guest_id 
WHERE booking_status_code = 'Confirmed'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Which guests have apartment bookings with status code "Confirmed"? Return their first names and last names.*/


SELECT guest_first_name, guest_last_name
FROM Guests
INNER JOIN Apartment_Bookings
ON Guests.guest_id = Apartment_Bookings.guest_id
WHERE Apartment_Bookings.booking_status_code = 'Confirmed'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the facility codes of apartments with more than 4 bedrooms.*/


SELECT facility_code 
FROM Apartment_Facilities 
INNER JOIN Apartments 
ON Apartment_Facilities.apt_id = Apartments.apt_id 
WHERE bedroom_count > 4

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What are the facility codes of the apartments with more than four bedrooms?*/


SELECT facility_code 
FROM Apartment_Facilities 
INNER JOIN Apartments 
ON Apartment_Facilities.apt_id = Apartments.apt_id 
WHERE bedroom_count > 4

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the total number of rooms of all apartments with facility code "Gym".*/


SELECT SUM(room_count) 
FROM Apartments 
INNER JOIN Apartment_Facilities 
ON Apartments.apt_id = Apartment_Facilities.apt_id 
WHERE Apartment_Facilities.facility_code = 'Gym'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Find the total number of rooms in the apartments that have facility code "Gym".*/


SELECT SUM(room_count) 
FROM Apartments 
INNER JOIN Apartment_Facilities 
ON Apartments.apt_id = Apartment_Facilities.apt_id 
WHERE Apartment_Facilities.facility_code = 'Gym'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the total number of rooms of the apartments in the building with short name "Columbus Square".*/


SELECT SUM(room_count) 
FROM Apartments 
INNER JOIN Apartment_Buildings 
ON Apartments.building_id = Apartment_Buildings.building_id 
WHERE Apartment_Buildings.building_short_name = 'Columbus Square'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer How many rooms in total are there in the apartments in the building with short name "Columbus Square"?*/


SELECT SUM(room_count) 
FROM Apartments 
INNER JOIN Apartment_Buildings 
ON Apartments.building_id = Apartment_Buildings.building_id 
WHERE Apartment_Buildings.building_short_name = 'Columbus Square'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the addresses of the buildings that have apartments with more than 2 bathrooms.*/


SELECT building_address 
FROM Apartment_Buildings 
INNER JOIN Apartments 
ON Apartment_Buildings.building_id = Apartments.building_id 
WHERE Apartments.bathroom_count > 2

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Which buildings have apartments that have more than two bathrooms? Give me the addresses of the buildings.*/


SELECT building_address 
FROM Apartment_Buildings 
INNER JOIN Apartments 
ON Apartment_Buildings.building_id = Apartments.building_id 
WHERE Apartments.bathroom_count > 2

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the apartment type codes and apartment numbers in the buildings managed by "Kyle".*/


SELECT Apartments.apt_type_code, Apartments.apt_number 
FROM Apartments 
INNER JOIN Apartment_Buildings 
ON Apartments.building_id = Apartment_Buildings.building_id 
WHERE Apartment_Buildings.building_manager = 'Kyle'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What apartment type codes and apartment numbers do the buildings managed by "Kyle" have?*/


SELECT Apartments.apt_type_code, Apartments.apt_number
FROM Apartment_Buildings
INNER JOIN Apartments ON Apartment_Buildings.building_id = Apartments.building_id
WHERE Apartment_Buildings.building_manager = 'Kyle'

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the booking status code and the corresponding number of bookings.*/


SELECT booking_status_code, COUNT(*) AS 'Number of Bookings'
FROM Apartment_Bookings
GROUP BY booking_status_code

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to How many bookings does each booking status have? List the booking status code and the number of corresponding bookings.*/


SELECT booking_status_code, COUNT(*) AS 'Number of Bookings'
FROM Apartment_Bookings
GROUP BY booking_status_code

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return all the apartment numbers sorted by the room count in ascending order.*/


SELECT apt_number 
FROM Apartments 
ORDER BY room_count ASC

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Sort the apartment numbers in ascending order of room count.*/


SELECT apt_number 
FROM Apartments 
ORDER BY room_count ASC

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return the apartment number with the largest number of bedrooms.*/


SELECT apt_number, MAX(bedroom_count) 
FROM Apartments 
GROUP BY apt_number

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer What is the apartment number of the apartment with the most beds?*/


SELECT apt_number
FROM Apartments
WHERE bedroom_count = (SELECT MAX(bedroom_count) FROM Apartments)
ORDER BY bedroom_count DESC

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the apartment type codes and the corresponding number of apartments sorted by the number of apartments in ascending order.*/


SELECT apt_type_code, COUNT(*) AS num_apartments
FROM Apartments
GROUP BY apt_type_code
ORDER BY num_apartments ASC

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return each apartment type code with the number of apartments having that apartment type, in ascending order of the number of apartments.*/


SELECT apt_type_code, COUNT(*) AS num_apartments
FROM Apartments
GROUP BY apt_type_code
ORDER BY num_apartments ASC

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the top 3 apartment type codes sorted by the average number of rooms in descending order.*/


SELECT apt_type_code, AVG(room_count) AS avg_room_count
FROM Apartments
GROUP BY apt_type_code
ORDER BY avg_room_count DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to What are the top three apartment types in terms of the average room count? Give me the*/
 type code and the average room count

SELECT apt_type_code, AVG(room_count) AS avg_room_count
FROM Apartments
GROUP BY apt_type_code
ORDER BY avg_room_count DESC
LIMIT 3

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the apartment type code that has the largest number of total rooms, together with the number of bathrooms and number of bedrooms.*/


SELECT Apartments.apt_type_code, SUM(Apartments.bathroom_count) AS Total_Bathrooms, SUM(Apartments.bedroom_count) AS Total_Bedrooms, SUM(Apartments.room_count) AS Total_Rooms
FROM Apartments
GROUP BY Apartments.apt_type_code
ORDER BY Total_Rooms DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Which apartment type has the largest number of total rooms? Return the apartment type code, its number of bathrooms and number of bedrooms.*/


SELECT apt_type_code, bathroom_count, bedroom_count, SUM(room_count) AS total_rooms
FROM Apartments
GROUP BY apt_type_code
ORDER BY total_rooms DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the most common apartment type code.*/


SELECT apt_type_code, COUNT(*) AS count
FROM Apartments
GROUP BY apt_type_code
ORDER BY count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer Which apartment type code appears the most often?*/


SELECT apt_type_code, COUNT(*) AS count
FROM Apartments
GROUP BY apt_type_code
ORDER BY count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the most common apartment type code among apartments with more than 1 bathroom.*/


SELECT apt_type_code, COUNT(*) AS count
FROM Apartments
WHERE bathroom_count > 1
GROUP BY apt_type_code
ORDER BY count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer Which apartment type code is the most common among apartments with more than one bathroom?*/


SELECT apt_type_code, COUNT(*) AS num_apts
FROM Apartments
WHERE bathroom_count > 1
GROUP BY apt_type_code
ORDER BY num_apts DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show each apartment type code, and the maximum and minimum number of rooms for each type.*/


SELECT apt_type_code, MAX(room_count) AS max_rooms, MIN(room_count) AS min_rooms
FROM Apartments
GROUP BY apt_type_code

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Return each apartment type code along with the maximum and minimum number of rooms among each type.*/


SELECT apt_type_code, MAX(room_count) AS max_rooms, MIN(room_count) AS min_rooms
FROM Apartments
GROUP BY apt_type_code

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show each gender code and the corresponding count of guests sorted by the count in descending order.*/


SELECT gender_code, COUNT(*) AS 'Count of Guests'
FROM Guests
GROUP BY gender_code
ORDER BY COUNT(*) DESC

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Sort the gender codes in descending order of their corresponding number of guests. Return both the gender codes and counts.*/


SELECT gender_code, COUNT(*) AS count
FROM Guests
GROUP BY gender_code
ORDER BY count DESC

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to answer How many apartments do not have any facility?*/


SELECT COUNT(*) 
FROM Apartments 
LEFT JOIN Apartment_Facilities 
ON Apartments.apt_id = Apartment_Facilities.apt_id 
WHERE Apartment_Facilities.facility_code IS NULL

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Find the number of apartments that have no facility.*/


SELECT COUNT(*) 
FROM Apartments 
LEFT JOIN Apartment_Facilities 
ON Apartments.apt_id = Apartment_Facilities.apt_id 
WHERE Apartment_Facilities.facility_code IS NULL

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the apartment numbers of apartments with bookings that have status code both "Provisional" and "Confirmed"*/


SELECT Apartments.apt_number 
FROM Apartments 
INNER JOIN Apartment_Bookings 
ON Apartments.apt_id = Apartment_Bookings.apt_id 
WHERE Apartment_Bookings.booking_status_code IN ('Provisional', 'Confirmed')

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Which apartments have bookings with both status codes "Provisional" and "Confirmed"? Give me the apartment numbers.*/


SELECT Apartments.apt_number
FROM Apartments
INNER JOIN Apartment_Bookings ON Apartments.apt_id = Apartment_Bookings.apt_id
WHERE Apartment_Bookings.booking_status_code IN ('Provisional', 'Confirmed')
GROUP BY Apartments.apt_number
HAVING COUNT(DISTINCT Apartment_Bookings.booking_status_code) = 2

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Show the apartment numbers of apartments with unit status availability of both 0 and 1.*/


SELECT Apartments.apt_number 
FROM Apartments 
INNER JOIN View_Unit_Status 
ON Apartments.apt_id = View_Unit_Status.apt_id 
WHERE View_Unit_Status.available_yn IN (0,1)

/*Here are Mysql tables, with their properties:

Apartment_Buildings(building_id, building_short_name, building_full_name, building_description, building_address, building_manager, building_phone, UNIQUE)
Apartments(apt_id, building_id, apt_type_code, apt_number, bathroom_count, bedroom_count, room_count, UNIQUE)
Apartment_Facilities(apt_id, facility_code)
Guests(guest_id, gender_code, guest_first_name, guest_last_name, date_of_birth, UNIQUE)
Apartment_Bookings(apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date, UNIQUE)
View_Unit_Status(apt_id, apt_booking_id, status_date, available_yn)

Create a SQL request to Which apartments have unit status availability of both 0 and 1? Return their apartment numbers.*/


SELECT Apartments.apt_number 
FROM Apartments 
INNER JOIN View_Unit_Status 
ON Apartments.apt_id = View_Unit_Status.apt_id 
WHERE View_Unit_Status.available_yn IN (0,1)

