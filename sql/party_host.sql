/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer How many parties are there?*/


SELECT COUNT(*) FROM party

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Count the number of parties.*/


SELECT COUNT(*) FROM party

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to List the themes of parties in ascending order of number of hosts.*/


SELECT Party_Theme, Number_of_hosts 
FROM party 
ORDER BY Number_of_hosts ASC

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer What are the themes of parties ordered by the number of hosts in ascending manner?*/


SELECT Party_Theme, COUNT(Host_ID) AS Number_of_hosts
FROM party
JOIN party_host ON party.Party_ID = party_host.Party_ID
GROUP BY Party_Theme
ORDER BY Number_of_hosts ASC

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer What are the themes and locations of parties?*/


SELECT Party_Theme, Location FROM party

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Give me the theme and location of each party.*/


SELECT Party_Theme, Location FROM party

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show the first year and last year of parties with theme "Spring" or "Teqnology".*/


SELECT First_year, Last_year 
FROM party 
WHERE Party_Theme IN ('Spring', 'Technology')

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer What are the first year and last year of the parties whose theme is "Spring" or "Teqnology"?*/


SELECT First_year, Last_year 
FROM party 
WHERE Party_Theme IN ('Spring', 'Technology')

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer What is the average number of hosts for parties?*/


SELECT AVG(Number_of_hosts)
FROM party

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Compute the average number of hosts for parties.*/


SELECT AVG(Number_of_hosts)
FROM party

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer What is the location of the party with the most hosts?*/


SELECT Location 
FROM party 
WHERE Number_of_hosts = (SELECT MAX(Number_of_hosts) FROM party) 
LIMIT 1

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Which party had the most hosts? Give me the party location.*/


SELECT Location, COUNT(Host_ID) AS Host_Count
FROM party
JOIN party_host ON party.Party_ID = party_host.Party_ID
GROUP BY Location
ORDER BY Host_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show different nationalities along with the number of hosts of each nationality.*/


SELECT Nationality, COUNT(Host_ID) AS Number_of_Hosts
FROM host
GROUP BY Nationality

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to How many hosts does each nationality have? List the nationality and the count.*/


SELECT Nationality, COUNT(Host_ID) AS Host_Count
FROM host
GROUP BY Nationality

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show the most common nationality of hosts.*/


SELECT Nationality, COUNT(*) AS Num_Hosts
FROM host
INNER JOIN party_host ON host.Host_ID = party_host.Host_ID
GROUP BY Nationality
ORDER BY Num_Hosts DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer Which nationality has the most hosts?*/


SELECT Nationality, COUNT(Host_ID) AS Host_Count
FROM host
JOIN party_host ON host.Host_ID = party_host.Host_ID
GROUP BY Nationality
ORDER BY Host_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show the nations that have both hosts older than 45 and hosts younger than 35.*/


SELECT DISTINCT Nationality 
FROM host 
WHERE Age > 45 
AND Age < 35

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer Which nations have both hosts of age above 45 and hosts of age below 35?*/


SELECT DISTINCT Nationality 
FROM host 
WHERE Host_ID IN (SELECT Host_ID 
                  FROM party_host 
                  WHERE Party_ID IN (SELECT Party_ID 
                                     FROM party) 
                  AND Host_ID IN (SELECT Host_ID 
                                  FROM host 
                                  WHERE Age > 45) 
                  OR Host_ID IN (SELECT Host_ID 
                                 FROM host 
                                 WHERE Age < 35)) 
AND Host_ID IN (SELECT Host_ID 
                FROM party_host 
                WHERE Party_ID IN (SELECT Party_ID 
                                   FROM party) 
                AND Host_ID IN (SELECT Host_ID 
                                FROM host 
                                WHERE Age < 35)) 
AND Host_ID IN (SELECT Host_ID 
                FROM party_host 
                WHERE Party_ID IN (SELECT Party_ID 
                                   FROM party) 
                AND Host_ID IN (SELECT Host_ID 
                                FROM host 
                                WHERE Age > 45))

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show the themes of parties and the names of the party hosts.*/


SELECT party.Party_Theme, host.Name 
FROM party 
INNER JOIN party_host ON party.Party_ID = party_host.Party_ID 
INNER JOIN host ON party_host.Host_ID = host.Host_ID

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to For each party, return its theme and the name of its host.*/


SELECT party.Party_Theme, host.Name 
FROM party 
INNER JOIN party_host ON party.Party_ID = party_host.Party_ID 
INNER JOIN host ON party_host.Host_ID = host.Host_ID

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show the locations of parties and the names of the party hosts in ascending order of the age of the host.*/


SELECT Location, Name 
FROM party 
INNER JOIN party_host ON party.Party_ID = party_host.Party_ID 
INNER JOIN host ON party_host.Host_ID = host.Host_ID 
ORDER BY Age ASC

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to For each party, find its location and the name of its host. Sort the result in ascending order of the age of the host.*/


SELECT p.Location, h.Name, h.Age 
FROM party p 
INNER JOIN party_host ph ON p.Party_ID = ph.Party_ID 
INNER JOIN host h ON ph.Host_ID = h.Host_ID 
ORDER BY h.Age ASC

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show the locations of parties with hosts older than 50.*/


SELECT Location 
FROM party 
INNER JOIN party_host ON party.Party_ID = party_host.Party_ID 
INNER JOIN host ON party_host.Host_ID = host.Host_ID 
WHERE host.Age > 50

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Which parties have hosts of age above 50? Give me the party locations.*/


SELECT Location 
FROM party 
INNER JOIN party_host ON party.Party_ID = party_host.Party_ID 
INNER JOIN host ON party_host.Host_ID = host.Host_ID 
WHERE host.Age > 50

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show the host names for parties with number of hosts greater than 20.*/


SELECT h.Name 
FROM host h 
INNER JOIN party_host ph ON h.Host_ID = ph.Host_ID 
INNER JOIN party p ON ph.Party_ID = p.Party_ID 
WHERE p.Number_of_hosts > 20

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Which parties have more than 20 hosts? Give me the host names for these parties.*/


SELECT p.Party_ID, h.Name 
FROM party p 
INNER JOIN party_host ph ON p.Party_ID = ph.Party_ID 
INNER JOIN host h ON ph.Host_ID = h.Host_ID 
WHERE p.Number_of_hosts > 20

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to Show the name and the nationality of the oldest host.*/


SELECT Name, Nationality 
FROM host 
WHERE Age = (SELECT MAX(Age) FROM host)

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer What are the name and the nationality of the host of the highest age?*/


SELECT Name, Nationality 
FROM host 
WHERE Age = (SELECT MAX(Age) FROM host)

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to List the names of hosts who did not serve as a host of any party in our record.*/


SELECT Name
FROM host
WHERE Host_ID NOT IN (SELECT Host_ID FROM party_host)

/*Here are Mysql tables, with their properties:

party(Party_ID, Party_Theme, Location, First_year, Last_year, Number_of_hosts)
host(Host_ID, Name, Nationality, Age)
party_host(Party_ID, Host_ID, Is_Main_in_Charge)

Create a SQL request to answer What are the names of hosts who did not host any party in our record?*/


SELECT Name
FROM host
WHERE Host_ID NOT IN (SELECT Host_ID FROM party_host)

