/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer How many candidates are there?*/


SELECT COUNT(*) FROM candidate

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Count the number of candidates.*/


SELECT COUNT(*) FROM candidate

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer Which poll resource provided the most number of candidate information?*/


SELECT Poll_Source, COUNT(*) AS Total_Candidates
FROM candidate
GROUP BY Poll_Source
ORDER BY Total_Candidates DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Return the poll resource associated with the most candidates.*/


SELECT Poll_Source, COUNT(Candidate_ID) AS Total_Candidates 
FROM candidate 
GROUP BY Poll_Source 
ORDER BY Total_Candidates DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer what are the top 3 highest support rates?*/


SELECT Candidate_ID, Support_rate 
FROM candidate 
ORDER BY Support_rate DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Return the top 3 greatest support rates.*/


SELECT Candidate_ID, Support_rate 
FROM candidate 
ORDER BY Support_rate DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Find the id of the candidate who got the lowest oppose rate.*/


SELECT Candidate_ID 
FROM candidate 
ORDER BY Oppose_rate ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What is the id of the candidate with the lowest oppose rate?*/


SELECT Candidate_ID 
FROM candidate 
ORDER BY Oppose_rate ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Please list support, consider, and oppose rates for each candidate in ascending order by unsure rate.*/


SELECT Candidate_ID, Support_rate, Consider_rate, Oppose_rate, Unsure_rate
FROM candidate
ORDER BY Unsure_rate ASC

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What are the support, consider, and oppose rates of each candidate, ordered ascending by their unsure rate?*/


SELECT Candidate_ID, Support_rate, Consider_rate, Oppose_rate, Unsure_rate
FROM candidate
ORDER BY Unsure_rate ASC

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer which poll source does the highest oppose rate come from?*/


SELECT Poll_Source, MAX(Oppose_rate) 
FROM candidate 
GROUP BY Poll_Source

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Return the poll source corresponding to the candidate who has the oppose rate.*/


SELECT Poll_Source FROM candidate WHERE Oppose_rate IS NOT NULL

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to List all people names in the order of their date of birth from old to young.*/


SELECT Name 
FROM people 
ORDER BY Date_of_Birth ASC

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What are the names of all people, ordered by their date of birth?*/


SELECT Name 
FROM people 
ORDER BY Date_of_Birth

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Find the average height and weight for all males (sex is M).*/


SELECT AVG(Height), AVG(Weight)
FROM people
WHERE Sex = 'M'

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What are the average height and weight across males (sex is M)?*/


SELECT AVG(Height), AVG(Weight)
FROM people
WHERE Sex = 'M'

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to find the names of people who are taller than 200 or lower than 190.*/


SELECT Name 
FROM people 
WHERE Height > 200 OR Height < 190

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What are the names of people who have a height greater than 200 or less than 190?*/


SELECT Name 
FROM people 
WHERE Height > 200 OR Height < 190

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Find the average and minimum weight for each gender.*/


SELECT Sex, AVG(Weight) AS Average_Weight, MIN(Weight) AS Minimum_Weight
FROM people
GROUP BY Sex

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What are the average and minimum weights for people of each sex?*/


SELECT Sex, AVG(Weight) AS Average_Weight, MIN(Weight) AS Minimum_Weight
FROM people
GROUP BY Sex

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Find the name and gender of the candidate who got the highest support rate.*/


SELECT Name, Sex 
FROM people 
INNER JOIN candidate 
ON people.People_ID = candidate.People_ID 
WHERE Support_rate = (SELECT MAX(Support_rate) FROM candidate) 
ORDER BY Support_rate DESC

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What is the name and sex of the candidate with the highest support rate?*/


SELECT Name, Sex 
FROM people 
INNER JOIN candidate 
ON people.People_ID = candidate.People_ID 
ORDER BY Support_rate DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Find the name of the candidates whose oppose percentage is the lowest for each sex.*/


SELECT c.People_ID, p.Name, c.Oppose_rate 
FROM candidate c 
INNER JOIN people p ON c.People_ID = p.People_ID 
WHERE c.Oppose_rate = (SELECT MIN(Oppose_rate) 
                       FROM candidate 
                       WHERE People_ID IN (SELECT People_ID 
                                          FROM people 
                                          WHERE Sex = p.Sex)) 
ORDER BY p.Sex

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer For each sex, what is the name and sex of the candidate with the oppose rate for their sex?*/


SELECT people.Name, people.Sex, candidate.Oppose_rate 
FROM people 
INNER JOIN candidate 
ON people.People_ID = candidate.People_ID 
WHERE people.Sex = 'Male' OR people.Sex = 'Female' 
ORDER BY candidate.Oppose_rate DESC

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to which gender got the highest average uncertain ratio.*/


SELECT Sex, AVG(Unsure_rate) AS Avg_Unsure_Rate
FROM candidate
INNER JOIN people ON candidate.People_ID = people.People_ID
GROUP BY Sex
ORDER BY Avg_Unsure_Rate DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What is the sex of the candidate who had the highest unsure rate?*/


SELECT Sex 
FROM people 
INNER JOIN candidate 
ON people.People_ID = candidate.People_ID 
WHERE candidate.Unsure_rate = (SELECT MAX(Unsure_rate) FROM candidate) 

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to what are the names of people who did not participate in the candidate election.*/


SELECT Name 
FROM people 
WHERE People_ID NOT IN (SELECT People_ID FROM candidate)

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Give the names of people who did not participate in the candidate election.*/


SELECT Name 
FROM people 
WHERE People_ID NOT IN (SELECT People_ID FROM candidate)

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Find the names of the candidates whose support percentage is lower than their oppose rate.*/


SELECT Name 
FROM candidate c 
INNER JOIN people p 
ON c.People_ID = p.People_ID 
WHERE c.Support_rate < c.Oppose_rate

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What are the names of candidates who have a lower support rate than oppose rate?*/


SELECT Name 
FROM candidate 
INNER JOIN people ON candidate.People_ID = people.People_ID 
WHERE Support_rate < Oppose_rate

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer how many people are there whose weight is higher than 85 for each gender?*/


SELECT Sex, COUNT(*) AS 'Number of People'
FROM people
WHERE Weight > 85
GROUP BY Sex

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to Count the number of people of each sex who have a weight higher than 85.*/


SELECT Sex, COUNT(*) 
FROM people 
WHERE Weight > 85 
GROUP BY Sex

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to find the highest support percentage, lowest consider rate and oppose rate of all candidates.*/


SELECT MAX(Support_rate) AS Highest_Support_Rate, MIN(Consider_rate) AS Lowest_Consider_Rate, MIN(Oppose_rate) AS Lowest_Oppose_Rate 
FROM candidate

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer Return the maximum support rate, minimum consider rate, and minimum oppose rate across all candidates?*/


SELECT MAX(Support_rate) AS Max_Support_Rate, MIN(Consider_rate) AS Min_Consider_Rate, MIN(Oppose_rate) AS Min_Oppose_Rate
FROM candidate

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to list all female (sex is F) candidate names in the alphabetical order.*/


SELECT Name 
FROM people 
INNER JOIN candidate 
ON people.People_ID = candidate.People_ID 
WHERE Sex = 'F' 
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What are the names of all female candidates in alphabetical order (sex is F)?*/


SELECT Name 
FROM people 
INNER JOIN candidate 
ON people.People_ID = candidate.People_ID 
WHERE Sex = 'F' 
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to find the name of people whose height is lower than the average.*/


SELECT Name 
FROM people 
WHERE Height < (SELECT AVG(Height) FROM people)

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What are the names of people who are shorter than average?*/


SELECT Name
FROM people
WHERE Height < (SELECT AVG(Height) FROM people)

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to List all info about all people.*/


SELECT People_ID, Sex, Name, Date_of_Birth, Height, Weight FROM people

/*Here are Mysql tables, with their properties:

candidate(Candidate_ID, People_ID, Poll_Source, Date, Support_rate, Consider_rate, Oppose_rate, Unsure_rate)
people(People_ID, Sex, Name, Date_of_Birth, Height, Weight)

Create a SQL request to answer What is all the information about all people?*/


SELECT * FROM people

