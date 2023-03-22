/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to How many residents does each property have? List property id and resident count.*/


SELECT property_id, COUNT(resident_id) AS resident_count
FROM Residents
GROUP BY property_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer What is the distinct service types that are provided by the organization which has detail 'Denesik and Sons Party'?*/


SELECT DISTINCT Services.service_type_code 
FROM Services 
INNER JOIN Organizations 
ON Services.organization_id = Organizations.organization_id 
WHERE Organizations.organization_details = 'Denesik and Sons Party'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to How many services has each resident requested? List the resident id, details, and the count in descending order of the count.*/


SELECT r.resident_id, r.other_details, COUNT(rs.service_id) AS service_count
FROM Residents r
INNER JOIN Residents_Services rs ON r.resident_id = rs.resident_id
GROUP BY r.resident_id
ORDER BY service_count DESC

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to What is the maximum number that a certain service is provided? List the service id, details and number.*/


SELECT service_id, service_details, COUNT(*) AS 'Number of Services Provided'
FROM Services
INNER JOIN Residents_Services
ON Services.service_id = Residents_Services.service_id
GROUP BY service_id
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to List the id and type of each thing, and the details of the organization that owns it.*/


SELECT Things.thing_id, Things.Type_of_Thing_Code, Organizations.organization_details
FROM Things
INNER JOIN Organizations ON Things.organization_id = Organizations.organization_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer What are the id and details of the customers who have at least 3 events?*/


SELECT c.customer_id, c.customer_details
FROM Customers c
INNER JOIN Customer_Events ce ON c.customer_id = ce.customer_id
GROUP BY c.customer_id, c.customer_details
HAVING COUNT(ce.Customer_Event_ID) >= 3

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer What is each customer's move in date, and the corresponding customer id and details?*/


SELECT c.customer_id, c.customer_details, ce.date_moved_in 
FROM Customers c 
INNER JOIN Customer_Events ce ON c.customer_id = ce.customer_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to Which events have the number of notes between one and three? List the event id and the property id.*/


SELECT Customer_Event_ID, property_id
FROM Customer_Events
WHERE (SELECT COUNT(*) FROM Customer_Event_Notes WHERE Customer_Event_ID = Customer_Events.Customer_Event_ID) BETWEEN 1 AND 3

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to What are the distinct id and type of the thing that has the status 'Close' or has a status record before the date '2017-06-19 02:59:21'*/


SELECT DISTINCT thing_id, Type_of_Thing_Code 
FROM Things 
INNER JOIN Timed_Status_of_Things 
ON Things.thing_id = Timed_Status_of_Things.thing_id 
WHERE Timed_Status_of_Things.Status_of_Thing_Code = 'Close' 
OR Timed_Status_of_Things.Date_and_Time < '2017-06-19 02:59:21'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer How many distinct locations have the things with service detail 'Unsatisfied' been located in?*/


SELECT COUNT(DISTINCT Location_Code) 
FROM Timed_Locations_of_Things 
INNER JOIN Things 
ON Timed_Locations_of_Things.thing_id = Things.thing_id 
WHERE service_details = 'Unsatisfied'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer How many different status codes of things are there?*/


SELECT COUNT(DISTINCT Status_of_Thing_Code) 
FROM Timed_Status_of_Things

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to Which organizations are not a parent organization of others? List the organization id.*/


SELECT organization_id
FROM Organizations
WHERE parent_organization_id IS NULL

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer When is the last day any resident moved in?*/


SELECT MAX(date_moved_in) 
FROM Residents

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer What are the resident details containing the substring 'Miss'?*/


SELECT resident_id, property_id, date_moved_in, date_moved_out, other_details 
FROM Residents 
WHERE other_details LIKE '%Miss%'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to List the customer event id and the corresponding move in date and property id.*/


SELECT Customer_Event_ID, date_moved_in, property_id 
FROM Customer_Events 
ORDER BY date_moved_in

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer How many customers did not have any event?*/


SELECT COUNT(*) 
FROM Customers c 
LEFT JOIN Customer_Events ce 
ON c.customer_id = ce.customer_id 
WHERE ce.Customer_Event_ID IS NULL

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_details)
Properties(property_id, property_type_code, property_address, other_details)
Residents(resident_id, property_id, date_moved_in, date_moved_out, other_details)
Organizations(organization_id, parent_organization_id, organization_details)
Services(service_id, organization_id, service_type_code, service_details)
Residents_Services(resident_id, service_id, date_moved_in, property_id, date_requested, date_provided, other_details)
Things(thing_id, organization_id, Type_of_Thing_Code, service_type_code, service_details)
Customer_Events(Customer_Event_ID, customer_id, date_moved_in, property_id, resident_id, thing_id)
Customer_Event_Notes(Customer_Event_Note_ID, Customer_Event_ID, service_type_code, resident_id, property_id, date_moved_in)
Timed_Status_of_Things(thing_id, Date_and_Date, Status_of_Thing_Code)
Timed_Locations_of_Things(thing_id, Date_and_Time, Location_Code)

Create a SQL request to answer What are the distinct move in dates of the residents?*/


SELECT DISTINCT date_moved_in 
FROM Residents

