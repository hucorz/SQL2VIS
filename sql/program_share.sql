/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Find the names of channels that are not owned by CCTV.*/


SELECT Name 
FROM channel 
WHERE Owner != 'CCTV'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Which channels are not owned by CCTV? Give me the channel names.*/


SELECT Name 
FROM channel 
WHERE Owner != 'CCTV'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to List all channel names ordered by their rating in percent from big to small.*/


SELECT Name, Rating_in_percent 
FROM channel 
ORDER BY Rating_in_percent DESC

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Give me a list of all the channel names sorted by the channel rating in descending order.*/


SELECT Name, Rating_in_percent 
FROM channel 
ORDER BY Rating_in_percent DESC

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer What is the owner of the channel that has the highest rating ratio?*/


SELECT c.Owner 
FROM channel c 
INNER JOIN broadcast b ON c.Channel_ID = b.Channel_ID 
INNER JOIN broadcast_share bs ON b.Channel_ID = bs.Channel_ID 
AND b.Program_ID = bs.Program_ID 
GROUP BY c.Owner 
ORDER BY SUM(bs.Share_in_percent)/SUM(c.Rating_in_percent) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Show me the owner of the channel with the highest rating.*/


SELECT Owner 
FROM channel 
ORDER BY Rating_in_percent DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer how many programs are there?*/


SELECT COUNT(*) FROM program

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Count the number of programs.*/


SELECT COUNT(Program_ID) FROM program

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to list all the names of programs, ordering by launch time.*/


SELECT Name 
FROM program 
ORDER BY Launch

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer What is the list of program names, sorted by the order of launch date?*/


SELECT Name 
FROM program 
ORDER BY Launch ASC

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to List the name, origin and owner of each program.*/


SELECT Name, Origin, Owner
FROM program

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer What are the name, origin and owner of each program?*/


SELECT Name, Origin, Owner FROM program

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to find the name of the program that was launched most recently.*/


SELECT Name
FROM program
ORDER BY Launch DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Which program was launched most recently? Return the program name.*/


SELECT Name 
FROM program 
ORDER BY Launch DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to find the total percentage share of all channels owned by CCTV.*/


SELECT SUM(Share_in_percent) 
FROM channel 
WHERE Owner = 'CCTV'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer What is the total share (in percent) of all the channels owned by CCTV?*/


SELECT SUM(Share_in_percent) 
FROM channel 
WHERE Owner = 'CCTV'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Find the names of the channels that are broadcast in the morning.*/


SELECT c.Name 
FROM channel c 
INNER JOIN broadcast b 
ON c.Channel_ID = b.Channel_ID 
WHERE b.Time_of_day = 'morning'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Which channels are broadcast in the morning? Give me the channel names.*/


SELECT c.Name 
FROM channel c 
INNER JOIN broadcast b 
ON c.Channel_ID = b.Channel_ID 
WHERE b.Time_of_day = 'morning'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer what are the names of the channels that broadcast in both morning and night?*/


SELECT c.Name 
FROM channel c 
INNER JOIN broadcast b ON c.Channel_ID = b.Channel_ID 
WHERE b.Time_of_day IN ('morning', 'night') 
GROUP BY c.Name 
HAVING COUNT(DISTINCT b.Time_of_day) = 2

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Which channels broadcast both in the morning and at night? Give me the channel names.*/


SELECT c.Name 
FROM channel c 
INNER JOIN broadcast b ON c.Channel_ID = b.Channel_ID 
WHERE b.Time_of_day IN ('morning', 'night') 
GROUP BY c.Name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer how many programs are broadcast in each time section of the day?*/


SELECT Time_of_day, COUNT(Program_ID) AS Number_of_Programs
FROM broadcast
GROUP BY Time_of_day

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Count the number of programs broadcast for each time section of a day.*/


SELECT Time_of_day, COUNT(Program_ID) 
FROM broadcast 
GROUP BY Time_of_day

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to find the number of different programs that are broadcast during night time.*/


SELECT COUNT(DISTINCT b.Program_ID) 
FROM broadcast b 
INNER JOIN program p ON b.Program_ID = p.Program_ID 
WHERE b.Time_of_day = 'night'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer How many distinct programs are broadcast at "Night" time?*/


SELECT COUNT(DISTINCT Program_ID) 
FROM broadcast 
WHERE Time_of_day = 'Night'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Find the names of programs that are never broadcasted in the morning.*/


SELECT Name 
FROM program 
WHERE Program_ID NOT IN (SELECT Program_ID 
                         FROM broadcast 
                         WHERE Time_of_day = 'morning')

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Which programs are never broadcasted in the morning? Give me the names of the programs.*/


SELECT Name 
FROM program 
WHERE Program_ID NOT IN (SELECT Program_ID 
                        FROM broadcast 
                        WHERE Time_of_day = 'morning')

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to find the program owners that have some programs in both morning and night time.*/


SELECT DISTINCT p.Owner 
FROM program p 
INNER JOIN broadcast b ON p.Program_ID = b.Program_ID 
WHERE b.Time_of_day IN ('morning', 'night') 
GROUP BY p.Owner 
HAVING COUNT(DISTINCT b.Time_of_day) = 2

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer Who are the owners of the programs that broadcast both in the morning and at night?*/


SELECT DISTINCT p.Owner 
FROM program p 
INNER JOIN broadcast b ON p.Program_ID = b.Program_ID 
WHERE b.Time_of_day IN ('morning', 'night') 
GROUP BY p.Owner

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to List all program origins in the alphabetical order.*/


SELECT Origin 
FROM program 
ORDER BY Origin ASC

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer What is the list of program origins ordered alphabetically?*/


SELECT Origin 
FROM program 
ORDER BY Origin ASC

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer what is the number of different channel owners?*/


SELECT COUNT(DISTINCT Owner) 
FROM channel

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Count the number of distinct channel owners.*/


SELECT COUNT(DISTINCT Owner) 
FROM channel

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to find the names of programs whose origin is not in Beijing.*/


SELECT Name FROM program WHERE Origin != 'Beijing'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Which programs' origins are not "Beijing"? Give me the program names.*/


SELECT Name 
FROM program 
WHERE Origin != 'Beijing'

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer What are the names of the channels owned by CCTV or HBS?*/


SELECT Name 
FROM channel 
WHERE Owner IN ('CCTV', 'HBS')

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to List the names of all the channels owned by either CCTV or HBS*/


SELECT Name 
FROM channel 
WHERE Owner IN ('CCTV', 'HBS')

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Find the total rating ratio for each channel owner.*/


SELECT c.Owner, SUM(b.Rating_in_percent) AS Total_Rating_Ratio
FROM channel c
INNER JOIN broadcast b ON c.Channel_ID = b.Channel_ID
GROUP BY c.Owner

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to answer What is the total rating of channel for each channel owner?*/


SELECT c.Owner, SUM(c.Rating_in_percent) AS Total_Rating
FROM channel c
GROUP BY c.Owner

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Find the name of the program that is broadcast most frequently.*/


SELECT program.Name
FROM program
INNER JOIN broadcast ON program.Program_ID = broadcast.Program_ID
GROUP BY program.Name
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

program(Program_ID, Name, Origin, Launch, Owner)
channel(Channel_ID, Name, Owner, Share_in_percent, Rating_in_percent)
broadcast(Channel_ID, Program_ID, Time_of_day)
broadcast_share(Channel_ID, Program_ID, Date, Share_in_percent)

Create a SQL request to Which program is broadcast most frequently? Give me the program name.*/


SELECT Name 
FROM program 
WHERE Program_ID IN (SELECT Program_ID 
                     FROM broadcast 
                     GROUP BY Program_ID 
                     ORDER BY COUNT(*) DESC 
                     LIMIT 1)

