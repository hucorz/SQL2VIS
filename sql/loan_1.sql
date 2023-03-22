/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer How many bank branches are there?*/


SELECT COUNT(branch_ID) FROM bank

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Count the number of bank branches.*/


SELECT COUNT(branch_ID) FROM bank

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer How many customers are there?*/


SELECT COUNT(*) AS 'Number of Customers' FROM customer

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the total number of customers across banks?*/


SELECT COUNT(*) AS Total_Customers
FROM customer

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the number of customers in the banks at New York City.*/


SELECT COUNT(*) 
FROM bank 
INNER JOIN customer 
ON bank.branch_ID = customer.branch_ID 
WHERE bank.city = 'New York City'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the total number of customers who use banks in New York City?*/


SELECT COUNT(*) 
FROM bank b 
INNER JOIN customer c 
ON b.branch_ID = c.branch_ID 
WHERE b.city = 'New York City'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the average number of customers in all banks of Utah state.*/


SELECT AVG(no_of_customers) 
FROM bank 
WHERE state = 'Utah'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the average number of customers across banks in the state of Utah?*/


SELECT AVG(no_of_customers)
FROM bank
WHERE state = 'Utah'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the average number of customers cross all banks.*/


SELECT AVG(no_of_customers)
FROM bank

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the average number of bank customers?*/


SELECT AVG(no_of_customers)
FROM bank

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the city and state of the bank branch named morningside.*/


SELECT city, state FROM bank WHERE bname = 'morningside'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What city and state is the bank with the name morningside in?*/


SELECT city, state 
FROM bank 
WHERE bname = 'morningside'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the branch names of banks in the New York state.*/


SELECT bname 
FROM bank 
WHERE state = 'New York'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of banks in the state of New York?*/


SELECT bname 
FROM bank 
WHERE state = 'New York'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to List the name of all customers sorted by their account balance in ascending order.*/


SELECT cust_name 
FROM customer 
ORDER BY acc_bal ASC

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of all customers, ordered by account balance?*/


SELECT cust_name 
FROM customer 
ORDER BY acc_bal ASC

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to List the name of all different customers who have some loan sorted by their total loan amount.*/


SELECT cust_name, SUM(amount) AS Total_Loan_Amount
FROM customer c
INNER JOIN loan l ON c.cust_ID = l.cust_ID
GROUP BY cust_name
ORDER BY Total_Loan_Amount DESC

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of the different customers who have taken out a loan, ordered by the total amount that they have taken?*/


SELECT cust_name, SUM(amount) AS total_amount 
FROM customer 
INNER JOIN loan ON customer.cust_ID = loan.cust_ID 
GROUP BY cust_name 
ORDER BY total_amount DESC

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the state, account type, and credit score of the customer whose number of loan is 0.*/


SELECT state, acc_type, credit_score 
FROM customer 
WHERE no_of_loans = 0

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the states, account types, and credit scores for customers who have 0 loans?*/


SELECT state, acc_type, credit_score 
FROM customer 
WHERE no_of_loans = 0

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the number of different cities which banks are located at.*/


SELECT COUNT(DISTINCT city) FROM bank

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer In how many different cities are banks located?*/


SELECT COUNT(DISTINCT city) 
FROM bank

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the number of different states which banks are located at.*/


SELECT COUNT(DISTINCT state) FROM bank

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer In how many different states are banks located?*/


SELECT COUNT(DISTINCT state) 
FROM bank

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer How many distinct types of accounts are there?*/


SELECT COUNT(DISTINCT acc_type) FROM customer

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Count the number of different account types.*/


SELECT COUNT(DISTINCT acc_type) FROM customer

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name and account balance of the customer whose name includes the letter ¡®a¡¯.*/


SELECT cust_name, acc_bal FROM customer WHERE cust_name LIKE '%a%'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names and account balances of customers with the letter a in their names?*/


SELECT cust_name, acc_bal 
FROM customer 
WHERE cust_name LIKE '%a%'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the total account balance of each customer from Utah or Texas.*/


SELECT c.cust_name, SUM(c.acc_bal) AS Total_Account_Balance
FROM customer c
JOIN bank b ON c.branch_ID = b.branch_ID
WHERE b.state IN ('Utah', 'Texas')
GROUP BY c.cust_name

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the total account balances for each customer from Utah or Texas?*/


SELECT c.cust_name, SUM(c.acc_bal) AS Total_Account_Balance
FROM customer c
WHERE c.state IN ('Utah', 'Texas')
GROUP BY c.cust_name

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of customers who have both saving and checking account types.*/


SELECT cust_name 
FROM customer 
WHERE acc_type IN ('saving', 'checking') 
GROUP BY cust_name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of customers who have both savings and checking accounts?*/


SELECT cust_name 
FROM customer 
WHERE acc_type IN ('savings', 'checking') 
GROUP BY cust_name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of customers who do not have an saving account.*/


SELECT cust_name 
FROM customer 
WHERE acc_type != 'saving' 

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of customers who do not have saving accounts?*/


SELECT cust_name 
FROM customer 
WHERE acc_type != 'saving' 

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of customers who do not have a loan with a type of Mortgages.*/


SELECT cust_name 
FROM customer 
WHERE cust_ID NOT IN (SELECT cust_ID 
                      FROM loan 
                      WHERE loan_type = 'Mortgages')

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of customers who have not taken a Mortage loan?*/


SELECT cust_name 
FROM customer 
WHERE cust_ID NOT IN (SELECT cust_ID 
                      FROM loan 
                      WHERE loan_type = 'Mortage')

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of customers who have loans of both Mortgages and Auto.*/


SELECT cust_name 
FROM customer 
INNER JOIN loan 
ON customer.cust_ID = loan.cust_ID 
WHERE loan.loan_type IN ('Mortgage', 'Auto') 
GROUP BY cust_name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of customers who have taken both Mortgage and Auto loans?*/


SELECT cust_name 
FROM customer 
INNER JOIN loan 
ON customer.cust_ID = loan.cust_ID 
WHERE loan.loan_type IN ('Mortgage', 'Auto') 
GROUP BY cust_name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of customers whose credit score is below the average credit scores of all customers.*/


SELECT cust_name 
FROM customer 
WHERE credit_score < (SELECT AVG(credit_score) FROM customer)

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of customers with credit score less than the average credit score across customers?*/


SELECT cust_name 
FROM customer 
WHERE credit_score < (SELECT AVG(credit_score) FROM customer)

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the branch name of the bank that has the most number of customers.*/


SELECT bname 
FROM bank 
ORDER BY no_of_customers DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the name of the bank branch with the greatest number of customers?*/


SELECT bname 
FROM bank 
ORDER BY no_of_customers DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of customer who has the lowest credit score.*/


SELECT cust_name 
FROM customer 
ORDER BY credit_score ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the name of the customer with the worst credit score?*/


SELECT cust_name 
FROM customer 
ORDER BY credit_score ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name, account type, and account balance of the customer who has the highest credit score.*/


SELECT cust_name, acc_type, acc_bal 
FROM customer 
WHERE credit_score = (SELECT MAX(credit_score) FROM customer) 
ORDER BY credit_score DESC

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the name, account type, and account balance corresponding to the customer with the highest credit score?*/


SELECT cust_name, acc_type, acc_bal 
FROM customer 
WHERE credit_score = (SELECT MAX(credit_score) FROM customer) 
ORDER BY credit_score DESC

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of customer who has the highest amount of loans.*/


SELECT cust_name 
FROM customer 
INNER JOIN loan ON customer.cust_ID = loan.cust_ID 
GROUP BY cust_name 
ORDER BY SUM(amount) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the name of the customer who has greatest total loan amount?*/


SELECT cust_name 
FROM customer 
INNER JOIN loan ON customer.cust_ID = loan.cust_ID 
GROUP BY cust_name 
ORDER BY SUM(amount) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the state which has the most number of customers.*/


SELECT state, COUNT(*) AS num_customers
FROM customer
GROUP BY state
ORDER BY num_customers DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer Which state has the greatest total number of bank customers?*/


SELECT state, SUM(no_of_customers) AS total_customers
FROM bank
GROUP BY state
ORDER BY total_customers DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to For each account type, find the average account balance of customers with credit score lower than 50.*/


SELECT acc_type, AVG(acc_bal) 
FROM customer 
WHERE credit_score < 50 
GROUP BY acc_type

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the average account balance of customers with credit score below 50 for the different account types?*/


SELECT acc_type, AVG(acc_bal) 
FROM customer 
WHERE credit_score < 50 
GROUP BY acc_type

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to For each state, find the total account balance of customers whose credit score is above 100.*/


SELECT state, SUM(acc_bal) 
FROM customer 
WHERE credit_score > 100 
GROUP BY state

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the total account balance for customers with a credit score of above 100 for the different states?*/


SELECT state, SUM(acc_bal) AS Total_Account_Balance
FROM customer
WHERE credit_score > 100
GROUP BY state

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the total amount of loans offered by each bank branch.*/


SELECT b.bname, SUM(l.amount) AS Total_Amount_of_Loans
FROM bank b
INNER JOIN customer c ON b.branch_ID = c.branch_ID
INNER JOIN loan l ON c.cust_ID = l.cust_ID
GROUP BY b.bname

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of the different bank branches, and what are their total loan amounts?*/


SELECT bname, SUM(amount) AS Total_Loan_Amount
FROM bank
INNER JOIN loan ON bank.branch_ID = loan.branch_ID
GROUP BY bname

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of customers who have more than one loan.*/


SELECT cust_name 
FROM customer 
WHERE no_of_loans > 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of customers who have taken out more than one loan?*/


SELECT cust_name 
FROM customer 
WHERE no_of_loans > 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name and account balance of the customers who have loans with a total amount of more than 5000.*/


SELECT cust_name, acc_bal 
FROM customer 
INNER JOIN loan 
ON customer.cust_ID = loan.cust_ID 
WHERE loan.amount > 5000

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names and account balances for customers who have taken a total amount of more than 5000 in loans?*/


SELECT cust_name, acc_bal 
FROM customer 
INNER JOIN loan 
ON customer.cust_ID = loan.cust_ID 
WHERE loan.amount > 5000

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of bank branch that provided the greatest total amount of loans.*/


SELECT bname 
FROM bank 
INNER JOIN loan ON bank.branch_ID = loan.branch_ID 
GROUP BY bname 
ORDER BY SUM(amount) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the name of the bank branch that has lent the greatest amount?*/


SELECT bname 
FROM bank 
INNER JOIN loan ON bank.branch_ID = loan.branch_ID 
GROUP BY bname 
ORDER BY SUM(amount) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of bank branch that provided the greatest total amount of loans to customers with credit score is less than 100.*/


SELECT bname 
FROM bank 
INNER JOIN customer ON bank.branch_ID = customer.branch_ID 
INNER JOIN loan ON customer.cust_ID = loan.cust_ID 
WHERE customer.credit_score < 100 
GROUP BY bname 
ORDER BY SUM(loan.amount) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the name of the bank branch that has lended the largest total amount in loans, specifically to customers with credit scores below 100?*/


SELECT bname 
FROM bank 
INNER JOIN loan ON bank.branch_ID = loan.branch_ID 
INNER JOIN customer ON loan.cust_ID = customer.cust_ID 
WHERE customer.credit_score < 100 
GROUP BY bname 
ORDER BY SUM(loan.amount) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name of bank branches that provided some loans.*/


SELECT bname 
FROM bank 
INNER JOIN loan 
ON bank.branch_ID = loan.branch_ID

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of the different banks that have provided loans?*/


SELECT bname 
FROM bank 
INNER JOIN loan 
ON bank.branch_ID = loan.branch_ID

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the name and credit score of the customers who have some loans.*/


SELECT cust_name, credit_score 
FROM customer 
WHERE no_of_loans > 0

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the different names and credit scores of customers who have taken a loan?*/


SELECT cust_name, credit_score 
FROM customer 
INNER JOIN loan 
ON customer.cust_ID = loan.cust_ID

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the the name of the customers who have a loan with amount more than 3000.*/


SELECT cust_name 
FROM customer 
INNER JOIN loan 
ON customer.cust_ID = loan.cust_ID 
WHERE loan.amount > 3000

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of customers who have a loan of more than 3000 in amount?*/


SELECT cust_name 
FROM customer 
INNER JOIN loan 
ON customer.cust_ID = loan.cust_ID 
WHERE loan.amount > 3000

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the city and name of bank branches that provide business loans.*/


SELECT bname, city 
FROM bank 
INNER JOIN loan ON bank.branch_ID = loan.branch_ID 
WHERE loan.loan_type = 'business' 
GROUP BY bname, city

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names and cities of bank branches that offer loans for business?*/


SELECT bname, city 
FROM bank 
INNER JOIN loan ON bank.branch_ID = loan.branch_ID 
WHERE loan.loan_type = 'business' 
GROUP BY bname, city

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the names of bank branches that have provided a loan to any customer whose credit score is below 100.*/


SELECT bname 
FROM bank 
INNER JOIN loan ON bank.branch_ID = loan.branch_ID 
INNER JOIN customer ON loan.cust_ID = customer.cust_ID 
WHERE customer.credit_score < 100

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What are the names of banks that have loaned money to customers with credit scores below 100?*/


SELECT bname 
FROM bank 
INNER JOIN loan ON bank.branch_ID = loan.branch_ID 
INNER JOIN customer ON loan.cust_ID = customer.cust_ID 
WHERE customer.credit_score < 100

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the total amount of loans provided by bank branches in the state of New York.*/


SELECT SUM(amount) 
FROM loan 
INNER JOIN customer ON loan.cust_ID = customer.cust_ID 
INNER JOIN bank ON customer.branch_ID = bank.branch_ID 
WHERE bank.state = 'New York'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the total amount of money loaned by banks in New York state?*/


SELECT SUM(amount) 
FROM loan 
INNER JOIN customer 
ON loan.cust_ID = customer.cust_ID 
INNER JOIN bank 
ON customer.branch_ID = bank.branch_ID 
WHERE bank.state = 'New York'

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the average credit score of the customers who have some loan.*/


SELECT AVG(credit_score) 
FROM customer 
WHERE cust_ID IN (SELECT cust_ID FROM loan)

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the average credit score for customers who have taken a loan?*/


SELECT AVG(credit_score)
FROM customer
INNER JOIN loan
ON customer.cust_ID = loan.cust_ID

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to Find the average credit score of the customers who do not have any loan.*/


SELECT AVG(credit_score) 
FROM customer 
WHERE no_of_loans = 0

/*Here are Mysql tables, with their properties:

bank(branch_ID, bname, no_of_customers, city, state)
customer(cust_ID, cust_name, acc_type, acc_bal, no_of_loans, credit_score, branch_ID, state)
loan(loan_ID, loan_type, cust_ID, branch_ID, amount)

Create a SQL request to answer What is the average credit score for customers who have never taken a loan?*/


SELECT AVG(credit_score)
FROM customer
WHERE no_of_loans = 0

