/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer How many calendar items do we have?*/


SELECT COUNT(*) FROM Ref_Calendar

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Count the number of all the calendar items.*/


SELECT COUNT(*) FROM Ref_Calendar

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show all calendar dates and day Numbers.*/


SELECT Calendar_Date, Day_Number
FROM Ref_Calendar

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are all the calendar dates and day Numbers?*/


SELECT Calendar_Date, Day_Number
FROM Ref_Calendar

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the number of document types.*/


SELECT COUNT(Document_Type_Code) 
FROM Ref_Document_Types

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer How many document types are there?*/


SELECT COUNT(*) FROM Ref_Document_Types

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to List all document type codes and document type names.*/


SELECT Document_Type_Code, Document_Type_Name 
FROM Ref_Document_Types

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are all the document type codes and document type names?*/


SELECT Document_Type_Code, Document_Type_Name 
FROM Ref_Document_Types

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the name and description for document type code RV?*/


SELECT Document_Type_Name, Document_Type_Description 
FROM Ref_Document_Types 
WHERE Document_Type_Code = 'RV'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Give me the name and description of the document type code RV.*/


SELECT Document_Type_Name, Document_Type_Description 
FROM Ref_Document_Types 
WHERE Document_Type_Code = 'RV'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the document type code for document type "Paper"?*/


SELECT Document_Type_Code 
FROM Ref_Document_Types 
WHERE Document_Type_Name = 'Paper'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Find the code of the document type "Paper".*/


SELECT Document_Type_Code 
FROM Ref_Document_Types 
WHERE Document_Type_Name = 'Paper'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the number of documents with document type code CV or BK.*/


SELECT COUNT(*) 
FROM All_Documents 
WHERE Document_Type_Code IN ('CV', 'BK')

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer How many documents have document type code CV or BK?*/


SELECT COUNT(*) 
FROM All_Documents 
WHERE Document_Type_Code IN ('CV', 'BK')

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the date when the document "Marry CV" was stored?*/


SELECT Date_Stored 
FROM All_Documents 
WHERE Document_Name = 'Marry CV'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to When was the document named "Marry CV" stored? Give me the date.*/


SELECT Date_Stored 
FROM All_Documents 
WHERE Document_Name = 'Marry CV'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the day Number and date of all the documents?*/


SELECT All_Documents.Document_ID, Ref_Calendar.Day_Number, Ref_Calendar.Calendar_Date
FROM All_Documents
INNER JOIN Ref_Calendar ON All_Documents.Date_Stored = Ref_Calendar.Calendar_Date

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Return the day Number and stored date for all the documents.*/


SELECT Ref_Calendar.Day_Number, All_Documents.Date_Stored
FROM Ref_Calendar
INNER JOIN All_Documents
ON Ref_Calendar.Calendar_Date = All_Documents.Date_Stored

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the document type name for the document with name "How to read a book"?*/


SELECT Document_Type_Name 
FROM Ref_Document_Types 
INNER JOIN All_Documents 
ON Ref_Document_Types.Document_Type_Code = All_Documents.Document_Type_Code 
WHERE Document_Name = 'How to read a book'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Find the document type name of the document named "How to read a book".*/


SELECT Document_Type_Name 
FROM Ref_Document_Types 
INNER JOIN All_Documents 
ON Ref_Document_Types.Document_Type_Code = All_Documents.Document_Type_Code 
WHERE Document_Name = 'How to read a book'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the number of locations.*/


SELECT COUNT(Location_Code) FROM Ref_Locations

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer How many locations are listed in the database?*/


SELECT COUNT(Location_Code) 
FROM Ref_Locations

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to List all location codes and location names.*/


SELECT Location_Code, Location_Name 
FROM Ref_Locations

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are all the location codes and location names?*/


SELECT Location_Code, Location_Name 
FROM Ref_Locations

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the name and description for location code x?*/


SELECT Location_Name, Location_Description 
FROM Ref_Locations 
WHERE Location_Code = 'x'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Give me the name and description of the location with code x.*/


SELECT Location_Name, Location_Description 
FROM Ref_Locations 
WHERE Location_Code = 'x'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the location code for the country "Canada"?*/


SELECT Location_Code 
FROM Ref_Locations 
WHERE Location_Name = 'Canada'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the location code of the country "Canada".*/


SELECT Location_Code 
FROM Ref_Locations 
WHERE Location_Name = 'Canada'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer How many roles are there?*/


SELECT COUNT(*) FROM Roles

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Count the total number of roles listed.*/


SELECT COUNT(Role_Code) FROM Roles

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to List all role codes, role names, and role descriptions.*/


SELECT Role_Code, Role_Name, Role_Description
FROM Roles

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are all the role codes, role names, and role descriptions?*/


SELECT Role_Code, Role_Name, Role_Description
FROM Roles

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the name and description for role code "MG"?*/


SELECT Role_Name, Role_Description 
FROM Roles 
WHERE Role_Code = 'MG'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Find the name and description of the role with code "MG".*/


SELECT Role_Name, Role_Description 
FROM Roles 
WHERE Role_Code = 'MG'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the description for role name "Proof Reader".*/


SELECT Role_Description 
FROM Roles 
WHERE Role_Name = 'Proof Reader'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the description of the role named "Proof Reader"?*/


SELECT Role_Description 
FROM Roles 
WHERE Role_Name = 'Proof Reader'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer How many employees do we have?*/


SELECT COUNT(*) AS 'Number of Employees'
FROM Employees

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Find the number of employees we have.*/


SELECT COUNT(*) AS 'Number of Employees' FROM Employees

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the name, role code, and date of birth for the employee with name 'Armani'.*/


SELECT Employee_Name, Role_Code, Date_of_Birth 
FROM Employees 
WHERE Employee_Name = 'Armani'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the name, role code, and date of birth of the employee named 'Armani'?*/


SELECT Employee_Name, Role_Code, Date_of_Birth 
FROM Employees 
WHERE Employee_Name = 'Armani'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the id for the employee called Ebba?*/


SELECT Employee_ID 
FROM Employees 
WHERE Employee_Name = 'Ebba'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the id of the employee named Ebba.*/


SELECT Employee_ID 
FROM Employees 
WHERE Employee_Name = 'Ebba'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the names of all the employees with role "HR".*/


SELECT Employee_Name 
FROM Employees 
WHERE Role_Code = 'HR'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Which employees have the role with code "HR"? Find their names.*/


SELECT Employee_Name 
FROM Employees 
WHERE Role_Code = 'HR'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show all role codes and the number of employees in each role.*/


SELECT Role_Code, COUNT(Employee_ID) AS 'Number of Employees'
FROM Roles
LEFT JOIN Employees
ON Roles.Role_Code = Employees.Role_Code
GROUP BY Role_Code

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the code of each role and the number of employees in each role?*/


SELECT Roles.Role_Code, COUNT(Employees.Employee_ID) AS Number_of_Employees
FROM Roles
LEFT JOIN Employees ON Roles.Role_Code = Employees.Role_Code
GROUP BY Roles.Role_Code

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the role code with the largest number of employees?*/


SELECT Role_Code, COUNT(Employee_ID) AS Num_Employees
FROM Employees
GROUP BY Role_Code
ORDER BY Num_Employees DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Find the code of the role that have the most employees.*/


SELECT Role_Code, COUNT(Employee_ID) AS Num_Employees
FROM Roles
INNER JOIN Employees
ON Roles.Role_Code = Employees.Role_Code
GROUP BY Role_Code
ORDER BY Num_Employees DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show all role codes with at least 3 employees.*/


SELECT Role_Code, COUNT(Employee_ID) AS Employee_Count
FROM Employees
GROUP BY Role_Code
HAVING COUNT(Employee_ID) >= 3

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to What are the roles with three or more employees? Give me the role codes.*/


SELECT Role_Code 
FROM Roles 
INNER JOIN Employees 
ON Roles.Role_Code = Employees.Role_Code 
GROUP BY Role_Code 
HAVING COUNT(Employee_ID) >= 3

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the role code with the least employees.*/


SELECT Role_Code, COUNT(Employee_ID) AS Num_Employees
FROM Employees
GROUP BY Role_Code
ORDER BY Num_Employees ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to What is the role with the smallest number of employees? Find the role codes.*/


SELECT Role_Code 
FROM Roles 
INNER JOIN Employees 
ON Roles.Role_Code = Employees.Role_Code 
GROUP BY Role_Code 
ORDER BY COUNT(Employee_ID) ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the role name and role description for employee called Ebba?*/


SELECT Roles.Role_Name, Roles.Role_Description 
FROM Roles 
INNER JOIN Employees 
ON Roles.Role_Code = Employees.Role_Code 
WHERE Employees.Employee_Name = 'Ebba'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the name and description of the role played by the employee named Ebba.*/


SELECT Role_Name, Role_Description 
FROM Roles 
INNER JOIN Employees 
ON Roles.Role_Code = Employees.Role_Code 
WHERE Employee_Name = 'Ebba'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the names of employees with role name Editor.*/


SELECT Employees.Employee_Name, Roles.Role_Name 
FROM Employees 
INNER JOIN Roles ON Employees.Role_Code = Roles.Role_Code 
WHERE Roles.Role_Name = 'Editor'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Find the names of all the employees whose the role name is "Editor".*/


SELECT Employee_Name 
FROM Employees 
INNER JOIN Roles 
ON Employees.Role_Code = Roles.Role_Code 
WHERE Roles.Role_Name = 'Editor'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the employee ids for all employees with role name "Human Resource" or "Manager".*/


SELECT Employee_ID 
FROM Employees 
INNER JOIN Roles 
ON Employees.Role_Code = Roles.Role_Code 
WHERE Roles.Role_Name IN ('Human Resource', 'Manager')

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the employee ids of the employees whose role name is "Human Resource" or "Manager"?*/


SELECT Employee_ID 
FROM Employees 
INNER JOIN Roles 
ON Employees.Role_Code = Roles.Role_Code 
WHERE Roles.Role_Name = 'Human Resource' OR Roles.Role_Name = 'Manager'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the different location codes for documents?*/


SELECT DISTINCT Location_Code 
FROM Ref_Locations 
INNER JOIN Document_Locations 
ON Ref_Locations.Location_Code = Document_Locations.Location_Code

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Give me all the distinct location codes for documents.*/


SELECT DISTINCT Location_Code 
FROM Ref_Locations 
INNER JOIN Document_Locations 
ON Ref_Locations.Location_Code = Document_Locations.Location_Code

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the location name for document "Robin CV".*/


SELECT l.Location_Name 
FROM Ref_Locations l 
INNER JOIN Document_Locations dl ON l.Location_Code = dl.Location_Code 
INNER JOIN All_Documents d ON dl.Document_ID = d.Document_ID 
WHERE d.Document_Name = 'Robin CV'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the location name of the document "Robin CV"?*/


SELECT Ref_Locations.Location_Name 
FROM Ref_Locations 
INNER JOIN Document_Locations 
ON Ref_Locations.Location_Code = Document_Locations.Location_Code 
INNER JOIN All_Documents 
ON Document_Locations.Document_ID = All_Documents.Document_ID 
WHERE All_Documents.Document_Name = 'Robin CV'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the location code, the starting date and ending data in that location for all the documents.*/


SELECT Document_Locations.Location_Code, Document_Locations.Date_in_Location_From, Document_Locations.Date_in_Locaton_To 
FROM Document_Locations

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are each document's location code, and starting date and ending data in that location?*/


SELECT Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To 
FROM Document_Locations

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is "the date in location from" and "the date in location to" for the document with name "Robin CV"?*/


SELECT Document_Locations.Date_in_Location_From, Document_Locations.Date_in_Locaton_To
FROM Document_Locations
INNER JOIN All_Documents
ON Document_Locations.Document_ID = All_Documents.Document_ID
WHERE All_Documents.Document_Name = 'Robin CV'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Find the starting date and ending data in location for the document named "Robin CV".*/


SELECT Document_Locations.Date_in_Location_From, Document_Locations.Date_in_Locaton_To 
FROM Document_Locations 
INNER JOIN All_Documents 
ON Document_Locations.Document_ID = All_Documents.Document_ID 
WHERE All_Documents.Document_Name = 'Robin CV'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the location codes and the number of documents in each location.*/


SELECT Location_Code, COUNT(Document_ID) AS 'Number of Documents'
FROM Document_Locations
GROUP BY Location_Code

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the code of each location and the number of documents in that location?*/


SELECT Ref_Locations.Location_Code, COUNT(Document_Locations.Document_ID) AS Number_of_Documents
FROM Ref_Locations
INNER JOIN Document_Locations
ON Ref_Locations.Location_Code = Document_Locations.Location_Code
GROUP BY Ref_Locations.Location_Code

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What is the location code with the most documents?*/


SELECT Location_Code, COUNT(Document_ID) AS Num_Documents
FROM Document_Locations
GROUP BY Location_Code
ORDER BY Num_Documents DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Find the code of the location with the largest number of documents.*/


SELECT Location_Code, COUNT(Document_ID) AS Num_Docs
FROM Document_Locations
GROUP BY Location_Code
ORDER BY Num_Docs DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the location codes with at least 3 documents.*/


SELECT Location_Code, COUNT(Document_ID) AS Document_Count
FROM Document_Locations
GROUP BY Location_Code
HAVING COUNT(Document_ID) >= 3

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the codes of the locations with at least three documents?*/


SELECT Location_Code 
FROM Ref_Locations 
INNER JOIN Document_Locations 
ON Ref_Locations.Location_Code = Document_Locations.Location_Code 
GROUP BY Location_Code 
HAVING COUNT(Document_ID) >= 3

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the location name and code with the least documents.*/


SELECT Location_Name, Location_Code 
FROM Ref_Locations 
WHERE Location_Code IN (SELECT Location_Code 
                        FROM Document_Locations 
                        GROUP BY Location_Code 
                        ORDER BY COUNT(*) ASC 
                        LIMIT 1)

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the name and code of the location with the smallest number of documents?*/


SELECT Location_Name, Location_Code
FROM Ref_Locations
WHERE Location_Code IN (SELECT Location_Code
                        FROM Document_Locations
                        GROUP BY Location_Code
                        ORDER BY COUNT(*) ASC
                        LIMIT 1)

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the names of the employees who authorised the destruction and the employees who destroyed the corresponding documents?*/


SELECT e1.Employee_Name AS 'Authorised_By', e2.Employee_Name AS 'Destroyed_By'
FROM Documents_to_be_Destroyed d
INNER JOIN Employees e1 ON d.Destruction_Authorised_by_Employee_ID = e1.Employee_ID
INNER JOIN Employees e2 ON d.Destroyed_by_Employee_ID = e2.Employee_ID

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to List the names of the employees who authorized the destruction of documents and the employees who destroyed the corresponding documents.*/


SELECT e1.Employee_Name AS 'Authorized_By', e2.Employee_Name AS 'Destroyed_By'
FROM Documents_to_be_Destroyed d
INNER JOIN Employees e1 ON d.Destruction_Authorised_by_Employee_ID = e1.Employee_ID
INNER JOIN Employees e2 ON d.Destroyed_by_Employee_ID = e2.Employee_ID

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the id of each employee and the number of document destruction authorised by that employee.*/


SELECT Employees.Employee_ID, COUNT(Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID) 
FROM Employees 
INNER JOIN Documents_to_be_Destroyed 
ON Employees.Employee_ID = Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID 
GROUP BY Employees.Employee_ID

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the id of each employee and the number of document destruction authorised by that employee?*/


SELECT Employees.Employee_ID, COUNT(Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID) AS 'Number of Document Destruction Authorised'
FROM Employees
INNER JOIN Documents_to_be_Destroyed
ON Employees.Employee_ID = Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID
GROUP BY Employees.Employee_ID

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the employee ids and the number of documents destroyed by each employee.*/


SELECT Destroyed_by_Employee_ID, COUNT(*) AS 'Number of Documents Destroyed'
FROM Documents_to_be_Destroyed
GROUP BY Destroyed_by_Employee_ID

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the id of each employee and the number of document destroyed by that employee?*/


SELECT Destroyed_by_Employee_ID, COUNT(Document_ID) AS Number_of_Documents_Destroyed
FROM Documents_to_be_Destroyed
GROUP BY Destroyed_by_Employee_ID

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the ids of the employees who don't authorize destruction for any document.*/


SELECT Employee_ID
FROM Employees
WHERE Employee_ID NOT IN (SELECT Destruction_Authorised_by_Employee_ID
                         FROM Documents_to_be_Destroyed)

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Which employees do not authorize destruction for any document? Give me their employee ids.*/


SELECT Employee_ID
FROM Employees
WHERE Employee_ID NOT IN (SELECT Destruction_Authorised_by_Employee_ID
                         FROM Documents_to_be_Destroyed)

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the ids of all employees who have authorized destruction.*/


SELECT Destruction_Authorised_by_Employee_ID 
FROM Documents_to_be_Destroyed 
WHERE Destruction_Authorised_by_Employee_ID IS NOT NULL

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the ids of all the employees who authorize document destruction?*/


SELECT Destruction_Authorised_by_Employee_ID 
FROM Documents_to_be_Destroyed

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the ids of all employees who have destroyed a document.*/


SELECT Destroyed_by_Employee_ID 
FROM Documents_to_be_Destroyed 
WHERE Destroyed_by_Employee_ID IS NOT NULL

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to answer What are the ids of all the employees who have destroyed documents?*/


SELECT Destroyed_by_Employee_ID 
FROM Documents_to_be_Destroyed 
WHERE Destroyed_by_Employee_ID IS NOT NULL

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the ids of all employees who don't destroy any document.*/


SELECT Employee_ID
FROM Employees
WHERE Employee_ID NOT IN (SELECT Destroyed_by_Employee_ID
                         FROM Documents_to_be_Destroyed)

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Which employees do not destroy any document? Find their employee ids.*/


SELECT Employee_ID
FROM Employees
WHERE Employee_ID NOT IN (SELECT Destroyed_by_Employee_ID
                         FROM Documents_to_be_Destroyed)

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Show the ids of all employees who have either destroyed a document or made an authorization to do this.*/


SELECT DISTINCT Destroyed_by_Employee_ID, Destruction_Authorised_by_Employee_ID 
FROM Documents_to_be_Destroyed

/*Here are Mysql tables, with their properties:

Ref_Document_Types(Document_Type_Code, Document_Type_Name, Document_Type_Description)
Ref_Calendar(Calendar_Date, Day_Number)
Ref_Locations(Location_Code, Location_Name, Location_Description)
Roles(Role_Code, Role_Name, Role_Description)
All_Documents(Document_ID, Date_Stored, Document_Type_Code, Document_Name, Document_Description, Other_Details)
Employees(Employee_ID, Role_Code, Employee_Name, Gender_MFU, Date_of_Birth, Other_Details)
Document_Locations(Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To)
Documents_to_be_Destroyed(Document_ID, Destruction_Authorised_by_Employee_ID, Destroyed_by_Employee_ID, Planned_Destruction_Date, Actual_Destruction_Date, Other_Details)

Create a SQL request to Which employees have either destroyed a document or made an authorization to do so? Return their employee ids.*/


SELECT DISTINCT Employee_ID 
FROM Employees 
INNER JOIN Documents_to_be_Destroyed 
ON Employees.Employee_ID = Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID 
OR Employees.Employee_ID = Documents_to_be_Destroyed.Destroyed_by_Employee_ID

