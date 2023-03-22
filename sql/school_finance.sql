/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to answer How many schools are there?*/


SELECT COUNT(*) FROM School

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Count the number of schools.*/


SELECT COUNT(*) FROM School

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Show all school names in alphabetical order.*/


SELECT School_name FROM School ORDER BY School_name ASC

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to List the name, location, mascot for all schools.*/


SELECT School_name, Location, Mascot FROM School

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to answer What are the total and average enrollment of all schools?*/


SELECT SUM(Enrollment) AS Total_Enrollment, AVG(Enrollment) AS Average_Enrollment
FROM School

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to answer What are the mascots for schools with enrollments above the average?*/


SELECT School_name, Mascot
FROM School
WHERE Enrollment > (SELECT AVG(Enrollment) FROM School) 

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to List the name of the school with the smallest enrollment.*/


SELECT School_name 
FROM School 
ORDER BY Enrollment ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Show the average, maximum, minimum enrollment of all schools.*/


SELECT AVG(Enrollment) AS Average_Enrollment, MAX(Enrollment) AS Maximum_Enrollment, MIN(Enrollment) AS Minimum_Enrollment
FROM School

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Show each county along with the number of schools and total enrollment in each county.*/


SELECT County, COUNT(School_id) AS 'Number of Schools', SUM(Enrollment) AS 'Total Enrollment'
FROM School
GROUP BY County

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to answer How many donors have endowment for school named "Glenn"?*/


SELECT COUNT(*) 
FROM endowment 
INNER JOIN school 
ON endowment.School_id = school.School_id 
WHERE school.School_name = 'Glenn'

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to List each donator name and the amount of endowment in descending order of the amount of endowment.*/


SELECT donator_name, amount 
FROM endowment 
ORDER BY amount DESC

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to List the names of the schools without any endowment.*/


SELECT School_name 
FROM School 
WHERE School_id NOT IN (SELECT School_id FROM endowment)

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to List all the names of schools with an endowment amount smaller than or equal to 10.*/
000

SELECT School_name 
FROM School 
INNER JOIN endowment 
ON School.School_id = endowment.School_id 
WHERE endowment.amount <= 10000

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Show the names of donors who donated to both school "Glenn" and "Triton."*/


SELECT donator_name 
FROM endowment 
WHERE School_id IN (SELECT School_id FROM School WHERE School_name IN ('Glenn', 'Triton')) 
GROUP BY donator_name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Show the names of all the donors except those whose donation amount less than 9.*/


SELECT donator_name 
FROM endowment 
WHERE amount > 9

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to List the amount and donor name for the largest amount of donation.*/


SELECT donator_name, MAX(amount) 
FROM endowment 
GROUP BY donator_name

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to answer How many budgets are above 3000 in year 2001 or before?*/


SELECT COUNT(*) 
FROM budget 
WHERE Year <= 2001 AND Budgeted > 3000

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Count the number of budgets in year 2001 or before whose budgeted amount is greater than 3000*/


SELECT COUNT(*) 
FROM budget 
WHERE Year <= 2001 
AND Budgeted > 3000

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Show each school name, its budgeted amount, and invested amount in year 2002 or after.*/


SELECT School.School_name, budget.Budgeted, budget.Invested 
FROM School 
INNER JOIN budget ON School.School_id = budget.School_id 
WHERE budget.Year >= 2002

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Show all donor names.*/


SELECT donator_name FROM endowment

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to answer How many budget record has a budget amount smaller than the invested amount?*/


SELECT COUNT(*) 
FROM budget 
WHERE Budgeted < Invested

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to answer What is the total budget amount for school "Glenn" in all years?*/


SELECT SUM(Budgeted) 
FROM budget 
WHERE School_id IN (SELECT School_id FROM School WHERE School_name = 'Glenn')

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Show the names of schools with a total budget amount greater than 100 or a total endowment greater than 10.*/


SELECT School_name 
FROM School 
INNER JOIN budget ON School.School_id = budget.School_id 
INNER JOIN endowment ON School.School_id = endowment.School_id 
WHERE budget.total_budget > 100 OR endowment.amount > 10

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Find the names of schools that have more than one donator with donation amount above 8.5.*/


SELECT School.School_name 
FROM School 
INNER JOIN endowment ON School.School_id = endowment.School_id 
WHERE endowment.amount > 8.5 
GROUP BY School.School_name 
HAVING COUNT(endowment.donator_name) > 1

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to Find the number of schools that have more than one donator whose donation amount is less than 8.5.*/


SELECT COUNT(*) 
FROM School 
INNER JOIN endowment ON School.School_id = endowment.School_id 
WHERE endowment.amount < 8.5 
GROUP BY School.School_id 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

School(School_id, School_name, Location, Mascot, Enrollment, IHSAA_Class, IHSAA_Football_Class, County)
budget(School_id, Year, Budgeted, total_budget_percent_budgeted, Invested, total_budget_percent_invested, Budget_invested_percent)
endowment(endowment_id, School_id, donator_name, amount)

Create a SQL request to List the name, IHSAA Football Class, and Mascot of the schools that have more than 6000 of budgeted amount or were founded before 2003, in the order of percent of total invested budget and total budgeted budget.*/


SELECT School_name, IHSAA_Football_Class, Mascot 
FROM School 
INNER JOIN budget ON School.School_id = budget.School_id 
WHERE budget.Budgeted > 6000 OR School.Year < 2003 
ORDER BY budget.total_budget_percent_invested DESC, budget.total_budget_percent_budgeted DESC

