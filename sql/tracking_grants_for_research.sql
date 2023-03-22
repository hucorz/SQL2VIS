/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the distinct grant amount for the grants where the documents were sent before '1986-08-26 20:49:27' and grant were ended after '1989-03-16 18:27:16'?*/


SELECT DISTINCT grant_amount 
FROM Grants 
INNER JOIN Documents 
ON Grants.grant_id = Documents.grant_id 
WHERE Documents.sent_date < '1986-08-26 20:49:27' 
AND Grants.grant_end_date > '1989-03-16 18:27:16'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the different grant amounts for documents sent before '1986-08-26 20:49:27' and after the grant ended on '1989-03-16 18:27:16'?*/


SELECT Grants.grant_amount 
FROM Documents 
INNER JOIN Grants 
ON Documents.grant_id = Grants.grant_id 
WHERE Documents.sent_date < '1986-08-26 20:49:27' 
AND Grants.grant_end_date > '1989-03-16 18:27:16'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to List the project details of the project both producing patent and paper as outcomes.*/


SELECT Projects.project_details 
FROM Projects 
INNER JOIN Project_Outcomes ON Projects.project_id = Project_Outcomes.project_id 
WHERE Project_Outcomes.outcome_code IN ('patent', 'paper')

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the details of the project that is producing both patents and papers as outcomes?*/


SELECT Projects.project_details 
FROM Projects 
INNER JOIN Project_Outcomes ON Projects.project_id = Project_Outcomes.project_id 
INNER JOIN Research_Outcomes ON Project_Outcomes.outcome_code = Research_Outcomes.outcome_code 
WHERE Research_Outcomes.outcome_description IN ('patents', 'papers')

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the total grant amount of the organisations described as research?*/


SELECT SUM(grant_amount) 
FROM Grants 
INNER JOIN Organisations 
ON Grants.organisation_id = Organisations.organisation_id 
WHERE Organisations.organisation_type = 'research'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the total amount of grant money for research?*/


SELECT SUM(grant_amount) 
FROM Grants 
WHERE grant_id IN (SELECT grant_id 
                   FROM Documents 
                   WHERE document_type_code = 'RESEARCH')

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to List from which date and to which date these staff work: project staff of the project which hires the most staffs*/


SELECT ps.date_from, ps.date_to 
FROM Project_Staff ps 
INNER JOIN Projects p ON ps.project_id = p.project_id 
INNER JOIN (SELECT project_id, COUNT(*) AS staff_count 
            FROM Project_Staff 
            GROUP BY project_id 
            ORDER BY staff_count DESC 
            LIMIT 1) AS most_staffs ON p.project_id = most_staffs.project_id

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer From what date and to what date do the staff work on a project that has the most staff and has staff in a leader role?*/


SELECT MAX(date_to) AS 'To Date', MIN(date_from) AS 'From Date'
FROM Project_Staff
INNER JOIN Projects ON Projects.project_id = Project_Staff.project_id
INNER JOIN Staff_Roles ON Staff_Roles.role_code = Project_Staff.role_code
WHERE Staff_Roles.role_description = 'Leader'
GROUP BY Projects.project_id
ORDER BY COUNT(Project_Staff.staff_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to Find the organisation ids and details of the organisations which are involved in*/
 projects with tasks

SELECT o.organisation_id, o.organisation_details 
FROM Organisations o 
INNER JOIN Projects p ON o.organisation_id = p.organisation_id 
INNER JOIN Tasks t ON p.project_id = t.project_id

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the ids and details for all organizations that have grants of more than 6000 dollars?*/


SELECT o.organisation_id, o.organisation_details 
FROM Organisations o 
INNER JOIN Grants g ON o.organisation_id = g.organisation_id 
WHERE g.grant_amount > 6000

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the organisation type and id of the organisation which has the most number of research staff?*/


SELECT o.organisation_type, o.organisation_id
FROM Organisations o
INNER JOIN Research_Staff rs ON o.organisation_id = rs.employer_organisation_id
GROUP BY o.organisation_type, o.organisation_id
ORDER BY COUNT(rs.staff_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the type and id of the organization that has the most research staff?*/


SELECT o.organisation_id, o.organisation_type
FROM Organisations o
INNER JOIN Research_Staff rs ON o.organisation_id = rs.employer_organisation_id
GROUP BY o.organisation_id, o.organisation_type
ORDER BY COUNT(rs.staff_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer Which organisation type hires most research staff?*/


SELECT organisation_type, COUNT(*) AS 'Number of Research Staff'
FROM Organisations
INNER JOIN Research_Staff
ON Organisations.organisation_id = Research_Staff.employer_organisation_id
GROUP BY organisation_type
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the type of the organization with the most research staff?*/


SELECT o.organisation_type
FROM Organisations o
INNER JOIN Research_Staff rs ON o.organisation_id = rs.employer_organisation_id
GROUP BY o.organisation_type
ORDER BY COUNT(rs.staff_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to Find out the send dates of the documents with the grant amount of more than 5000 were granted by organisation type described*/
 as ¡®University¡¯

SELECT Documents.sent_date 
FROM Documents 
INNER JOIN Grants ON Documents.grant_id = Grants.grant_id 
INNER JOIN Organisations ON Grants.organisation_id = Organisations.organisation_id 
INNER JOIN Organisation_Types ON Organisations.organisation_type = Organisation_Types.organisation_type 
WHERE Grants.grant_amount > 5000 
AND Organisation_Types.organisation_type_description = 'University'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the send dates for all documents that have a grant amount of more than 5000 and are involved in research?*/


SELECT Documents.sent_date 
FROM Documents 
INNER JOIN Grants 
ON Documents.grant_id = Grants.grant_id 
INNER JOIN Projects 
ON Grants.grant_id = Projects.grant_id 
INNER JOIN Research_Staff 
ON Projects.project_id = Research_Staff.project_id 
WHERE Grants.grant_amount > 5000

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the response received dates for the documents described as 'Regular' or granted with more than 100?*/


SELECT Documents.response_received_date 
FROM Documents 
INNER JOIN Document_Types ON Documents.document_type_code = Document_Types.document_type_code 
INNER JOIN Grants ON Documents.grant_id = Grants.grant_id 
WHERE Document_Types.document_description = 'Regular' 
AND Grants.grant_amount > 100

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the response received date for the document described as Regular that was granted more than 100 dollars?*/


SELECT response_received_date 
FROM Documents 
INNER JOIN Grants 
ON Documents.grant_id = Grants.grant_id 
INNER JOIN Document_Types 
ON Documents.document_type_code = Document_Types.document_type_code 
WHERE Document_Types.document_description = 'Regular' 
AND Grants.grant_amount > 100

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to List the project details of the projects which did not hire any staff for a researcher role.*/


SELECT Projects.project_details 
FROM Projects 
LEFT JOIN Project_Staff 
ON Projects.project_id = Project_Staff.project_id 
AND Project_Staff.role_code = 'RESEARCHER' 
WHERE Project_Staff.staff_id IS NULL

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the details for all projects that did not hire any staff in a research role?*/


SELECT Projects.project_id, Projects.organisation_id, Projects.project_details
FROM Projects
LEFT JOIN Project_Staff
ON Projects.project_id = Project_Staff.project_id
LEFT JOIN Staff_Roles
ON Project_Staff.role_code = Staff_Roles.role_code
WHERE Staff_Roles.role_description != 'Research'
OR Staff_Roles.role_description IS NULL

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the task details, task id and project id for the projects which are detailed as 'omnis' or  have more than 2 outcomes?*/


SELECT task_id, project_id, task_details 
FROM Tasks 
INNER JOIN Projects 
ON Tasks.project_id = Projects.project_id 
INNER JOIN Project_Outcomes 
ON Projects.project_id = Project_Outcomes.project_id 
WHERE Projects.project_details LIKE '%omnis%' 
OR (SELECT COUNT(*) FROM Project_Outcomes WHERE Project_Outcomes.project_id = Projects.project_id) > 2

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the task details, task ids, and project ids for the progrects that are detailed as 'omnis' or have at least 3 outcomes?*/


SELECT Tasks.task_id, Tasks.project_id, Tasks.task_details
FROM Tasks
INNER JOIN Projects ON Tasks.project_id = Projects.project_id
INNER JOIN Project_Outcomes ON Projects.project_id = Project_Outcomes.project_id
WHERE Projects.project_details LIKE '%omnis%' OR (SELECT COUNT(*) FROM Project_Outcomes WHERE Project_Outcomes.project_id = Projects.project_id) >= 3

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer When do all the researcher role staff start to work, and when do they stop working?*/


SELECT s.staff_id, s.date_from, s.date_to 
FROM Research_Staff s 
INNER JOIN Staff_Roles r ON s.role_code = r.role_code 
WHERE r.role_description = 'Researcher' 
ORDER BY s.date_from

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer When did researchers start and stop working?*/


SELECT Research_Staff.staff_id, Research_Staff.employer_organisation_id, Staff_Roles.role_code, Project_Staff.date_from, Project_Staff.date_to
FROM Research_Staff
INNER JOIN Staff_Roles ON Research_Staff.staff_id = Staff_Roles.role_code
INNER JOIN Project_Staff ON Research_Staff.staff_id = Project_Staff.staff_id
WHERE Staff_Roles.role_description = 'researcher'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer How many kinds of roles are there for the staff?*/


SELECT COUNT(DISTINCT role_code) 
FROM Staff_Roles

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer How many different roles are there on the project staff?*/


SELECT COUNT(DISTINCT role_code) 
FROM Project_Staff

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to What is the total amount of grants given by each organisations? Also list the organisation id.*/


SELECT o.organisation_id, SUM(g.grant_amount) AS Total_Grants
FROM Organisations o
INNER JOIN Grants g ON o.organisation_id = g.organisation_id
GROUP BY o.organisation_id

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the total amount of grant money given to each organization and what is its id?*/


SELECT o.organisation_id, SUM(g.grant_amount) AS Total_Grant_Amount
FROM Organisations o
INNER JOIN Grants g ON o.organisation_id = g.organisation_id
GROUP BY o.organisation_id

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to List the project details of the projects with the research outcome described with the substring 'Published'.*/


SELECT Projects.project_details 
FROM Projects 
INNER JOIN Project_Outcomes 
ON Projects.project_id = Project_Outcomes.project_id 
INNER JOIN Research_Outcomes 
ON Project_Outcomes.outcome_code = Research_Outcomes.outcome_code 
WHERE Research_Outcomes.outcome_description LIKE '%Published%'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the details for the project whose research has been published?*/


SELECT Projects.project_details 
FROM Projects 
INNER JOIN Research_Outcomes 
ON Projects.project_id = Research_Outcomes.outcome_code 
WHERE Research_Outcomes.outcome_description = 'Published'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to How many staff does each project has? List the project id and the number in an ascending order.*/


SELECT Projects.project_id, COUNT(Project_Staff.staff_id) AS 'Number of Staff'
FROM Projects
INNER JOIN Project_Staff
ON Projects.project_id = Project_Staff.project_id
GROUP BY Projects.project_id
ORDER BY 'Number of Staff' ASC

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to For each project id, how many staff does it have? List them in increasing order.*/


SELECT project_id, COUNT(staff_id) AS 'Number of Staff'
FROM Project_Staff
GROUP BY project_id
ORDER BY COUNT(staff_id) ASC

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to What is the complete description of the researcher role.*/


SELECT role_description 
FROM Staff_Roles 
WHERE role_code = 'Researcher'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the complete description of the job of a researcher?*/


SELECT s.staff_details, r.role_description 
FROM Research_Staff s 
INNER JOIN Staff_Roles r ON s.role_code = r.role_code 
WHERE r.role_description LIKE '%researcher%'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer When did the first staff for the projects started working?*/


SELECT MIN(date_from) 
FROM Project_Staff

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer When did the first staff member start working?*/


SELECT MIN(date_from) 
FROM Project_Staff

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to Which project made the most number of outcomes? List the project details and the project id.*/


SELECT Projects.project_id, Projects.project_details, COUNT(Project_Outcomes.outcome_code) AS 'Number of Outcomes'
FROM Projects
INNER JOIN Project_Outcomes ON Projects.project_id = Project_Outcomes.project_id
GROUP BY Projects.project_id
ORDER BY COUNT(Project_Outcomes.outcome_code) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the details and id of the project with the most outcomes?*/


SELECT Projects.project_id, Projects.project_details
FROM Projects
INNER JOIN Project_Outcomes
ON Projects.project_id = Project_Outcomes.project_id
GROUP BY Projects.project_id
ORDER BY COUNT(Project_Outcomes.outcome_code) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to Which projects have no outcome? List the project details.*/


SELECT Projects.project_id, Projects.project_details
FROM Projects
LEFT JOIN Project_Outcomes
ON Projects.project_id = Project_Outcomes.project_id
WHERE Project_Outcomes.outcome_code IS NULL

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the details of the project with no outcomes?*/


SELECT Projects.project_id, Projects.organisation_id, Projects.project_details
FROM Projects
LEFT JOIN Project_Outcomes
ON Projects.project_id = Project_Outcomes.project_id
WHERE Project_Outcomes.outcome_code IS NULL

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to Which organisation hired the most number of research staff? List the organisation id, type and detail.*/


SELECT o.organisation_id, o.organisation_type, o.organisation_details
FROM Organisations o
INNER JOIN Research_Staff rs ON o.organisation_id = rs.employer_organisation_id
GROUP BY o.organisation_id, o.organisation_type, o.organisation_details
ORDER BY COUNT(rs.staff_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the ids, types, and details of the organization with the most research staff?*/


SELECT o.organisation_id, o.organisation_type, o.organisation_details
FROM Organisations o
INNER JOIN Research_Staff rs ON o.organisation_id = rs.employer_organisation_id
GROUP BY o.organisation_id, o.organisation_type, o.organisation_details
ORDER BY COUNT(rs.staff_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer Show the role description and the id of the project staff involved in most number of project outcomes?*/


SELECT s.role_code, r.role_description, COUNT(po.outcome_code) AS num_outcomes
FROM Project_Staff s
INNER JOIN Staff_Roles r ON s.role_code = r.role_code
INNER JOIN Project_Outcomes po ON s.project_id = po.project_id
GROUP BY s.role_code, r.role_description
ORDER BY num_outcomes DESC

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer For each staff id, what is the description of the role that is involved with the most number of projects?*/


SELECT s.staff_id, r.role_description
FROM Staff_Roles r
INNER JOIN Project_Staff s ON r.role_code = s.role_code
INNER JOIN Projects p ON s.project_id = p.project_id
GROUP BY s.staff_id, r.role_description
ORDER BY COUNT(p.project_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer Which document type is described with the prefix 'Initial'?*/


SELECT document_description 
FROM Document_Types 
WHERE document_type_code LIKE 'Initial%'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the type of the document whose description starts with the word 'Initial'?*/


SELECT document_type_code 
FROM Document_Types 
WHERE document_description LIKE 'Initial%'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to For grants with both documents described as 'Regular' and documents described as 'Initial Application', list its start date.*/


SELECT g.grant_start_date 
FROM Grants g 
INNER JOIN Documents d1 ON g.grant_id = d1.grant_id 
INNER JOIN Document_Types dt1 ON d1.document_type_code = dt1.document_type_code 
INNER JOIN Documents d2 ON g.grant_id = d2.grant_id 
INNER JOIN Document_Types dt2 ON d2.document_type_code = dt2.document_type_code 
WHERE dt1.document_description = 'Regular' 
AND dt2.document_description = 'Initial Application'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer For grants that have descriptions of Regular and Initial Applications, what are their start dates?*/


SELECT g.grant_start_date 
FROM Grants g 
INNER JOIN Documents d ON g.grant_id = d.grant_id 
INNER JOIN Document_Types dt ON d.document_type_code = dt.document_type_code 
WHERE dt.document_description IN ('Regular Application', 'Initial Application')

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to How many documents can one grant have at most? List the grant id and number.*/


SELECT Grants.grant_id, COUNT(Documents.document_id) AS 'Number of Documents'
FROM Grants
LEFT JOIN Documents ON Grants.grant_id = Documents.grant_id
GROUP BY Grants.grant_id

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer For each grant id, how many documents does it have, and which one has the most?*/


SELECT g.grant_id, COUNT(d.document_id) AS 'Number of Documents', MAX(d.document_id) AS 'Document with Most'
FROM Grants g
INNER JOIN Documents d ON g.grant_id = d.grant_id
GROUP BY g.grant_id

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to Find the organisation type description of the organisation detailed as 'quo'.*/


SELECT organisation_type_description 
FROM Organisation_Types 
INNER JOIN Organisations 
ON Organisation_Types.organisation_type = Organisations.organisation_type 
WHERE Organisations.organisation_details = 'quo'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the type description of the organization whose detail is listed as 'quo'?*/


SELECT organisation_type_description 
FROM Organisation_Types 
INNER JOIN Organisations 
ON Organisation_Types.organisation_type = Organisations.organisation_type 
WHERE organisation_details = 'quo'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to What are all the details of the organisations described as 'Sponsor'? Sort the result in an ascending order.*/


SELECT * 
FROM Organisations 
WHERE organisation_type = 'Sponsor' 
ORDER BY organisation_id ASC

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the details of all organizations that are described as Sponsors and sort the results in ascending order?*/


SELECT o.organisation_details 
FROM Organisations o 
INNER JOIN Organisation_Types ot ON o.organisation_type = ot.organisation_type 
WHERE ot.organisation_type_description = 'Sponsor' 
ORDER BY o.organisation_details ASC

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer How many Patent outcomes are generated from all the projects?*/


SELECT COUNT(*)
FROM Project_Outcomes
WHERE outcome_code = 'Patent'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer How many patents outcomes were listed for all the projects?*/


SELECT COUNT(*) 
FROM Project_Outcomes 
WHERE outcome_code = 'patent'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer How many project staff worked as leaders or started working before '1989-04-24 23:51:54'?*/


SELECT COUNT(*) 
FROM Project_Staff 
WHERE role_code = 'leader' OR date_from < '1989-04-24 23:51:54'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer How many project members were leaders or started working before '1989-04-24 23:51:54'?*/


SELECT COUNT(*) 
FROM Project_Staff 
WHERE role_code = 'leader' OR date_from < '1989-04-24 23:51:54'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the last date of the staff leaving the projects?*/


SELECT MAX(date_to) 
FROM Project_Staff

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the last date that a staff member left a project?*/


SELECT MAX(date_to) 
FROM Project_Staff 
WHERE project_id = ?

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the result description of the project whose detail is 'sint'?*/


SELECT o.outcome_description 
FROM Projects p 
INNER JOIN Project_Outcomes o ON p.project_id = o.project_id 
WHERE p.project_details = 'sint'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the description for the results whose project detail is 'sint'?*/


SELECT outcome_description 
FROM Research_Outcomes 
INNER JOIN Projects 
ON Research_Outcomes.outcome_code = Projects.project_id 
WHERE Projects.project_details = 'sint'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to List the organisation id with the maximum outcome count, and the count.*/


SELECT o.organisation_id, COUNT(po.outcome_code) AS outcome_count
FROM Organisations o
INNER JOIN Projects p ON o.organisation_id = p.organisation_id
INNER JOIN Project_Outcomes po ON p.project_id = po.project_id
GROUP BY o.organisation_id
ORDER BY outcome_count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the id of the organization with the maximum number of outcomes and how many outcomes are there?*/


SELECT o.organisation_id, COUNT(o.organisation_id) AS 'Number of Outcomes'
FROM Organisations o
INNER JOIN Projects p ON o.organisation_id = p.organisation_id
INNER JOIN Project_Outcomes po ON p.project_id = po.project_id
GROUP BY o.organisation_id
ORDER BY COUNT(o.organisation_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to List the project details of the projects launched by the organisation*/
 with the id 'ORG001':

SELECT Projects.project_details 
FROM Projects 
WHERE Projects.organisation_id = 'ORG001'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the details for the projects which were launched by the organization with the most projects?*/


SELECT Projects.project_details 
FROM Projects 
INNER JOIN Organisations ON Projects.organisation_id = Organisations.organisation_id 
GROUP BY Projects.organisation_id 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to List the research staff details, and order in ascending order.*/


SELECT staff_details 
FROM Research_Staff 
ORDER BY staff_details ASC

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to What details are there on the research staff? List the result in ascending alphabetical order.*/


SELECT staff_id, employer_organisation_id, staff_details
FROM Research_Staff
ORDER BY staff_details ASC

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer How many tasks are there in total?*/


SELECT COUNT(*) FROM Tasks

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer How many tasks are there?*/


SELECT COUNT(*) FROM Tasks

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to How many tasks does each project have? List the task count and the project detail.*/


SELECT Projects.project_details, COUNT(Tasks.task_id) AS task_count
FROM Projects
INNER JOIN Tasks ON Projects.project_id = Tasks.project_id
GROUP BY Projects.project_details

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer For each project id, how many tasks are there?*/


SELECT project_id, COUNT(task_id) AS 'Number of Tasks'
FROM Tasks
GROUP BY project_id

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to What are the staff roles of the staff who*/
 are working on projects for organisation with id = 1

SELECT s.role_code, sr.role_description
FROM Staff_Roles sr
INNER JOIN Project_Staff s ON s.role_code = sr.role_code
INNER JOIN Projects p ON p.project_id = s.project_id
WHERE p.organisation_id = 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What roles did staff members play between '2003-04-19 15:06:20' and '2016-03-15 00:33:18'?*/


SELECT s.staff_id, s.role_code, r.role_description
FROM Project_Staff s
INNER JOIN Staff_Roles r ON s.role_code = r.role_code
WHERE s.date_from BETWEEN '2003-04-19 15:06:20' AND '2016-03-15 00:33:18'
AND s.date_to BETWEEN '2003-04-19 15:06:20' AND '2016-03-15 00:33:18'

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What are the descriptions of all the project outcomes?*/


SELECT outcome_description 
FROM Research_Outcomes 
JOIN Project_Outcomes 
ON Research_Outcomes.outcome_code = Project_Outcomes.outcome_code

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to List the description of the outcomes for all projects.*/


SELECT o.outcome_description 
FROM Project_Outcomes po 
INNER JOIN Research_Outcomes o 
ON po.outcome_code = o.outcome_code

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer Which role is most common for the staff?*/


SELECT role_code, COUNT(*) AS count
FROM Staff_Roles
INNER JOIN Project_Staff
ON Staff_Roles.role_code = Project_Staff.role_code
GROUP BY role_code
ORDER BY count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Document_Types(document_type_code, document_description)
Documents(document_id, document_type_code, grant_id, sent_date, response_received_date, other_details)
Grants(grant_id, organisation_id, grant_amount, grant_start_date, grant_end_date, other_details)
Organisation_Types(organisation_type, organisation_type_description)
Organisations(organisation_id, organisation_type, organisation_details)
Project_Outcomes(project_id, outcome_code, outcome_details)
Project_Staff(staff_id, project_id, role_code, date_from, date_to, other_details)
Projects(project_id, organisation_id, project_details)
Research_Outcomes(outcome_code, outcome_description)
Research_Staff(staff_id, employer_organisation_id, staff_details)
Staff_Roles(role_code, role_description)
Tasks(task_id, project_id, task_details, e)

Create a SQL request to answer What is the most common role for the staff?*/


SELECT role_code, COUNT(*) AS role_count
FROM Staff_Roles
INNER JOIN Project_Staff
ON Staff_Roles.role_code = Project_Staff.role_code
GROUP BY role_code
ORDER BY role_count DESC
LIMIT 1

