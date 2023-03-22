/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer How many aircrafts do we have?*/


SELECT COUNT(*) FROM aircraft

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer How many aircrafts exist in the database?*/


SELECT COUNT(*) FROM aircraft

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show name and distance for all aircrafts.*/


SELECT name, distance FROM aircraft

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names and distances for all airplanes?*/


SELECT name, distance FROM aircraft

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show ids for all aircrafts with more than 1000 distance.*/


SELECT aid FROM aircraft WHERE distance > 1000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the ids of all aircrafts that can cover a distance of more than 1000?*/


SELECT aid FROM aircraft WHERE distance > 1000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer How many aircrafts have distance between 1000 and 5000?*/


SELECT COUNT(*) 
FROM aircraft 
WHERE distance BETWEEN 1000 AND 5000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the count of aircrafts that have a distance between 1000 and 5000?*/


SELECT COUNT(*) 
FROM aircraft 
WHERE distance BETWEEN 1000 AND 5000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name and distance for aircraft with id 12?*/


SELECT name, distance FROM aircraft WHERE aid = 12

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name and distance for the aircraft that has an id of 12?*/


SELECT name, distance FROM aircraft WHERE aid = 12

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to What is the minimum, average, and maximum distance of all aircrafts.*/


SELECT MIN(distance) AS min_distance, AVG(distance) AS avg_distance, MAX(distance) AS max_distance
FROM aircraft

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Return the minimum, average and maximum distances traveled across all aircrafts.*/


SELECT MIN(aircraft.distance) AS min_distance, AVG(aircraft.distance) AS avg_distance, MAX(aircraft.distance) AS max_distance
FROM aircraft

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the id and name of the aircraft with the maximum distance.*/


SELECT aid, name FROM aircraft WHERE distance = (SELECT MAX(distance) FROM aircraft)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the id and name of the aircraft that can cover the maximum distance?*/


SELECT aid, name FROM aircraft ORDER BY distance DESC LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the name of aircrafts with top three lowest distances.*/


SELECT name 
FROM aircraft 
ORDER BY distance ASC 
LIMIT 3

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to What are the aircrafts with top 3 shortest lengthes? List their names.*/


SELECT name 
FROM aircraft 
ORDER BY distance ASC 
LIMIT 3

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show names for all aircrafts with distances more than the average.*/


SELECT name 
FROM aircraft 
WHERE distance > (SELECT AVG(distance) FROM aircraft)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names of all aircrafts that can cover more distances than average?*/


SELECT name 
FROM aircraft 
WHERE distance > (SELECT AVG(distance) FROM aircraft)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer How many employees do we have?*/


SELECT COUNT(*) FROM employee

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the number of employees?*/


SELECT COUNT(*) FROM employee

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show name and salary for all employees sorted by salary.*/


SELECT name, salary FROM employee ORDER BY salary

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name and salary of all employees in order of salary?*/


SELECT name, salary FROM employee ORDER BY salary

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show ids for all employees with at least 100000 salary.*/


SELECT eid FROM employee WHERE salary >= 100000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the id of every employee who has at least a salary of  100000?*/


SELECT eid FROM employee WHERE salary >= 100000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer How many employees have salary between 100000 and 200000?*/


SELECT COUNT(*) 
FROM employee 
WHERE salary BETWEEN 100000 AND 200000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the number of employees that have a salary between 100000 and 200000?*/


SELECT COUNT(*) 
FROM employee 
WHERE salary BETWEEN 100000 AND 200000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name and salary for employee with id 242518965?*/


SELECT name, salary FROM employee WHERE eid = 242518965

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name and salary of the employee with the id 242518965?*/


SELECT name, salary FROM employee WHERE eid = 242518965

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to What is average and maximum salary of all employees.*/


SELECT AVG(salary) AS Average_Salary, MAX(salary) AS Maximum_Salary FROM employee

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the average and largest salary of all employees?*/


SELECT AVG(salary) AS Average_Salary, MAX(salary) AS Largest_Salary FROM employee

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the id and name of the employee with maximum salary.*/


SELECT eid, name FROM employee ORDER BY salary DESC LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the id and name of the employee with the highest salary?*/


SELECT eid, name FROM employee ORDER BY salary DESC LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the name of employees with three lowest salaries.*/


SELECT name FROM employee ORDER BY salary ASC LIMIT 3

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name of the 3 employees who get paid the least?*/


SELECT name 
FROM employee 
ORDER BY salary ASC 
LIMIT 3

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show names for all employees with salary more than the average.*/


SELECT name 
FROM employee 
WHERE salary > (SELECT AVG(salary) FROM employee)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names of all employees who have a salary higher than average?*/


SELECT name 
FROM employee 
WHERE salary > (SELECT AVG(salary) FROM employee)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the id and salary of Mark Young.*/


SELECT eid, salary FROM employee WHERE name = 'Mark Young'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the id and salary of the employee named Mark Young?*/


SELECT eid, salary FROM employee WHERE name = 'Mark Young'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer How many flights do we have?*/


SELECT COUNT(*) FROM flight

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the number of flights?*/


SELECT COUNT(*) FROM flight

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show flight number, origin, destination of all flights in the alphabetical order of the departure cities.*/


SELECT flno, origin, destination 
FROM flight 
ORDER BY origin ASC

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the flight number, origin, and destination for all flights in alphabetical order by departure cities?*/


SELECT flno, origin, destination 
FROM flight 
ORDER BY origin ASC

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show all flight number from Los Angeles.*/


SELECT flno 
FROM flight 
WHERE origin = 'Los Angeles'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the numbers of all flights coming from Los Angeles?*/


SELECT flno 
FROM flight 
WHERE origin = 'Los Angeles'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show origins of all flights with destination Honolulu.*/


SELECT origin 
FROM flight 
WHERE destination = 'Honolulu'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the origins of all flights that are headed to Honolulu?*/


SELECT origin 
FROM flight 
WHERE destination = 'Honolulu'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show me the departure date and arrival date for all flights from Los Angeles to Honolulu.*/


SELECT departure_date, arrival_date 
FROM flight 
WHERE origin = 'Los Angeles' AND destination = 'Honolulu'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the departure and arrival dates of all flights from LA to Honolulu?*/


SELECT departure_date, arrival_date 
FROM flight 
WHERE origin = 'LA' AND destination = 'Honolulu'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show flight number for all flights with more than 2000 distance.*/


SELECT flno 
FROM flight 
WHERE distance > 2000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the numbers of all flights that can cover a distance of more than 2000?*/


SELECT flno 
FROM flight 
INNER JOIN aircraft 
ON flight.aid = aircraft.aid 
WHERE aircraft.distance > 2000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to What is the average price for flights from Los Angeles to Honolulu.*/


SELECT AVG(price)
FROM flight
WHERE origin = 'Los Angeles' AND destination = 'Honolulu'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the average price for flights from LA to Honolulu?*/


SELECT AVG(price)
FROM flight
WHERE origin = 'LA' AND destination = 'Honolulu'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show origin and destination for flights with price higher than 300.*/


SELECT origin, destination 
FROM flight 
WHERE price > 300

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the origin and destination for all flights whose price is higher than 300?*/


SELECT origin, destination 
FROM flight 
WHERE price > 300

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the flight number and distance of the flight with maximum price.*/


SELECT flno, distance 
FROM flight 
WHERE price = (SELECT MAX(price) FROM flight)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the flight number and its distance for the one with the maximum price?*/


SELECT flno, distance 
FROM flight 
WHERE price = (SELECT MAX(price) FROM flight)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the flight number of flights with three lowest distances.*/


SELECT flno 
FROM flight 
ORDER BY distance ASC 
LIMIT 3

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the numbers of the shortest flights?*/


SELECT flno 
FROM flight 
WHERE distance = (SELECT MIN(distance) FROM flight)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to What is the average distance and average price for flights from Los Angeles.*/


SELECT AVG(distance) AS avg_distance, AVG(price) AS avg_price
FROM flight
WHERE origin = 'Los Angeles'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the average distance and price for all flights from LA?*/


SELECT AVG(distance) AS avg_distance, AVG(price) AS avg_price
FROM flight
WHERE origin = 'LA'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show all origins and the number of flights from each origin.*/


SELECT origin, COUNT(*) AS 'Number of Flights'
FROM flight
GROUP BY origin

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer For each origin, how many flights came from there?*/


SELECT origin, COUNT(*) AS 'Number of Flights'
FROM flight
GROUP BY origin

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show all destinations and the number of flights to each destination.*/


SELECT destination, COUNT(*) AS 'Number of Flights'
FROM flight
GROUP BY destination

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the destinations and number of flights to each one?*/


SELECT destination, COUNT(*) AS 'Number of Flights'
FROM flight
GROUP BY destination

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer Which origin has most number of flights?*/


SELECT origin, COUNT(*) AS num_flights
FROM flight
GROUP BY origin
ORDER BY num_flights DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What place has the most flights coming from there?*/


SELECT origin, COUNT(*) AS num_flights
FROM flight
GROUP BY origin
ORDER BY num_flights DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer Which destination has least number of flights?*/


SELECT destination, COUNT(*) AS num_flights
FROM flight
GROUP BY destination
ORDER BY num_flights ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What destination has the fewest number of flights?*/


SELECT destination, COUNT(*) AS num_flights
FROM flight
GROUP BY destination
ORDER BY num_flights ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to What is the aircraft name for the flight with number 99*/
?

SELECT a.name 
FROM flight f 
INNER JOIN aircraft a 
ON f.aid = a.aid 
WHERE f.flno = 99

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name of the aircraft that was on flight number 99?*/


SELECT a.name 
FROM aircraft a 
INNER JOIN flight f 
ON a.aid = f.aid 
WHERE f.flno = 99

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show all flight numbers with aircraft Airbus A340-300.*/


SELECT flno 
FROM flight 
INNER JOIN aircraft 
ON flight.aid = aircraft.aid 
WHERE aircraft.name = 'Airbus A340-300'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the flight numbers for the aircraft Airbus A340-300?*/


SELECT flno 
FROM flight 
INNER JOIN aircraft 
ON flight.aid = aircraft.aid 
WHERE aircraft.name = 'Airbus A340-300'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show aircraft names and number of flights for each aircraft.*/


SELECT aircraft.name, COUNT(flight.flno) AS 'Number of Flights'
FROM aircraft
INNER JOIN flight ON aircraft.aid = flight.aid
GROUP BY aircraft.name

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name of each aircraft and how many flights does each one complete?*/


SELECT aircraft.name, COUNT(flight.aid) AS 'Number of Flights'
FROM aircraft
INNER JOIN flight ON aircraft.aid = flight.aid
GROUP BY aircraft.name

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show names for all aircraft with at least two flights.*/


SELECT a.name 
FROM aircraft a 
INNER JOIN flight f 
ON a.aid = f.aid 
GROUP BY a.name 
HAVING COUNT(f.flno) >= 2

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names for all aircrafts with at least 2 flights?*/


SELECT a.name 
FROM aircraft a 
INNER JOIN flight f ON a.aid = f.aid 
GROUP BY a.name 
HAVING COUNT(f.flno) >= 2

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to How many employees have certificate.*/


SELECT COUNT(*) 
FROM certificate 
WHERE eid IS NOT NULL

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the count of distinct employees with certificates?*/


SELECT COUNT(DISTINCT eid) 
FROM certificate

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show ids for all employees who don't have a certificate.*/


SELECT eid FROM employee WHERE eid NOT IN (SELECT eid FROM certificate)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the ids of all employees that don't have certificates?*/


SELECT eid 
FROM employee 
WHERE eid NOT IN (SELECT eid FROM certificate)

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show names for all aircrafts of which John Williams has certificates.*/


SELECT a.name 
FROM aircraft a 
INNER JOIN certificate c ON a.aid = c.aid 
INNER JOIN employee e ON c.eid = e.eid 
WHERE e.name = 'John Williams'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names of all aircrafts that John Williams have certificates to be able to fly?*/


SELECT a.name 
FROM aircraft a 
INNER JOIN certificate c ON a.aid = c.aid 
INNER JOIN employee e ON c.eid = e.eid 
WHERE e.name = 'John Williams'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show names for all employees who have certificate of Boeing 737-800.*/


SELECT e.name 
FROM employee e 
INNER JOIN certificate c ON e.eid = c.eid 
INNER JOIN aircraft a ON c.aid = a.aid 
WHERE a.name = 'Boeing 737-800'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names of all employees who have a certificate to fly Boeing 737-800?*/


SELECT e.name 
FROM employee e 
INNER JOIN certificate c ON e.eid = c.eid 
INNER JOIN aircraft a ON c.aid = a.aid 
WHERE a.name = 'Boeing 737-800'

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show names for all employees who have certificates on both Boeing 737-800 and Airbus A340-300.*/


SELECT e.name 
FROM employee e 
INNER JOIN certificate c ON e.eid = c.eid 
INNER JOIN aircraft a ON c.aid = a.aid 
WHERE a.name IN ('Boeing 737-800', 'Airbus A340-300') 
GROUP BY e.name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names of all employees who can fly both the Boeing 737-800 and the Airbus A340-300?*/


SELECT e.name 
FROM employee e 
INNER JOIN certificate c ON e.eid = c.eid 
INNER JOIN aircraft a ON c.aid = a.aid 
WHERE a.name IN ('Boeing 737-800', 'Airbus A340-300')

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show names for all employees who do not have certificate of Boeing 737-800.*/


SELECT e.name 
FROM employee e 
LEFT JOIN certificate c ON e.eid = c.eid 
LEFT JOIN aircraft a ON c.aid = a.aid 
WHERE a.name != 'Boeing 737-800' OR c.aid IS NULL

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names of all employees who are not certified to fly Boeing 737-800s?*/


SELECT e.name 
FROM employee e 
LEFT JOIN certificate c ON e.eid = c.eid 
LEFT JOIN aircraft a ON c.aid = a.aid 
WHERE a.name != 'Boeing 737-800' OR c.aid IS NULL

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the name of aircraft which fewest people have its certificate.*/


SELECT a.name 
FROM aircraft a 
LEFT JOIN certificate c ON a.aid = c.aid 
GROUP BY a.name 
ORDER BY COUNT(c.eid) ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What are the names of the aircraft that the least people are certified to fly?*/


SELECT name 
FROM aircraft a 
INNER JOIN (SELECT aid, COUNT(*) AS num_certs 
            FROM certificate 
            GROUP BY aid 
            ORDER BY num_certs ASC 
            LIMIT 1) c 
ON a.aid = c.aid

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to Show the name and distance of the aircrafts with more than 5000 distance and which at least 5 people have its certificate.*/


SELECT aircraft.name, aircraft.distance
FROM aircraft
INNER JOIN certificate ON aircraft.aid = certificate.aid
GROUP BY aircraft.name, aircraft.distance
HAVING COUNT(certificate.eid) >= 5 AND aircraft.distance > 5000

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the name and distance of every aircraft that can cover a distance of more than 5000 and which at least 5 people can fly?*/


SELECT aircraft.name, aircraft.distance 
FROM aircraft 
INNER JOIN certificate ON aircraft.aid = certificate.aid 
GROUP BY aircraft.name, aircraft.distance 
HAVING aircraft.distance > 5000 
AND COUNT(certificate.eid) >= 5

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer what is the salary and name of the employee who has the most number of aircraft certificates?*/


SELECT e.name, e.salary 
FROM employee e 
INNER JOIN certificate c ON e.eid = c.eid 
GROUP BY e.name, e.salary 
ORDER BY COUNT(c.aid) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the salaray and name of the employee that is certified to fly the most planes?*/


SELECT e.name, e.salary 
FROM employee e 
INNER JOIN certificate c ON e.eid = c.eid 
GROUP BY e.name, e.salary 
ORDER BY COUNT(c.aid) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the salary and name of the employee who has the most number of certificates on aircrafts with distance more than 5000?*/


SELECT e.name, e.salary 
FROM employee e 
INNER JOIN certificate c ON e.eid = c.eid 
INNER JOIN aircraft a ON c.aid = a.aid 
WHERE a.distance > 5000 
GROUP BY e.name, e.salary 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

flight(flno, origin, destination, distance, departure_date, arrival_date, price, aid)
aircraft(aid, name, distance)
employee(eid, name, salary)
certificate(eid, aid)

Create a SQL request to answer What is the salaray and name of the employee with the most certificates to fly planes more than 5000?*/


SELECT e.name, e.salary 
FROM employee e 
INNER JOIN certificate c ON e.eid = c.eid 
INNER JOIN aircraft a ON c.aid = a.aid 
WHERE a.distance > 5000 
ORDER BY COUNT(c.eid) DESC 
LIMIT 1

