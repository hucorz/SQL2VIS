/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to answer How many books are there?*/


SELECT COUNT(*) FROM book

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to List the writers of the books in ascending alphabetical order.*/


SELECT Writer 
FROM book 
ORDER BY Writer ASC

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to List the titles of the books in ascending order of issues.*/


SELECT Title 
FROM book 
ORDER BY Issues ASC

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to answer What are the titles of the books whose writer is not "Elaine Lee"?*/


SELECT Title 
FROM book 
WHERE Writer != 'Elaine Lee'

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to answer What are the title and issues of the books?*/


SELECT Title, Issues FROM book

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to answer What are the dates of publications in descending order of price?*/


SELECT Publication_Date 
FROM publication 
ORDER BY Price DESC

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to answer What are the distinct publishers of publications with price higher than 5000000?*/


SELECT DISTINCT Publisher 
FROM publication 
WHERE Price > 5000000

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to List the publisher of the publication with the highest price.*/


SELECT Publisher 
FROM publication 
ORDER BY Price DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to List the publication dates of publications with 3 lowest prices.*/


SELECT Publication_Date 
FROM publication 
ORDER BY Price ASC 
LIMIT 3

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to Show the title and publication dates of books.*/


SELECT b.Title, p.Publication_Date 
FROM book b 
INNER JOIN publication p 
ON b.Book_ID = p.Book_ID

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to Show writers who have published a book with price more than 4000000.*/


SELECT Writer 
FROM book 
INNER JOIN publication 
ON book.Book_ID = publication.Book_ID 
WHERE Price > 4000000

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to Show the titles of books in descending order of publication price.*/


SELECT Title 
FROM book 
INNER JOIN publication 
ON book.Book_ID = publication.Book_ID 
ORDER BY Price DESC

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to Show publishers that have more than one publication.*/


SELECT Publisher 
FROM publication 
GROUP BY Publisher 
HAVING COUNT(Publication_ID) > 1

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to Show different publishers together with the number of publications they have.*/


SELECT Publisher, COUNT(Publication_ID) AS Number_of_Publications
FROM publication
GROUP BY Publisher

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to Please show the most common publication date.*/


SELECT Publication_Date, COUNT(*) AS Frequency 
FROM publication 
GROUP BY Publication_Date 
ORDER BY Frequency DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to List the writers who have written more than one book.*/


SELECT Writer 
FROM book 
GROUP BY Writer 
HAVING COUNT(Book_ID) > 1

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to List the titles of books that are not published.*/


SELECT Title 
FROM book 
WHERE Book_ID NOT IN (SELECT Book_ID FROM publication)

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to Show the publishers that have publications with price higher than 10000000 and publications with price lower than 5000000.*/


SELECT Publisher 
FROM publication 
WHERE Price > 10000000 OR Price < 5000000

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to answer What is the number of distinct publication dates?*/


SELECT COUNT(DISTINCT Publication_Date) 
FROM publication

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to answer How many distinct publication dates are there in our record?*/


SELECT COUNT(DISTINCT Publication_Date) FROM publication

/*Here are Mysql tables, with their properties:

publication(Publication_ID, Book_ID, Publisher, Publication_Date, Price)
book(Book_ID, Title, Issues, Writer)

Create a SQL request to Show the prices of publications whose publisher is either "Person" or "Wiley"*/


SELECT Price 
FROM publication 
WHERE Publisher IN ('Person', 'Wiley')

