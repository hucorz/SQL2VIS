/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Report the name of all campuses in Los Angeles county.*/


SELECT Campus 
FROM Campuses 
WHERE County = 'Los Angeles'

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campuses are located in the county of Los Angeles?*/


SELECT Campus 
FROM Campuses 
WHERE County = 'Los Angeles'

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What are the names of all campuses located at Chico?*/


SELECT Campus 
FROM Campuses 
WHERE Location = 'Chico'

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campuses are located in Chico?*/


SELECT Campus 
FROM Campuses 
WHERE Location = 'Chico'

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Find all the campuses opened in 1958.*/


SELECT * FROM Campuses WHERE Year = 1958

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What are the campuses that opened in 1958?*/


SELECT Campus 
FROM Campuses 
WHERE Year = 1958

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Find the name of the campuses opened before 1800.*/


SELECT Campus 
FROM Campuses 
WHERE Year < 1800

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campuses opened before 1800?*/


SELECT Campus 
FROM Campuses 
WHERE Year < 1800

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer Which campus was opened between 1935 and 1939?*/


SELECT Campus 
FROM Campuses 
WHERE Year BETWEEN 1935 AND 1939

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campuses opened between 1935 and 1939?*/


SELECT Campus 
FROM Campuses 
WHERE Year BETWEEN 1935 AND 1939

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Find the name of the campuses that is in Northridge, Los Angeles or in San Francisco, San Francisco.*/


SELECT Campus 
FROM Campuses 
WHERE Location IN ('Northridge, Los Angeles', 'San Francisco, San Francisco')

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campuses are located in Northridge, Los Angeles or in San Francisco, San Francisco?*/


SELECT Campus 
FROM Campuses 
WHERE Location IN ('Northridge, Los Angeles', 'San Francisco, San Francisco')

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the campus fee of "San Jose State University" in year 1996?*/


SELECT CampusFee 
FROM csu_fees 
WHERE Campus = 'San Jose State University' 
AND Year = 1996

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the campus fee for San Jose State University in 1996?*/


SELECT CampusFee 
FROM csu_fees 
WHERE Campus = 'San Jose State University' 
AND Year = 1996

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the campus fee of "San Francisco State University" in year 1996?*/


SELECT CampusFee 
FROM csu_fees 
WHERE Campus = 'San Francisco State University' 
AND Year = 1996

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the campus fee for San Francisco State University in 1996?*/


SELECT CampusFee 
FROM csu_fees 
WHERE Campus = 'San Francisco State University' 
AND Year = 1996

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Find the count of universities whose campus fee is greater than the average campus fee.*/


SELECT COUNT(*) 
FROM csu_fees 
WHERE CampusFee > (SELECT AVG(CampusFee) FROM csu_fees)

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many universities have a campus fee higher than average?*/


SELECT COUNT(*) 
FROM csu_fees 
WHERE CampusFee > (SELECT AVG(CampusFee) FROM csu_fees)

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Find the count of universities whose campus fee is greater than the average campus fee.*/


SELECT COUNT(*) 
FROM csu_fees 
WHERE CampusFee > (SELECT AVG(CampusFee) FROM csu_fees)

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many universities have a campus fee greater than the average?*/


SELECT COUNT(*) 
FROM csu_fees 
WHERE CampusFee > (SELECT AVG(CampusFee) FROM csu_fees)

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer Which university is in Los Angeles county and opened after 1950?*/


SELECT Campus 
FROM Campuses 
WHERE Location = 'Los Angeles' 
AND County = 'Los Angeles' 
AND Year > 1950

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campuses are located in Los Angeles county and opened after 1950?*/


SELECT Campus 
FROM Campuses 
WHERE County = 'Los Angeles' 
AND Year > 1950

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer Which year has the most degrees conferred?*/


SELECT Year, SUM(Degrees) AS TotalDegrees
FROM degrees
GROUP BY Year
ORDER BY TotalDegrees DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer In what year was the most degrees conferred?*/


SELECT Year, SUM(Degrees) AS TotalDegrees
FROM degrees
GROUP BY Year
ORDER BY TotalDegrees DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer Which campus has the most degrees conferred in all times?*/


SELECT Campus, SUM(Degrees) AS TotalDegrees
FROM degrees
GROUP BY Campus
ORDER BY TotalDegrees DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campus has the most degrees  conferrred over its entire existence?*/


SELECT Campus, SUM(Degrees) AS TotalDegrees
FROM degrees
GROUP BY Campus
ORDER BY TotalDegrees DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer Which campus has the most faculties in year 2003?*/


SELECT Campus, MAX(Faculty) 
FROM faculty 
WHERE Year = 2003 
GROUP BY Campus

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campus has the most faculties in 2003?*/


SELECT Campus, MAX(Faculty) 
FROM faculty 
WHERE Year = 2003 
GROUP BY Campus

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Find the average fee on a CSU campus in 1996*/


SELECT AVG(CampusFee)
FROM csu_fees
WHERE Year = 1996

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the average fee for a CSU campus in the year of 1996?*/


SELECT AVG(CampusFee)
FROM csu_fees
WHERE Year = 1996

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the average fee on a CSU campus in 2005?*/


SELECT AVG(CampusFee)
FROM csu_fees
WHERE Year = 2005

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the average fee for a CSU campus in the year of 2005?*/


SELECT AVG(CampusFee)
FROM csu_fees
WHERE Year = 2005

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to report the total number of degrees granted between 1998 and 2002.*/


SELECT SUM(Degrees) 
FROM degrees 
WHERE Year BETWEEN 1998 AND 2002

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer how many degrees were conferred between 1998 and 2002?*/


SELECT SUM(Degrees) 
FROM degrees 
WHERE Year BETWEEN 1998 AND 2002

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to For each Orange county campus, report the number of degrees granted after 2000.*/


SELECT c.Campus, SUM(d.Degrees) AS Degrees_Granted
FROM Campuses c
INNER JOIN degrees d ON c.Campus = d.Campus
WHERE c.County = 'Orange' AND d.Year > 2000
GROUP BY c.Campus

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the total number of degrees granted after 2000 for each Orange county campus?*/


SELECT c.Campus, SUM(d.Degrees) AS Total_Degrees
FROM Campuses c
INNER JOIN degrees d ON c.Campus = d.Campus
WHERE c.County = 'Orange' AND d.Year > 2000
GROUP BY c.Campus

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Find the names of the campus which has more faculties in 2002 than every campus in Orange county.*/


SELECT Campus 
FROM faculty 
WHERE Year = 2002 
AND Faculty > (SELECT MAX(Faculty) 
               FROM faculty 
               WHERE Year = 2002 
               AND Campus IN (SELECT Campus 
                               FROM Campuses 
                               WHERE County = 'Orange')) 

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What are the names of the campus that have more faculties in 2002 than the maximum number in Orange county?*/


SELECT Campus 
FROM campuses 
WHERE County = 'Orange' 
AND Year = 2002 
AND Faculty > (SELECT MAX(Faculty) 
               FROM campuses 
               WHERE County = 'Orange' 
               AND Year = 2002) 

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campus had more than 400 total enrollment but more than 200 full time enrollment in year 1956?*/


SELECT Campus 
FROM enrollments 
WHERE Year = 1956 
AND TotalEnrollment_AY > 400 
AND FTE_AY > 200

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campus started in year 1956, has more than 200 full time students, and more than 400 students enrolled?*/


SELECT Campus 
FROM enrollments 
WHERE Year = 1956 
AND TotalEnrollment_AY > 400 
AND FTE_AY > 200

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many campuses are there in Los Angeles county?*/


SELECT COUNT(*) 
FROM Campuses 
WHERE County = 'Los Angeles'

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many campuses exist are in the county of LA?*/


SELECT COUNT(*) 
FROM Campuses 
WHERE County = 'LA'

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to List the campuses in Los Angeles county.*/


SELECT Campus 
FROM Campuses 
WHERE County = 'Los Angeles'

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What campuses are in Los Angeles county?*/


SELECT Campus 
FROM Campuses 
WHERE County = 'Los Angeles'

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many degrees were conferred in "San Jose State University" in 2000?*/


SELECT Degrees 
FROM degrees 
WHERE Campus = 'San Jose State University' 
AND Year = 2000

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many degrees were conferred at San Jose State University in 2000?*/


SELECT Degrees 
FROM degrees 
WHERE Campus = 'San Jose State University' 
AND Year = 2000

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to What are the degrees conferred in "San Francisco State University" in 2001.*/


SELECT Degrees 
FROM degrees 
WHERE Campus = 'San Francisco State University' 
AND Year = 2001

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What degrees were conferred in San Francisco State University in the year 2001?*/


SELECT Degrees 
FROM degrees 
WHERE Campus = 'San Francisco State University' 
AND Year = 2001

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many faculty is there in total in the year of 2002?*/


SELECT SUM(Faculty) 
FROM faculty 
WHERE Year = 2002

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many faculty, in total, are there in the year 2002?*/


SELECT SUM(Faculty) 
FROM faculty 
WHERE Year = 2002

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the number of faculty lines in campus "Long Beach State University" in 2002?*/


SELECT Faculty 
FROM faculty 
WHERE Campus = 'Long Beach State University' 
AND Year = 2002

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the number of faculty at Long Beach State University in 2002?*/


SELECT Faculty 
FROM faculty 
WHERE Campus = 'Long Beach State University' 
AND Year = 2002

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many faculty lines are there in "San Francisco State University" in year 2004?*/


SELECT COUNT(Faculty) 
FROM faculty 
WHERE Campus = 'San Francisco State University' 
AND Year = 2004

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many faculty lines are there at San Francisco State University in 2004?*/


SELECT COUNT(Faculty) 
FROM faculty 
WHERE Campus = 'San Francisco State University' 
AND Year = 2004

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to List the campus that have between 600 and 1000 faculty lines in year 2004.*/


SELECT Campus 
FROM faculty 
WHERE Year = 2004 
AND Faculty BETWEEN 600 AND 1000

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What are the campuses that had between 600 and 1000 faculty members in 2004?*/


SELECT Campus 
FROM faculty 
WHERE Year = 2004 
AND Faculty BETWEEN 600 AND 1000

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many faculty lines are there in the university that conferred the most number of degrees in year 2002?*/


SELECT COUNT(*) 
FROM faculty 
WHERE Campus IN (SELECT Campus 
                  FROM degrees 
                  WHERE Year = 2002 
                  ORDER BY Degrees DESC 
                  LIMIT 1) 
AND Year = 2002

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many faculty members did the university that conferred the most degrees in 2002 have?*/


SELECT COUNT(Faculty) 
FROM faculty 
INNER JOIN degrees ON faculty.Campus = degrees.Campus 
WHERE degrees.Year = 2002 
ORDER BY degrees.Degrees DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many faculty lines are there in the university that conferred the least number of degrees in year 2001?*/


SELECT COUNT(*) 
FROM faculty 
WHERE Year = 2001 
AND Campus = (SELECT Campus 
              FROM degrees 
              WHERE Year = 2001 
              ORDER BY Degrees ASC 
              LIMIT 1)

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many faculty members are at the university that gave the least number of degrees in 2001?*/


SELECT MIN(Degrees) AS Least_Degrees, Faculty 
FROM campuses 
INNER JOIN degrees ON campuses.Id = degrees.Campus 
INNER JOIN faculty ON campuses.Id = faculty.Campus 
WHERE Year = 2001 
GROUP BY Faculty

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many undergraduates are there in "San Jose State University" in year 2004?*/


SELECT Undergraduate 
FROM discipline_enrollments 
WHERE Campus = 'San Jose State University' 
AND Year = 2004

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to How many undergraduates are there at San Jose State*/
 University in 2020?

SELECT Undergraduate 
FROM discipline_enrollments 
WHERE Campus = 'San Jose State University' 
AND Year = 2020

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the number of graduates in "San Francisco State University" in year 2004?*/


SELECT SUM(Graduate) 
FROM discipline_enrollments 
WHERE Campus = 'San Francisco State University' 
AND Year = 2004

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many people graduated from San Francisco State University in 2004?*/


SELECT SUM(Degrees) 
FROM degrees 
WHERE Campus = 'San Francisco State University' 
AND Year = 2004

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the campus fee of "San Francisco State University" in year 2000?*/


SELECT CampusFee 
FROM csu_fees 
WHERE Campus = 'San Francisco State University' 
AND Year = 2000

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer In the year 2000, what is the campus fee for San Francisco State University?*/


SELECT CampusFee 
FROM csu_fees 
WHERE Campus = 'San Francisco State University' 
AND Year = 2000

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to Find the campus fee of "San Jose State University" in year 2000.*/


SELECT CampusFee 
FROM csu_fees 
WHERE Campus = 'San Jose State University' 
AND Year = 2000

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the campus fee in the year 2000 for San Jose State University?*/


SELECT CampusFee 
FROM csu_fees 
WHERE Campus = 'San Jose State University' 
AND Year = 2000

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer How many CSU campuses are there?*/


SELECT COUNT(*) FROM Campuses

/*Here are Mysql tables, with their properties:

Campuses(Id, Campus, Location, County, Year)
csu_fees(Campus, Year, CampusFee)
degrees(Year, Campus, Degrees)
discipline_enrollments(Campus, Discipline, Year, Undergraduate, Graduate)
enrollments(Campus, Year, TotalEnrollment_AY, FTE_AY)
faculty(Campus, Year, Faculty)

Create a SQL request to answer What is the total number of campuses?*/


SELECT COUNT(*) FROM Campuses

