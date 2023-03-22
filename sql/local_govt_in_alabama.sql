/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer what are the event details of the services that have the type code 'Marriage'?*/


SELECT Events.Event_Details 
FROM Events 
INNER JOIN Services ON Events.Service_ID = Services.Service_ID 
WHERE Services.Service_Type_Code = 'Marriage'

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer What are the ids and details of events that have more than one participants?*/


SELECT Events.Event_ID, Events.Event_Details
FROM Events
INNER JOIN Participants_in_Events
ON Events.Event_ID = Participants_in_Events.Event_ID
GROUP BY Events.Event_ID, Events.Event_Details
HAVING COUNT(Participants_in_Events.Participant_ID) > 1

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to How many events have each participants attended? List the participant id, type and the number.*/


SELECT p.Participant_ID, p.Participant_Type_Code, COUNT(pie.Event_ID) AS Number_of_Events
FROM Participants p
INNER JOIN Participants_in_Events pie ON p.Participant_ID = pie.Participant_ID
GROUP BY p.Participant_ID, p.Participant_Type_Code

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer What are all the the participant ids, type code and details?*/


SELECT Participants.Participant_ID, Participants.Participant_Type_Code, Participants.Participant_Details 
FROM Participants

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer How many participants belong to the type 'Organizer'?*/


SELECT COUNT(*) 
FROM Participants 
WHERE Participant_Type_Code = 'Organizer'

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to List the type of the services in alphabetical order.*/


SELECT Service_Type_Code
FROM Services
ORDER BY Service_Type_Code ASC

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to List the service id and details for the events.*/


SELECT Services.Service_ID, Events.Event_Details 
FROM Services 
INNER JOIN Events 
ON Services.Service_ID = Events.Service_ID

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to How many events had participants whose details had the substring 'Dr.'*/


SELECT COUNT(*) 
FROM Events 
INNER JOIN Participants_in_Events ON Events.Event_ID = Participants_in_Events.Event_ID 
INNER JOIN Participants ON Participants_in_Events.Participant_ID = Participants.Participant_ID 
WHERE Participants.Participant_Details LIKE '%Dr.%'

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer What is the most common participant type?*/


SELECT Participant_Type_Code, COUNT(*) AS Count
FROM Participants
INNER JOIN Participants_in_Events
ON Participants.Participant_ID = Participants_in_Events.Participant_ID
GROUP BY Participant_Type_Code
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer Which service id and type has the least number of participants?*/


SELECT Services.Service_ID, Services.Service_Type_Code, COUNT(Participants_in_Events.Participant_ID) AS Participant_Count
FROM Services
INNER JOIN Events ON Services.Service_ID = Events.Service_ID
INNER JOIN Participants_in_Events ON Events.Event_ID = Participants_in_Events.Event_ID
GROUP BY Services.Service_ID, Services.Service_Type_Code
ORDER BY Participant_Count ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer What is the id of the event with the most participants?*/


SELECT Event_ID, COUNT(Participant_ID) AS Num_Participants
FROM Events
JOIN Participants_in_Events
ON Events.Event_ID = Participants_in_Events.Event_ID
GROUP BY Event_ID
ORDER BY Num_Participants DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer Which events id does not have any participant with detail 'Kenyatta Kuhn'?*/


SELECT Event_ID
FROM Events
WHERE Event_ID NOT IN (SELECT Event_ID
                       FROM Participants_in_Events
                       INNER JOIN Participants
                       ON Participants_in_Events.Participant_ID = Participants.Participant_ID
                       WHERE Participant_Details = 'Kenyatta Kuhn')

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer Which services type had both successful and failure event details?*/


SELECT Service_Type_Code 
FROM Services 
WHERE Service_ID IN (SELECT Service_ID 
                     FROM Events 
                     WHERE Event_Details IN ('Successful', 'Failure')) 
GROUP BY Service_Type_Code

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer How many events did not have any participants?*/


SELECT COUNT(*) 
FROM Events 
WHERE Event_ID NOT IN (SELECT Event_ID FROM Participants_in_Events)

/*Here are Mysql tables, with their properties:

Services(Service_ID, Service_Type_Code)
Participants(Participant_ID, Participant_Type_Code, Participant_Details)
Events(Event_ID, Service_ID, Event_Details)
Participants_in_Events(Event_ID, Participant_ID)

Create a SQL request to answer What are all the distinct participant ids who attended any events?*/


SELECT DISTINCT Participant_ID 
FROM Participants_in_Events

