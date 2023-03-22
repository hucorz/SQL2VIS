/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to answer How many editors are there?*/


SELECT COUNT(Editor_ID) FROM editor

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to List the names of editors in ascending order of age.*/


SELECT Name, Age 
FROM editor 
ORDER BY Age ASC

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to answer What are the names and ages of editors?*/


SELECT Name, Age FROM editor

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to List the names of editors who are older than 25.*/


SELECT Name 
FROM editor 
WHERE Age > 25

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to Show the names of editors of age either 24 or 25.*/


SELECT Name 
FROM editor 
WHERE Age IN (24, 25)

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to answer What is the name of the youngest editor?*/


SELECT Name 
FROM editor 
ORDER BY Age ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to What are the different ages of editors? Show each age along with the number of editors of that age.*/


SELECT Age, COUNT(Editor_ID) AS Number_of_Editors
FROM editor
GROUP BY Age

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to Please show the most common age of editors.*/


SELECT Age, COUNT(*) AS Count
FROM editor
GROUP BY Age
ORDER BY Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to Show the distinct themes of journals.*/


SELECT DISTINCT Theme FROM journal

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to Show the names of editors and the theme of journals for which they serve on committees.*/


SELECT e.Name, j.Theme 
FROM editor e 
INNER JOIN journal_committee jc ON e.Editor_ID = jc.Editor_ID 
INNER JOIN journal j ON jc.Journal_ID = j.Journal_ID

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to For each journal_committee, find the editor name and the journal theme.*/


SELECT e.Name, j.Theme 
FROM editor e 
INNER JOIN journal_committee jc ON e.Editor_ID = jc.Editor_ID 
INNER JOIN journal j ON jc.Journal_ID = j.Journal_ID

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to Show the names and ages of editors and the theme of journals for which they serve on committees, in ascending alphabetical order of theme.*/


SELECT e.Name, e.Age, j.Theme 
FROM editor e 
INNER JOIN journal_committee jc ON e.Editor_ID = jc.Editor_ID 
INNER JOIN journal j ON jc.Journal_ID = j.Journal_ID 
ORDER BY j.Theme ASC

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to Show the names of editors that are on the committee of journals with sales bigger than 3000.*/


SELECT e.Name 
FROM editor e 
INNER JOIN journal_committee jc ON e.Editor_ID = jc.Editor_ID 
INNER JOIN journal j ON jc.Journal_ID = j.Journal_ID 
WHERE j.Sales > 3000

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to Show the id, name of each editor and the number of journal committees they are on.*/


SELECT e.Editor_ID, e.Name, COUNT(jc.Editor_ID) AS 'Number of Journal Committees'
FROM editor e
INNER JOIN journal_committee jc ON e.Editor_ID = jc.Editor_ID
GROUP BY e.Editor_ID, e.Name

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to Show the names of editors that are on at least two journal committees.*/


SELECT Name 
FROM editor 
INNER JOIN journal_committee 
ON editor.Editor_ID = journal_committee.Editor_ID 
GROUP BY Name 
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to List the names of editors that are not on any journal committee.*/


SELECT Name 
FROM editor 
WHERE Editor_ID NOT IN (SELECT Editor_ID FROM journal_committee)

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to List the date, theme and sales of the journal which did not have any of the listed editors serving on committee.*/


SELECT j.Date, j.Theme, j.Sales
FROM journal j
LEFT JOIN journal_committee jc ON j.Journal_ID = jc.Journal_ID
WHERE jc.Editor_ID IS NULL

/*Here are Mysql tables, with their properties:

journal(Journal_ID, Date, Theme, Sales)
editor(Editor_ID, Name, Age)
journal_committee(Editor_ID, Journal_ID, Work_Type)

Create a SQL request to answer What is the average sales of the journals that have an editor whose work type is 'Photo'?*/


SELECT AVG(j.Sales)
FROM journal j
INNER JOIN journal_committee jc ON j.Journal_ID = jc.Journal_ID
INNER JOIN editor e ON jc.Editor_ID = e.Editor_ID
WHERE jc.Work_Type = 'Photo'

