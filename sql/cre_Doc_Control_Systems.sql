/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What document status codes do we have?*/


SELECT document_status_code FROM Ref_Document_Status

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the description of document status code 'working'?*/


SELECT document_status_description 
FROM Ref_Document_Status 
WHERE document_status_code = 'working'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What document type codes do we have?*/


SELECT document_type_code FROM Ref_Document_Types

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the description of document type 'Paper'?*/


SELECT document_type_description 
FROM Ref_Document_Types 
WHERE document_type_code = 'Paper'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What are the shipping agent names?*/


SELECT shipping_agent_name 
FROM Ref_Shipping_Agents

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the shipping agent code of shipping agent UPS?*/


SELECT shipping_agent_code 
FROM Ref_Shipping_Agents 
WHERE shipping_agent_name = 'UPS'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What are all role codes?*/


SELECT role_code FROM Roles

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the description of role code ED?*/


SELECT role_description 
FROM Roles 
WHERE role_code = 'ED'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer How many employees do we have?*/


SELECT COUNT(*) 
FROM Employees

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the role of the employee named Koby?*/


SELECT role_description 
FROM Roles 
INNER JOIN Employees 
ON Roles.role_code = Employees.role_code 
WHERE Employees.employee_name = 'Koby'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to List all document ids and receipt dates of documents.*/


SELECT document_id, receipt_date 
FROM Documents

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to How many employees does each role have? List role description, id and number of employees.*/


SELECT Roles.role_description, Roles.role_code, COUNT(Employees.employee_id) AS 'Number of Employees'
FROM Roles
LEFT JOIN Employees ON Roles.role_code = Employees.role_code
GROUP BY Roles.role_description, Roles.role_code

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to List roles that have more than one employee. List the role description and number of employees.*/


SELECT Roles.role_description, COUNT(Employees.employee_id) AS 'Number of Employees'
FROM Roles
INNER JOIN Employees ON Roles.role_code = Employees.role_code
GROUP BY Roles.role_description
HAVING COUNT(Employees.employee_id) > 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the document status description of the document with id 1?*/


SELECT Ref_Document_Status.document_status_description 
FROM Ref_Document_Status 
INNER JOIN Documents 
ON Ref_Document_Status.document_status_code = Documents.document_status_code 
WHERE Documents.document_id = 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer How many documents have the status code done?*/


SELECT COUNT(*) 
FROM Documents 
WHERE document_status_code = 'done'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to List the document type code for the document with the id 2.*/


SELECT document_type_code 
FROM Documents 
WHERE document_id = 2

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to List the document ids for any documents with the status code done and the type code paper.*/


SELECT document_id 
FROM Documents 
WHERE document_status_code = 'done' 
AND document_type_code = 'paper'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the name of the shipping agent of the document with id 2?*/


SELECT shipping_agent_name 
FROM Ref_Shipping_Agents 
INNER JOIN Documents 
ON Ref_Shipping_Agents.shipping_agent_code = Documents.shipping_agent_code 
WHERE document_id = 2

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer How many documents were shipped by USPS?*/


SELECT COUNT(d.document_id)
FROM Documents d
INNER JOIN Ref_Shipping_Agents s ON d.shipping_agent_code = s.shipping_agent_code
WHERE s.shipping_agent_name = 'USPS'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to Which shipping agent shipped the most documents? List the shipping agent name and the number of documents.*/


SELECT Ref_Shipping_Agents.shipping_agent_name, COUNT(Documents.document_id) AS 'Number of Documents'
FROM Documents
INNER JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code
GROUP BY Ref_Shipping_Agents.shipping_agent_name
ORDER BY COUNT(Documents.document_id) DESC

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the receipt date of the document with id 3?*/


SELECT receipt_date 
FROM Documents 
WHERE document_id = 3

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What address was the document with id 4 mailed to?*/


SELECT a.address_details 
FROM Addresses a 
INNER JOIN Documents_Mailed dm 
ON a.address_id = dm.mailed_to_address_id 
WHERE dm.document_id = 4

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is the mail date of the document with id 7?*/


SELECT mailing_date 
FROM Documents_Mailed 
WHERE document_id = 7

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to List the document ids of documents with the status done and type Paper, which not shipped by the shipping agent named USPS.*/


SELECT Documents.document_id 
FROM Documents 
INNER JOIN Ref_Document_Status ON Documents.document_status_code = Ref_Document_Status.document_status_code 
INNER JOIN Ref_Document_Types ON Documents.document_type_code = Ref_Document_Types.document_type_code 
INNER JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code 
WHERE Ref_Document_Status.document_status_description = 'Done' 
AND Ref_Document_Types.document_type_description = 'Paper' 
AND Ref_Shipping_Agents.shipping_agent_name != 'USPS'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to List document id of documents status is done and document type is Paper and the document is shipped by shipping agent named USPS.*/


SELECT Documents.document_id 
FROM Documents 
INNER JOIN Ref_Document_Types ON Documents.document_type_code = Ref_Document_Types.document_type_code 
INNER JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code 
INNER JOIN Ref_Document_Status ON Documents.document_status_code = Ref_Document_Status.document_status_code 
WHERE Ref_Document_Types.document_type_description = 'Paper' 
AND Ref_Shipping_Agents.shipping_agent_name = 'USPS' 
AND Ref_Document_Status.document_status_description = 'Done'

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer What is draft detail of the document with id 7?*/


SELECT draft_details 
FROM Document_Drafts 
WHERE document_id = 7

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to answer How many draft copies does the document with id 2 have?*/


SELECT COUNT(*) 
FROM Draft_Copies 
WHERE document_id = 2

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to Which document has the most draft copies? List its document id and number of draft copies.*/


SELECT Documents.document_id, COUNT(Draft_Copies.copy_number) AS 'Number of Draft Copies'
FROM Documents
INNER JOIN Draft_Copies ON Documents.document_id = Draft_Copies.document_id
GROUP BY Documents.document_id
ORDER BY COUNT(Draft_Copies.copy_number) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to Which documents have more than 1 draft copies? List document id and number of draft copies.*/


SELECT Documents.document_id, COUNT(Draft_Copies.copy_number) AS 'Number of Draft Copies'
FROM Documents
INNER JOIN Draft_Copies ON Documents.document_id = Draft_Copies.document_id
GROUP BY Documents.document_id
HAVING COUNT(Draft_Copies.copy_number) > 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to List all employees in the circulation history of the document with id 1. List the employee's name.*/


SELECT Employees.employee_name 
FROM Employees 
INNER JOIN Circulation_History 
ON Employees.employee_id = Circulation_History.employee_id 
WHERE Circulation_History.document_id = 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to List the employees who have not showed up in any circulation history of documents. List the employee's name.*/


SELECT employee_name 
FROM Employees 
WHERE employee_id NOT IN (SELECT employee_id 
                          FROM Circulation_History)

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to Which employee has showed up in most circulation history documents. List the employee's name and the number of drafts and copies.*/


SELECT Employees.employee_name, COUNT(Circulation_History.document_id) AS 'Number of Drafts and Copies'
FROM Circulation_History
INNER JOIN Employees ON Circulation_History.employee_id = Employees.employee_id
GROUP BY Employees.employee_name
ORDER BY COUNT(Circulation_History.document_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Ref_Document_Types(document_type_code, document_type_description)
Roles(role_code, role_description)
Addresses(address_id, address_details)
Ref_Document_Status(document_status_code, document_status_description)
Ref_Shipping_Agents(shipping_agent_code, shipping_agent_name, shipping_agent_description)
Documents(document_id, document_status_code, document_type_code, shipping_agent_code, receipt_date, receipt_number, other_details)
Employees(employee_id, role_code, employee_name, other_details)
Document_Drafts(document_id, draft_number, draft_details)
Draft_Copies(document_id, draft_number, copy_number)
Circulation_History(document_id, draft_number, copy_number, employee_id)
Documents_Mailed(document_id, mailed_to_address_id, mailing_date)

Create a SQL request to For each document, list the number of employees who have showed up in the circulation history of that document. List the document ids and number of employees.*/


SELECT Documents.document_id, COUNT(Circulation_History.employee_id) AS 'Number of Employees'
FROM Documents
INNER JOIN Circulation_History
ON Documents.document_id = Circulation_History.document_id
GROUP BY Documents.document_id

