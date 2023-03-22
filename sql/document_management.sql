/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find the name and access counts of all documents, in alphabetic order of the document name.*/


SELECT document_name, access_count 
FROM Documents 
ORDER BY document_name ASC

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the names of all the documents, as well as the access counts of each, ordered alphabetically?*/


SELECT document_name, access_count
FROM Documents
ORDER BY document_name ASC

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer Find the name of the document that has been accessed the greatest number of times, as well as the count of how many times it has been accessed?*/


SELECT Documents.document_name, Documents.access_count
FROM Documents
ORDER BY Documents.access_count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What is the name of the document which has been accessed the most times, as well as the number of times it has been accessed?*/


SELECT Documents.document_name, MAX(Documents.access_count)
FROM Documents
GROUP BY Documents.document_name

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find the types of documents with more than 4 documents.*/


SELECT document_type_code, COUNT(document_code) 
FROM Documents 
GROUP BY document_type_code 
HAVING COUNT(document_code) > 4

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the codes of types of documents of which there are for or more?*/


SELECT document_type_code
FROM Documents
GROUP BY document_type_code
HAVING COUNT(*) >= 4

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find the total access count of all documents in the most popular document type.*/


SELECT SUM(access_count) 
FROM Documents 
WHERE document_type_code = (SELECT document_type_code 
                            FROM Documents 
                            GROUP BY document_type_code 
                            ORDER BY SUM(access_count) DESC 
                            LIMIT 1)

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What is the total access count of documents that are of the most common document type?*/


SELECT SUM(access_count) 
FROM Documents 
WHERE document_type_code = (SELECT document_type_code 
                            FROM Documents 
                            GROUP BY document_type_code 
                            ORDER BY COUNT(*) DESC 
                            LIMIT 1)

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What is the average access count of documents?*/


SELECT AVG(access_count)
FROM Documents

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer Find the average access count across all documents?*/


SELECT AVG(access_count)
FROM Documents

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What is the structure of the document with the least number of accesses?*/


SELECT d.document_name, ds.document_structure_description 
FROM Documents d 
INNER JOIN Document_Structures ds 
ON d.document_structure_code = ds.document_structure_code 
WHERE d.access_count = (SELECT MIN(access_count) FROM Documents) 
ORDER BY d.document_name

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Return the structure description of the document that has been accessed the fewest number of times.*/


SELECT document_structures.document_structure_description 
FROM documents 
INNER JOIN document_structures 
ON documents.document_structure_code = document_structures.document_structure_code 
ORDER BY access_count ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What is the type of the document named "David CV"?*/


SELECT d.document_type_code 
FROM Documents d 
WHERE d.document_name = 'David CV'

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Return the type code of the document named "David CV".*/


SELECT document_type_code 
FROM Documents 
WHERE document_name = 'David CV'

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find the list of documents that are both in the most three popular type and have the most three popular structure.*/


SELECT d.document_code, d.document_type_code, d.document_structure_code
FROM Documents d
INNER JOIN (SELECT document_type_code, COUNT(*) AS type_count
            FROM Documents
            GROUP BY document_type_code
            ORDER BY type_count DESC
            LIMIT 3) AS t ON d.document_type_code = t.document_type_code
INNER JOIN (SELECT document_structure_code, COUNT(*) AS structure_count
            FROM Documents
            GROUP BY document_structure_code
            ORDER BY structure_count DESC
            LIMIT 3) AS s ON d.document_structure_code = s.document_structure_code

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the names of documents that have both one of the three most common types and one of three most common structures?*/


SELECT Documents.document_name 
FROM Documents 
INNER JOIN (SELECT document_structure_code, COUNT(*) AS structure_count 
            FROM Documents 
            GROUP BY document_structure_code 
            ORDER BY structure_count DESC 
            LIMIT 3) AS Structures 
ON Documents.document_structure_code = Structures.document_structure_code 
INNER JOIN (SELECT document_type_code, COUNT(*) AS type_count 
            FROM Documents 
            GROUP BY document_type_code 
            ORDER BY type_count DESC 
            LIMIT 3) AS Types 
ON Documents.document_type_code = Types.document_type_code

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to What document types do have more than 10000 total access number.*/


SELECT document_type_code, SUM(access_count) AS total_access_number
FROM Documents
GROUP BY document_type_code
HAVING total_access_number > 10000

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Return the codes of the document types that do not have a total access count of over 10000.*/


SELECT document_type_code 
FROM Documents 
WHERE access_count < 10000

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are all the section titles of the document named "David CV"?*/


SELECT ds.section_title 
FROM Documents d 
INNER JOIN Document_Sections ds ON d.document_code = ds.document_code 
WHERE d.document_name = 'David CV'

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Give the section titles of the document with the name "David CV".*/


SELECT Document_Sections.section_title 
FROM Documents 
INNER JOIN Document_Sections 
ON Documents.document_code = Document_Sections.document_code 
WHERE Documents.document_name = 'David CV'

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find all the name of documents without any sections.*/


SELECT Documents.document_name 
FROM Documents 
LEFT JOIN Document_Sections 
ON Documents.document_code = Document_Sections.document_code 
WHERE Document_Sections.section_id IS NULL

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the names of documents that do not have any sections?*/


SELECT Documents.document_name
FROM Documents
LEFT JOIN Document_Sections
ON Documents.document_code = Document_Sections.document_code
WHERE Document_Sections.section_id IS NULL

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to List all the username and passwords of users with the most popular role.*/


SELECT user_name, password 
FROM Users 
INNER JOIN (SELECT role_code, COUNT(*) AS role_count 
            FROM Users 
            GROUP BY role_code 
            ORDER BY role_count DESC 
            LIMIT 1) AS most_popular_role 
ON Users.role_code = most_popular_role.role_code

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the usernames and passwords of users that have the most common role?*/


SELECT user_name, password 
FROM Users 
WHERE role_code = (SELECT role_code 
                   FROM Roles 
                   GROUP BY role_code 
                   ORDER BY COUNT(*) DESC 
                   LIMIT 1)

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find the average access counts of documents with functional area "Acknowledgement".*/


SELECT AVG(d.access_count)
FROM Documents d
INNER JOIN Document_Functional_Areas df ON d.document_code = df.document_code
INNER JOIN Functional_Areas f ON df.functional_area_code = f.functional_area_code
WHERE f.functional_area_description = 'Acknowledgement'

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the average access counts of documents that have the functional area description "Acknowledgement"?*/


SELECT AVG(d.access_count)
FROM Documents d
INNER JOIN Document_Functional_Areas dfa ON d.document_code = dfa.document_code
INNER JOIN Functional_Areas fa ON dfa.functional_area_code = fa.functional_area_code
WHERE fa.functional_area_description = 'Acknowledgement'

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find names of the document without any images.*/


SELECT Documents.document_name 
FROM Documents 
LEFT JOIN Document_Sections ON Documents.document_code = Document_Sections.document_code 
LEFT JOIN Document_Sections_Images ON Document_Sections.section_id = Document_Sections_Images.section_id 
WHERE Document_Sections_Images.image_id IS NULL

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the names of documents that do not have any images?*/


SELECT Documents.document_name
FROM Documents
LEFT JOIN Document_Sections_Images
ON Documents.document_code = Document_Sections_Images.document_code
WHERE Document_Sections_Images.image_id IS NULL

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What is the name of the document with the most number of sections?*/


SELECT Documents.document_name
FROM Documents
INNER JOIN Document_Sections
ON Documents.document_code = Document_Sections.document_code
GROUP BY Documents.document_name
ORDER BY COUNT(Document_Sections.section_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Return the name of the document that has the most sections.*/


SELECT Documents.document_name
FROM Documents
INNER JOIN Document_Sections
ON Documents.document_code = Document_Sections.document_code
GROUP BY Documents.document_name
ORDER BY COUNT(Document_Sections.section_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to List all the document names which contains "CV".*/


SELECT Documents.document_name 
FROM Documents 
WHERE Documents.document_name LIKE '%CV%'

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the names of documents that contain the substring "CV"?*/


SELECT document_name 
FROM Documents 
WHERE document_name LIKE '%CV%'

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer How many users are logged in?*/


SELECT COUNT(*) 
FROM Users 
WHERE user_login IS NOT NULL

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Count the number of users that are logged in.*/


SELECT COUNT(*) 
FROM Users 
WHERE user_login IS NOT NULL

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find the description of the most popular role among the users that have logged in.*/


SELECT role_description 
FROM Roles 
INNER JOIN Users ON Roles.role_code = Users.role_code 
GROUP BY role_description 
ORDER BY COUNT(user_login) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What is the description of the most popular role among users that have logged in?*/


SELECT role_description 
FROM Roles 
INNER JOIN Users 
ON Roles.role_code = Users.role_code 
WHERE user_login IS NOT NULL 
ORDER BY access_count DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find the average access count of documents with the least popular structure.*/


SELECT AVG(access_count) 
FROM Documents 
WHERE document_structure_code IN (SELECT document_structure_code 
                                 FROM Documents 
                                 GROUP BY document_structure_code 
                                 ORDER BY SUM(access_count) ASC 
                                 LIMIT 1)

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What is the average access count of documents that have the least common structure?*/


SELECT AVG(access_count) 
FROM Documents 
WHERE document_structure_code IN (SELECT document_structure_code 
                                 FROM Documents 
                                 GROUP BY document_structure_code 
                                 HAVING COUNT(*) = 1)

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to List all the image name and URLs in the order of their names.*/


SELECT Images.image_name, Images.image_url
FROM Images
ORDER BY Images.image_name ASC

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the names and urls of images, sorted alphabetically?*/


SELECT image_name, image_url
FROM Images
ORDER BY image_name ASC

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Find the number of users in each role.*/


SELECT Roles.role_code, COUNT(Users.user_id) AS user_count
FROM Roles
LEFT JOIN Users ON Roles.role_code = Users.role_code
GROUP BY Roles.role_code

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What are the different role codes for users, and how many users have each?*/


SELECT Roles.role_code, COUNT(Users.user_id) AS user_count
FROM Roles
INNER JOIN Users ON Roles.role_code = Users.role_code
GROUP BY Roles.role_code

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to answer What document types have more than 2 corresponding documents?*/


SELECT document_type_code, COUNT(document_code) 
FROM Documents 
GROUP BY document_type_code 
HAVING COUNT(document_code) > 2

/*Here are Mysql tables, with their properties:

Roles(role_code, role_description)
Users(user_id, role_code, user_name, user_login, password)
Document_Structures(document_structure_code, parent_document_structure_code, document_structure_description)
Functional_Areas(functional_area_code, parent_functional_area_code, functional_area_description)
Images(image_id, image_alt_text, image_name, image_url)
Documents(document_code, document_structure_code, document_type_code, access_count, document_name)
Document_Functional_Areas(document_code, functional_area_code)
Document_Sections(section_id, document_code, section_sequence, section_code, section_title)
Document_Sections_Images(section_id, image_id)

Create a SQL request to Give the codes of document types that have more than 2 corresponding documents.*/


SELECT document_type_code 
FROM Documents 
GROUP BY document_type_code 
HAVING COUNT(document_code) > 2

