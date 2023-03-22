/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Which claims caused more than 2 settlements or have the maximum claim value? List the date the claim was made and the claim id.*/


SELECT c.Date_Claim_Made, c.Claim_ID
FROM Claims c
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID
GROUP BY c.Claim_ID
HAVING COUNT(s.Settlement_ID) > 2 OR MAX(c.Amount_Claimed)
ORDER BY c.Date_Claim_Made

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the claims that led to more than two settlements or have the maximum claim value. For each of them, return the date the claim was made and the id of the claim.*/


SELECT c.Date_Claim_Made, c.Claim_ID
FROM Claims c
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID
GROUP BY c.Claim_ID
HAVING COUNT(s.Settlement_ID) > 2 OR MAX(c.Amount_Claimed)


/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Which customer had at least 2 policies but did not file any claims? List the customer details and id.*/


SELECT c.Customer_ID, c.Customer_Details
FROM Customers c
INNER JOIN Customer_Policies cp ON c.Customer_ID = cp.Customer_ID
LEFT JOIN Claims cl ON cp.Policy_ID = cl.Policy_ID
WHERE cl.Claim_ID IS NULL
GROUP BY c.Customer_ID, c.Customer_Details
HAVING COUNT(cp.Policy_ID) >= 2

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Give me the the customer details and id for the customers who had two or more policies but did not file any claims.*/


SELECT c.Customer_ID, c.Customer_Details
FROM Customers c
INNER JOIN Customer_Policies cp ON c.Customer_ID = cp.Customer_ID
LEFT JOIN Claims cl ON cp.Policy_ID = cl.Policy_ID
WHERE cl.Claim_ID IS NULL
GROUP BY c.Customer_ID, c.Customer_Details
HAVING COUNT(cp.Policy_ID) >= 2

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to List the method, date and amount of all the payments, in ascending order of date.*/


SELECT Payment_Method_Code, Date_Payment_Made, Amount_Payment
FROM Payments
ORDER BY Date_Payment_Made ASC

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to What are the method, date and amount of each payment? Sort the list in ascending order of date.*/


SELECT Payment_Method_Code, Date_Payment_Made, Amount_Payment
FROM Payments
ORDER BY Date_Payment_Made ASC

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Among all the claims, what is the settlement amount of the claim with the largest claim amount? List both the settlement amount and claim amount.*/


SELECT Amount_Claimed, Amount_Settled 
FROM Claims 
WHERE Amount_Claimed = (SELECT MAX(Amount_Claimed) FROM Claims)

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the settlement amount of the claim with the largest claim amount. Show both the settlement amount and claim amount.*/


SELECT c.Amount_Claimed, s.Amount_Settled
FROM Claims c
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID
WHERE c.Amount_Claimed = (SELECT MAX(Amount_Claimed) FROM Claims)


/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Among all the claims, what is the amount claimed in the claim with the least amount settled? List both the settlement amount and claim amount.*/


SELECT Amount_Claimed, Amount_Settled 
FROM Claims 
ORDER BY Amount_Settled ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the claimed amount in the claim with the least amount settled. Show both the settlement amount and claim amount.*/


SELECT c.Amount_Claimed, s.Amount_Settled 
FROM Claims c 
INNER JOIN Settlements s 
ON c.Claim_ID = s.Claim_ID 
ORDER BY s.Amount_Settled ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Among all the claims, which claims have a claimed amount larger than the average? List the date the claim was made and the date it was settled.*/


SELECT Date_Claim_Made, Date_Claim_Settled
FROM Claims
WHERE Amount_Claimed > (SELECT AVG(Amount_Claimed) FROM Claims)

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Give me the claim date, settlement date for all the claims whose claimed amount is larger than the average.*/


SELECT Date_Claim_Made, Date_Claim_Settled 
FROM Claims 
WHERE Amount_Claimed > (SELECT AVG(Amount_Claimed) FROM Claims)

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Among all the claims, which settlements have a claimed amount that is no more than the average? List the claim start date.*/


SELECT c.Start_Date, c.Amount_Claimed
FROM Claims c
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID
WHERE c.Amount_Claimed <= (SELECT AVG(Amount_Claimed) FROM Claims)
ORDER BY c.Start_Date

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Return the claim start date for the claims whose claimed amount is no more than the average*/
 amount claimed

SELECT Start_Date 
FROM Customer_Policies 
INNER JOIN Claims 
ON Customer_Policies.Policy_ID = Claims.Policy_ID 
WHERE Amount_Claimed <= (SELECT AVG(Amount_Claimed) FROM Claims)

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to How many settlements does each claim correspond to? List the claim id and the number of settlements.*/


SELECT Claim_ID, COUNT(Settlement_ID) AS Number_of_Settlements
FROM Settlements
GROUP BY Claim_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the number of settlements each claim corresponds to. Show the number together with the claim id.*/


SELECT Claim_ID, COUNT(Settlement_ID) AS Number_of_Settlements
FROM Settlements
GROUP BY Claim_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Which claim incurred the most number of settlements? List the claim id, the date the claim was made, and the number.*/


SELECT c.Claim_ID, c.Date_Claim_Made, COUNT(s.Settlement_ID) AS Number_of_Settlements
FROM Claims c
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID
GROUP BY c.Claim_ID, c.Date_Claim_Made
ORDER BY Number_of_Settlements DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the claim id and claim date of the claim that incurred the most settlement count. Also tell me the count.*/


SELECT c.Claim_ID, c.Date_Claim_Made, COUNT(s.Settlement_ID) AS Settlement_Count
FROM Claims c
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID
GROUP BY c.Claim_ID, c.Date_Claim_Made
ORDER BY Settlement_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to How many settlements were made on the claim with the most recent claim settlement date? List the number and the claim id.*/


SELECT COUNT(Settlement_ID) AS Settlements_Made, Claim_ID 
FROM Settlements 
WHERE Date_Claim_Settled = (SELECT MAX(Date_Claim_Settled) FROM Settlements) 
GROUP BY Claim_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the claim id and the number of settlements made for the claim with the most recent settlement date.*/


SELECT Claim_ID, COUNT(Settlement_ID) 
FROM Settlements 
WHERE Date_Claim_Settled = (SELECT MAX(Date_Claim_Settled) FROM Settlements) 
GROUP BY Claim_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer Of all the claims, what was the earliest date when any claim was made?*/


SELECT MIN(Date_Claim_Made) FROM Claims

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Tell me the the date when the first claim was made.*/


SELECT MIN(Date_Claim_Made) FROM Claims

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer What is the total amount of settlement made for all the settlements?*/


SELECT SUM(Amount_Settled) 
FROM Settlements

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Compute the total amount of settlement across all the settlements.*/


SELECT SUM(Amount_Settled) 
FROM Settlements

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Who are the customers that had more than 1 policy? List the customer details and id.*/


SELECT c.Customer_ID, c.Customer_Details
FROM Customers c
INNER JOIN Customer_Policies cp ON c.Customer_ID = cp.Customer_ID
GROUP BY c.Customer_ID, c.Customer_Details
HAVING COUNT(cp.Policy_ID) > 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the the customer details and id for the customers who had more than one policy.*/


SELECT c.Customer_ID, c.Customer_Details 
FROM Customers c 
INNER JOIN Customer_Policies cp ON c.Customer_ID = cp.Customer_ID 
GROUP BY c.Customer_ID 
HAVING COUNT(cp.Policy_ID) > 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer What are the claim dates and settlement dates of all the settlements?*/


SELECT c.Date_Claim_Made, s.Date_Claim_Settled 
FROM Claims c 
INNER JOIN Settlements s 
ON c.Claim_ID = s.Claim_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Tell me the the claim date and settlement date for each settlement case.*/


SELECT c.Date_Claim_Made, c.Date_Claim_Settled 
FROM Claims c 
INNER JOIN Settlements s 
ON c.Claim_ID = s.Claim_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer What is the most popular payment method?*/


SELECT Payment_Method_Code, COUNT(Payment_Method_Code) AS Popularity
FROM Payments
GROUP BY Payment_Method_Code
ORDER BY Popularity DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer Which payment method is used the most often?*/


SELECT Payment_Method_Code, COUNT(*) AS Payment_Count
FROM Payments
GROUP BY Payment_Method_Code
ORDER BY Payment_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer With which kind of payment method were the least number of payments processed?*/


SELECT Payment_Method_Code, COUNT(Payment_ID) AS Payment_Count
FROM Payments
GROUP BY Payment_Method_Code
ORDER BY Payment_Count ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer What is the payment method that were used the least often?*/


SELECT Payment_Method_Code, COUNT(Payment_Method_Code) AS Payment_Count
FROM Payments
GROUP BY Payment_Method_Code
ORDER BY Payment_Count ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer What is the total amount of payment?*/


SELECT SUM(Amount_Payment)
FROM Payments

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Compute the total amount of payment processed.*/


SELECT SUM(Amount_Payment) 
FROM Payments

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer What are all the distinct details of the customers?*/


SELECT DISTINCT Customer_Details 
FROM Customers

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Return the distinct customer details.*/


SELECT DISTINCT Customer_Details FROM Customers

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer Which kind of policy type was chosen by the most customers?*/


SELECT Policy_Type_Code, COUNT(Customer_ID) AS Number_of_Customers
FROM Customer_Policies
GROUP BY Policy_Type_Code
ORDER BY Number_of_Customers DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the policy type the most customers choose.*/


SELECT Policy_Type_Code, COUNT(*) AS Num_Customers
FROM Customer_Policies
GROUP BY Policy_Type_Code
ORDER BY Num_Customers DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer How many settlements are there in total?*/


SELECT COUNT(*) AS Total_Settlements
FROM Settlements

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Count the total number of settlements made.*/


SELECT COUNT(Settlement_ID) FROM Settlements

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Which Payments were processed with Visa? List the payment Id, the date and the amount.*/


SELECT Payment_ID, Date_Payment_Made, Amount_Payment
FROM Payments
WHERE Payment_Method_Code = 'Visa'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Give me the payment Id, the date and the amount for all the payments processed with Visa.*/


SELECT Payment_ID, Date_Payment_Made, Amount_Payment 
FROM Payments 
WHERE Payment_Method_Code = 'Visa'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to List the details of the customers who do not have any policies.*/


SELECT c.Customer_ID, c.Customer_Details
FROM Customers c
LEFT JOIN Customer_Policies cp ON c.Customer_ID = cp.Customer_ID
WHERE cp.Customer_ID IS NULL

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Which customers do not have any policies? Find the details of these customers.*/


SELECT c.Customer_ID, c.Customer_Details
FROM Customers c
LEFT JOIN Customer_Policies cp ON c.Customer_ID = cp.Customer_ID
WHERE cp.Customer_ID IS NULL

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to List the date the claim was made, the date it was settled and the amount settled for all the claims which had exactly one settlement.*/


SELECT c.Date_Claim_Made, c.Date_Claim_Settled, s.Amount_Settled 
FROM Claims c 
INNER JOIN Settlements s 
ON c.Claim_ID = s.Claim_ID 
WHERE c.Claim_ID IN (SELECT Claim_ID 
                     FROM Settlements 
                     GROUP BY Claim_ID 
                     HAVING COUNT(*) = 1)

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Which claims had exactly one settlement? For each, tell me the the date the claim was made, the date it was settled and the amount settled.*/


SELECT c.Date_Claim_Made, s.Date_Claim_Settled, s.Amount_Settled
FROM Claims c
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID
GROUP BY c.Claim_ID
HAVING COUNT(s.Settlement_ID) = 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to Find the total claimed amount of all the claims.*/


SELECT SUM(Amount_Claimed) 
FROM Claims

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Customer_Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claims(Claim_ID, Policy_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled)
Settlements(Settlement_ID, Claim_ID, Date_Claim_Made, Date_Claim_Settled, Amount_Claimed, Amount_Settled, Customer_Policy_ID)
Payments(Payment_ID, Settlement_ID, Payment_Method_Code, Date_Payment_Made, Amount_Payment)

Create a SQL request to answer What is total amount claimed summed across all the claims?*/


SELECT SUM(Amount_Claimed) 
FROM Claims

