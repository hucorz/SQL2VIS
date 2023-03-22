/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer How many regions do we have?*/


SELECT COUNT(*) FROM region

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Count the number of regions.*/


SELECT COUNT(Region_ID) FROM region

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show all distinct region names ordered by their labels.*/


SELECT DISTINCT Region_name 
FROM region 
ORDER BY Label

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer What are the different region names, ordered by labels?*/


SELECT Region_name 
FROM region 
ORDER BY Label

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer How many parties do we have?*/


SELECT COUNT(*) FROM party

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Count the number of different parties.*/


SELECT COUNT(DISTINCT Party_ID) FROM party

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show the ministers and the time they took and left office, listed by the time they left office.*/


SELECT Minister, Took_office, Left_office 
FROM party 
ORDER BY Left_office DESC

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer Who are the ministers, when did they take office, and when did they leave office, ordered by when they left office?*/


SELECT Minister, Took_office, Left_office
FROM party
ORDER BY Left_office DESC

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show the minister who took office after 1961 or before 1959.*/


SELECT Minister 
FROM party 
WHERE Took_office > 1961 OR Took_office < 1959

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer Who are the ministers who took office after 1961 or before 1959?*/


SELECT Minister 
FROM party 
WHERE Took_office > 1961 OR Took_office < 1959

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show all ministers who do not belong to Progress Party.*/


SELECT Minister 
FROM party 
WHERE Party_name != 'Progress Party'

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer Which ministers are not a part of the Progress Party?*/


SELECT Minister 
FROM party 
WHERE Party_name != 'Progress Party' 
AND In_office = 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show all ministers and parties they belong to in descending order of the time they took office.*/


SELECT Minister, Party_name, Took_office
FROM party
JOIN member ON party.Party_ID = member.Party_ID
ORDER BY Took_office DESC

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer Who are the ministers and what parties do they belong to, listed descending by the times they took office?*/


SELECT Minister, Party_name
FROM party
JOIN member ON party.Party_ID = member.Party_ID
ORDER BY Took_office DESC

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Return the minister who left office at the latest time.*/


SELECT Minister 
FROM party 
ORDER BY Left_office DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer Which minister left office the latest?*/


SELECT Minister, Left_office 
FROM party 
ORDER BY Left_office DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to List member names and their party names.*/


SELECT m.Member_Name, p.Party_Name 
FROM member m 
INNER JOIN party p 
ON m.Party_ID = p.Party_ID

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer What are the names of members and their corresponding parties?*/


SELECT m.Member_Name, p.Party_Name 
FROM member m 
INNER JOIN party p 
ON m.Party_ID = p.Party_ID

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show all party names and the number of members in each party.*/


SELECT Party_name, COUNT(Member_ID) AS 'Number of Members'
FROM party
JOIN member ON party.Party_ID = member.Party_ID
GROUP BY Party_name

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer How many members are in each party?*/


SELECT Party_name, COUNT(Member_ID) AS 'Number of Members'
FROM party
JOIN member ON party.Party_ID = member.Party_ID
GROUP BY Party_name

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer What is the name of party with most number of members?*/


SELECT Party_name, COUNT(Member_ID) AS Member_Count
FROM party
INNER JOIN member ON party.Party_ID = member.Party_ID
GROUP BY Party_name
ORDER BY Member_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Return the name of the party with the most members.*/


SELECT Party_name, COUNT(Member_ID) AS Member_Count
FROM party
INNER JOIN member ON party.Party_ID = member.Party_ID
GROUP BY Party_name
ORDER BY Member_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show all party names and their region names.*/


SELECT p.Party_name, r.Region_name
FROM party p
INNER JOIN region r ON p.Region_ID = r.Region_ID

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer What are the names of parties and their respective regions?*/


SELECT p.Party_name, r.Region_name 
FROM party p 
INNER JOIN region r ON p.Region_ID = r.Region_ID

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show names of parties that does not have any members.*/


SELECT Party_name 
FROM party 
WHERE Party_ID NOT IN (SELECT Party_ID FROM member)

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer What are the names of parties that have no members?*/


SELECT Party_name 
FROM party 
WHERE Party_ID NOT IN (SELECT Party_ID FROM member) 

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show the member names which are in both the party with id 3 and the party with id 1.*/


SELECT m.Member_Name 
FROM member m 
INNER JOIN party p1 ON m.Party_ID = p1.Party_ID 
INNER JOIN party p2 ON m.Party_ID = p2.Party_ID 
WHERE p1.Party_ID = 3 AND p2.Party_ID = 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer Which member names are shared among members in the party with the id 3 and the party with the id 1?*/


SELECT m1.Member_Name 
FROM member m1 
INNER JOIN party p1 ON m1.Party_ID = p1.Party_ID 
INNER JOIN member m2 ON m2.Member_Name = m1.Member_Name 
INNER JOIN party p2 ON m2.Party_ID = p2.Party_ID 
WHERE p1.Party_ID = 3 AND p2.Party_ID = 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show member names that are not in the Progress Party.*/


SELECT Member_Name 
FROM member 
WHERE Party_ID NOT IN (SELECT Party_ID FROM party WHERE Party_name = 'Progress Party')

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer Which member names corresponding to members who are not in the Progress Party?*/


SELECT Member_Name 
FROM member 
WHERE Party_ID NOT IN (SELECT Party_ID FROM party WHERE Party_name = 'Progress Party')

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer How many party events do we have?*/


SELECT COUNT(*) FROM party_events

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Count the number of party events.*/


SELECT COUNT(Event_ID) FROM party_events

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show party names and the number of events for each party.*/


SELECT Party_name, COUNT(Event_ID) AS Number_of_Events
FROM party
JOIN party_events
ON party.Party_ID = party_events.Party_ID
GROUP BY Party_name

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer How many events are there for each party?*/


SELECT Party_name, COUNT(Event_ID) AS 'Number of Events'
FROM party
INNER JOIN party_events ON party.Party_ID = party_events.Party_ID
GROUP BY Party_name

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Show all member names who are not in charge of any event.*/


SELECT Member_Name 
FROM member 
WHERE Member_ID NOT IN (SELECT Member_in_charge_ID FROM party_events)

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer What are the names of members who are not in charge of any events?*/


SELECT Member_Name 
FROM member 
WHERE Member_ID NOT IN (SELECT Member_in_charge_ID FROM party_events)

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer What are the names of parties with at least 2 events?*/


SELECT Party_name 
FROM party 
INNER JOIN party_events 
ON party.Party_ID = party_events.Party_ID 
GROUP BY Party_name 
HAVING COUNT(Event_ID) >= 2

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Return the names of parties that have two or more events.*/


SELECT Party_name 
FROM party 
INNER JOIN party_events 
ON party.Party_ID = party_events.Party_ID 
GROUP BY Party_name 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer What is the name of member in charge of greatest number of events?*/


SELECT Member_Name 
FROM member 
INNER JOIN party_events ON member.Member_ID = party_events.Member_in_charge_ID 
GROUP BY Member_Name 
ORDER BY COUNT(Event_ID) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Return the name of the member who is in charge of the most events.*/


SELECT Member_Name 
FROM member 
INNER JOIN party_events ON member.Member_ID = party_events.Member_in_charge_ID 
GROUP BY Member_Name 
ORDER BY COUNT(Event_ID) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to find the event names that have more than 2 records.*/


SELECT Event_Name, COUNT(*) 
FROM party_events 
GROUP BY Event_Name 
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer Which event names were used more than twice for party events?*/


SELECT Event_Name
FROM party_events
GROUP BY Event_Name
HAVING COUNT(Event_Name) > 2

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to answer How many Annual Meeting events happened in the United Kingdom region?*/


SELECT COUNT(*) 
FROM region r 
INNER JOIN party p ON r.Region_ID = p.Region_ID 
INNER JOIN party_events pe ON p.Party_ID = pe.Party_ID 
WHERE r.Region_name = 'United Kingdom' AND pe.Event_Name = 'Annual Meeting'

/*Here are Mysql tables, with their properties:

region(Region_ID, Region_name, Date, Label, Format, Catalogue)
party(Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name)
member(Member_ID, Member_Name, Party_ID, In_office)
party_events(Event_ID, Event_Name, Party_ID, Member_in_charge_ID)

Create a SQL request to Count the number of Annual Meeting events that took place in the region of the United Kingdom.*/


SELECT COUNT(*) 
FROM party_events 
INNER JOIN party ON party_events.Party_ID = party.Party_ID 
INNER JOIN region ON party.Region_ID = region.Region_ID 
WHERE region.Region_name = 'United Kingdom' 
AND Event_Name = 'Annual Meeting'

