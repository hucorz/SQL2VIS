/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer How many heads of the departments are older than 56 ?*/


SELECT COUNT(*) 
FROM head 
INNER JOIN management 
ON head.head_ID = management.head_ID 
WHERE head.age > 56

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to List the name, born state and age of the heads of departments ordered by age.*/


SELECT h.name, h.born_state, h.age 
FROM head h 
INNER JOIN management m ON h.head_ID = m.head_ID 
ORDER BY h.age ASC

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to List the creation year, name and budget of each department.*/


SELECT Creation, Name, Budget_in_Billions 
FROM department

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer What are the maximum and minimum budget of the departments?*/


SELECT MAX(Budget_in_Billions) AS Max_Budget, MIN(Budget_in_Billions) AS Min_Budget
FROM department

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer What is the average number of employees of the departments whose rank is between 10 and 15?*/


SELECT AVG(Num_Employees)
FROM department
WHERE Ranking BETWEEN 10 AND 15

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer What are the names of the heads who are born outside the California state?*/


SELECT h.name 
FROM head h 
WHERE h.born_state != 'California'

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer What are the distinct creation years of the departments managed by a secretary born in state 'Alabama'?*/


SELECT DISTINCT Creation 
FROM department 
INNER JOIN management ON department.Department_ID = management.Department_ID 
INNER JOIN head ON management.head_ID = head.head_ID 
WHERE head.born_state = 'Alabama'

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer What are the names of the states where at least 3 heads were born?*/


SELECT born_state 
FROM head 
GROUP BY born_state 
HAVING COUNT(*) >= 3

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer In which year were most departments established?*/


SELECT Creation, COUNT(*) AS Num_Departments
FROM department
GROUP BY Creation
ORDER BY Num_Departments DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer Show the name and number of employees for the departments managed by heads whose temporary acting value is 'Yes'?*/


SELECT d.Name, d.Num_Employees 
FROM department d 
INNER JOIN management m ON d.Department_ID = m.Department_ID 
INNER JOIN head h ON m.head_ID = h.head_ID 
WHERE m.temporary_acting = 'Yes'

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer How many acting statuses are there?*/


SELECT COUNT(temporary_acting) 
FROM management

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer How many departments are led by heads who are not mentioned?*/


SELECT COUNT(*) 
FROM department d 
LEFT JOIN management m ON d.Department_ID = m.department_ID 
LEFT JOIN head h ON m.head_ID = h.head_ID 
WHERE h.head_ID IS NULL

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to answer What are the distinct ages of the heads who are acting?*/


SELECT DISTINCT age 
FROM head 
INNER JOIN management 
ON head.head_ID = management.head_ID 
WHERE temporary_acting = 1

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to List the states where both the secretary of 'Treasury' department and the secretary of 'Homeland Security' were born.*/


SELECT h1.born_state, h2.born_state
FROM head h1
INNER JOIN management m1 ON h1.head_ID = m1.head_ID
INNER JOIN department d1 ON m1.department_ID = d1.Department_ID
INNER JOIN head h2 ON h2.head_ID = m1.head_ID
INNER JOIN management m2 ON h2.head_ID = m2.head_ID
INNER JOIN department d2 ON m2.department_ID = d2.Department_ID
WHERE d1.Name = 'Treasury' AND d2.Name = 'Homeland Security'

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to Which department has more than 1 head at a time? List the id, name and the number of heads.*/


SELECT department.Department_ID, department.Name, COUNT(management.head_ID) AS Num_Heads
FROM department
INNER JOIN management ON department.Department_ID = management.department_ID
GROUP BY department.Department_ID, department.Name
HAVING COUNT(management.head_ID) > 1

/*Here are Mysql tables, with their properties:

department(Department_ID, Name, Creation, Ranking, Budget_in_Billions, Num_Employees)
head(head_ID, name, born_state, age)
management(department_ID, head_ID, temporary_acting)

Create a SQL request to Which head's name has the substring 'Ha'? List the id and name.*/


SELECT head_ID, name 
FROM head 
WHERE name LIKE '%Ha%'

