/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to List the names of all the customers in alphabetical order.*/


SELECT Customer_Details 
FROM Customers 
ORDER BY Customer_Details ASC

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Sort the customer names in alphabetical order.*/


SELECT Customer_Details 
FROM Customers 
ORDER BY Customer_Details ASC

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find all the policy type codes associated with the customer "Dayana Robel"*/


SELECT p.Policy_Type_Code 
FROM Customers c 
INNER JOIN Policies p 
ON c.Customer_ID = p.Customer_ID 
WHERE c.Customer_Details = 'Dayana Robel'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer What are the type codes of the policies used by the customer "Dayana Robel"?*/


SELECT Policy_Type_Code 
FROM Policies 
WHERE Customer_ID = (SELECT Customer_ID 
                     FROM Customers 
                     WHERE Customer_Details = 'Dayana Robel')

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which type of policy is most frequently used? Give me the policy type code.*/


SELECT Policy_Type_Code, COUNT(*) AS Frequency 
FROM Policies 
GROUP BY Policy_Type_Code 
ORDER BY Frequency DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the type code of the most frequently used policy.*/


SELECT Policy_Type_Code, COUNT(*) AS Frequency 
FROM Policies 
GROUP BY Policy_Type_Code 
ORDER BY Frequency DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find all the policy types that are used by more than 2 customers.*/


SELECT Policy_Type_Code, COUNT(Customer_ID) 
FROM Policies 
GROUP BY Policy_Type_Code 
HAVING COUNT(Customer_ID) > 2

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which types of policy are chosen by more than 2 customers? Give me the policy type codes.*/


SELECT Policy_Type_Code
FROM Policies
GROUP BY Policy_Type_Code
HAVING COUNT(Customer_ID) > 2

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the total and average amount paid in claim headers.*/


SELECT SUM(Amount_Paid) AS Total_Amount_Paid, AVG(Amount_Paid) AS Average_Amount_Paid FROM Claim_Headers

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer What are the total amount and average amount paid in claim headers?*/


SELECT SUM(Amount_Paid) AS Total_Amount_Paid, AVG(Amount_Paid) AS Average_Amount_Paid
FROM Claim_Headers

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the total amount claimed in the most recently created document.*/


SELECT SUM(Amount_Claimed) 
FROM Claim_Headers 
INNER JOIN Claims_Documents 
ON Claim_Headers.Claim_Header_ID = Claims_Documents.Claim_ID 
WHERE Claims_Documents.Created_Date = (SELECT MAX(Created_Date) FROM Claims_Documents) 

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer How much amount in total were claimed in the most recently created document?*/


SELECT SUM(Amount_Claimed) 
FROM Claim_Headers 
INNER JOIN Claims_Documents 
ON Claim_Headers.Claim_Header_ID = Claims_Documents.Claim_ID 
WHERE Claims_Documents.Created_Date = (SELECT MAX(Created_Date) FROM Claims_Documents) 

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer What is the name of the customer who has made the largest amount of claim in a single claim?*/


SELECT c.Customer_Details, MAX(ch.Amount_Claimed)
FROM Customers c
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID
INNER JOIN Claim_Headers ch ON p.Policy_ID = ch.Policy_ID
GROUP BY c.Customer_Details
ORDER BY MAX(ch.Amount_Claimed) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which customer made the largest amount of claim in a single claim? Return the customer details.*/


SELECT c.Customer_Details 
FROM Customers c 
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID 
INNER JOIN Claim_Headers ch ON p.Policy_ID = ch.Policy_ID 
ORDER BY ch.Amount_Claimed DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer What is the name of the customer who has made the minimum amount of payment in one claim?*/


SELECT c.Customer_Details 
FROM Customers c 
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID 
INNER JOIN Claim_Headers ch ON p.Policy_ID = ch.Policy_ID 
WHERE ch.Amount_Paid = (SELECT MIN(Amount_Paid) FROM Claim_Headers) 
GROUP BY c.Customer_Details

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which customer made the smallest amount of claim in one claim? Return the customer details.*/


SELECT c.Customer_Details 
FROM Customers c 
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID 
INNER JOIN Claim_Headers ch ON p.Policy_ID = ch.Policy_ID 
ORDER BY ch.Amount_Claimed ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the names of customers who have no policies associated.*/


SELECT c.Customer_Details 
FROM Customers c 
LEFT JOIN Policies p 
ON c.Customer_ID = p.Customer_ID 
WHERE p.Customer_ID IS NULL

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer What are the names of customers who do not have any policies?*/


SELECT c.Customer_Details 
FROM Customers c 
LEFT JOIN Policies p 
ON c.Customer_ID = p.Customer_ID 
WHERE p.Policy_ID IS NULL

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer How many claim processing stages are there in total?*/


SELECT COUNT(*) 
FROM Claims_Processing_Stages

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the number of distinct stages in claim processing.*/


SELECT COUNT(DISTINCT Claim_Stage_ID) 
FROM Claims_Processing_Stages

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer What is the name of the claim processing stage that most of the claims are on?*/


SELECT Claim_Status_Name
FROM Claims_Processing_Stages
INNER JOIN Claims_Processing
ON Claims_Processing_Stages.Claim_Stage_ID = Claims_Processing.Claim_Stage_ID
GROUP BY Claim_Status_Name
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which claim processing stage has the most claims? Show the claim status name.*/


SELECT Claim_Status_Name, COUNT(*) AS Total_Claims
FROM Claims_Processing_Stages
INNER JOIN Claims_Processing
ON Claims_Processing_Stages.Claim_Stage_ID = Claims_Processing.Claim_Stage_ID
GROUP BY Claim_Status_Name
ORDER BY Total_Claims DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the names of customers whose name contains "Diana".*/


SELECT Customer_Details 
FROM Customers 
WHERE Customer_Details LIKE '%Diana%'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which customers have the substring "Diana" in their names? Return the customer details.*/


SELECT Customer_Details 
FROM Customers 
WHERE Customer_Details LIKE '%Diana%'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the names of the customers who have an deputy policy.*/


SELECT c.Customer_Details 
FROM Customers c 
INNER JOIN Policies p 
ON c.Customer_ID = p.Customer_ID 
WHERE p.Policy_Type_Code = 'Deputy'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which customers have an insurance policy with the type code "Deputy"? Give me the customer details.*/


SELECT c.Customer_Details 
FROM Customers c 
INNER JOIN Policies p 
ON c.Customer_ID = p.Customer_ID 
WHERE p.Policy_Type_Code = 'Deputy'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the names of customers who either have an deputy policy or uniformed policy.*/


SELECT c.Customer_Details 
FROM Customers c 
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID 
WHERE p.Policy_Type_Code IN ('Deputy', 'Uniformed') 

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which customers have an insurance policy with the type code "Deputy" or "Uniform"? Return the customer details.*/


SELECT c.Customer_Details 
FROM Customers c 
INNER JOIN Policies p 
ON c.Customer_ID = p.Customer_ID 
WHERE p.Policy_Type_Code IN ('Deputy', 'Uniform')

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the names of all the customers and staff members.*/


SELECT c.Customer_Details, s.Staff_Details
FROM Customers c
INNER JOIN Staff s
ON c.Customer_ID = s.Staff_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer What are the names of the customers and staff members?*/


SELECT c.Customer_Details, s.Staff_Details
FROM Customers c
INNER JOIN Staff s
ON c.Customer_ID = s.Staff_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the number of records of each policy type and its type code.*/


SELECT Policy_Type_Code, COUNT(*) AS Number_of_Records
FROM Policies
GROUP BY Policy_Type_Code

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to For each policy type, return its type code and its count in the record.*/


SELECT Policy_Type_Code, COUNT(*) 
FROM Policies 
GROUP BY Policy_Type_Code

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the name of the customer that has been involved in the most policies.*/


SELECT c.Customer_Details, COUNT(p.Policy_ID) AS Policy_Count
FROM Customers c
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID
GROUP BY c.Customer_Details
ORDER BY Policy_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Which customer have the most policies? Give me the customer details.*/


SELECT c.Customer_Details 
FROM Customers c 
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID 
GROUP BY c.Customer_ID 
ORDER BY COUNT(p.Policy_ID) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer What is the description of the claim status "Open"?*/


SELECT Claim_Status_Description 
FROM Claims_Processing_Stages 
WHERE Claim_Status_Name = 'Open'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the description of the claim status "Open".*/


SELECT Claim_Status_Description 
FROM Claims_Processing_Stages 
WHERE Claim_Status_Name = 'Open'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer How many distinct claim outcome codes are there?*/


SELECT COUNT(DISTINCT Claim_Outcome_Code) 
FROM Claims_Processing

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Count the number of distinct claim outcome codes.*/


SELECT COUNT(DISTINCT Claim_Outcome_Code) 
FROM Claims_Processing

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to answer Which customer is associated with the latest policy?*/


SELECT c.Customer_ID
FROM Customers c
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID
WHERE p.End_Date = (SELECT MAX(End_Date) FROM Policies)
ORDER BY p.End_Date DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_Details)
Staff(Staff_ID, Staff_Details)
Policies(Policy_ID, Customer_ID, Policy_Type_Code, Start_Date, End_Date)
Claim_Headers(Claim_Header_ID, Claim_Status_Code, Claim_Type_Code, Policy_ID, Date_of_Claim, Date_of_Settlement, Amount_Claimed, Amount_Piad)
Claims_Documents(Claim_ID, Document_Type_Code, Created_by_Staff_ID, Created_Date)
Claims_Processing_Stages(Claim_Stage_ID, Next_Claim_Stage_ID, Claim_Status_Name, Claim_Status_Description)
Claims_Processing(Claim_Processing_ID, Claim_ID, Claim_Outcome_Code, Claim_Stage_ID, Staff_ID)

Create a SQL request to Find the customer who started a policy most recently.*/


SELECT c.Customer_ID, MAX(p.Start_Date) 
FROM Customers c 
INNER JOIN Policies p ON c.Customer_ID = p.Customer_ID 
GROUP BY c.Customer_ID 
ORDER BY MAX(p.Start_Date) DESC 
LIMIT 1

