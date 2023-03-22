/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find all the phone numbers.*/


SELECT Customer_Phone 
FROM Available_Policies

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are all the phone numbers?*/


SELECT Customer_Phone
FROM Available_Policies

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are the customer phone numbers under the policy "Life Insurance"?*/


SELECT Customers.Customer_Phone 
FROM Customers 
INNER JOIN Customers_Policies 
ON Customers.Customer_ID = Customers_Policies.Customer_ID 
INNER JOIN Available_Policies 
ON Customers_Policies.Policy_ID = Available_Policies.Policy_ID 
WHERE Available_Policies.policy_type_code = 'Life Insurance'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are the phone numbers of customers using the policy with the code "Life Insurance"?*/


SELECT c.Customer_Phone 
FROM Customers c 
INNER JOIN Customers_Policies cp ON c.Customer_ID = cp.Customer_ID 
INNER JOIN Available_Policies ap ON cp.Policy_ID = ap.Policy_ID 
WHERE ap.policy_type_code = 'Life Insurance'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer Which policy type has the most records in the database?*/


SELECT policy_type_code, COUNT(*) AS num_records
FROM Available_Policies
GROUP BY policy_type_code
ORDER BY num_records DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer Which policy type appears most frequently in the available policies?*/


SELECT policy_type_code, COUNT(*) AS Frequency 
FROM Available_Policies 
GROUP BY policy_type_code 
ORDER BY Frequency DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are all the customer phone numbers under the most popular policy type?*/


SELECT Customer_Phone 
FROM Available_Policies 
WHERE policy_type_code = (SELECT policy_type_code 
                          FROM Available_Policies 
                          GROUP BY policy_type_code 
                          ORDER BY COUNT(*) DESC 
                          LIMIT 1) 
ORDER BY Customer_Phone

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the phone numbers of customers using the most common policy type among the available policies.*/


SELECT Customer_Phone 
FROM Available_Policies 
GROUP BY policy_type_code 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the policy type used by more than 4 customers.*/


SELECT policy_type_code, COUNT(*) 
FROM Available_Policies 
INNER JOIN Customers_Policies 
ON Available_Policies.Policy_ID = Customers_Policies.Policy_ID 
GROUP BY policy_type_code 
HAVING COUNT(*) > 4

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the policy types more than 4 customers use. Show their type code.*/


SELECT policy_type_code
FROM Available_Policies
WHERE Customer_Phone IN (SELECT Customer_Phone
                        FROM Available_Policies
                        GROUP BY Customer_Phone
                        HAVING COUNT(*) > 4)
GROUP BY policy_type_code

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the total and average amount of settlements.*/


SELECT SUM(Settlement_Amount) AS Total_Settlement_Amount, AVG(Settlement_Amount) AS Average_Settlement_Amount
FROM Settlements

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Return the sum and average of all settlement amounts.*/


SELECT SUM(Settlement_Amount) AS Total_Settlement_Amount, AVG(Settlement_Amount) AS Average_Settlement_Amount
FROM Settlements

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the name of services that have been used for more than 2 times in first notification of loss.*/


SELECT Service_name 
FROM Services 
INNER JOIN First_Notification_of_Loss 
ON Services.Service_ID = First_Notification_of_Loss.Service_ID 
GROUP BY Service_name 
HAVING COUNT(*) > 2

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Which services have been used more than twice in first notification of loss? Return the service name.*/


SELECT Service_name
FROM Services
WHERE Service_ID IN (SELECT Service_ID
                     FROM First_Notification_of_Loss
                     GROUP BY Service_ID
                     HAVING COUNT(*) > 2)

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What is the effective date of the claim that has the largest amount of total settlement?*/


SELECT c.Effective_Date 
FROM Claims c 
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID 
ORDER BY s.Settlement_Amount DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the claim that has the largest total settlement amount. Return the effective date of the claim.*/


SELECT c.Effective_Date
FROM Claims c
INNER JOIN Settlements s ON c.Claim_ID = s.Claim_ID
ORDER BY s.Settlement_Amount DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer How many policies are listed for the customer named "Dayana Robel"?*/


SELECT COUNT(*) 
FROM Customers 
INNER JOIN Customers_Policies 
ON Customers.Customer_ID = Customers_Policies.Customer_ID 
INNER JOIN Available_Policies 
ON Customers_Policies.Policy_ID = Available_Policies.Policy_ID 
WHERE Customers.Customer_name = 'Dayana Robel'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Count the total number of policies used by the customer named "Dayana Robel".*/


SELECT COUNT(*) 
FROM Customers 
INNER JOIN Customers_Policies 
ON Customers.Customer_ID = Customers_Policies.Customer_ID 
INNER JOIN Available_Policies 
ON Customers_Policies.Policy_ID = Available_Policies.Policy_ID 
WHERE Customers.Customer_name = 'Dayana Robel'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What is the name of the customer who has the most policies listed?*/


SELECT Customer_name 
FROM Customers 
INNER JOIN Customers_Policies 
ON Customers.Customer_ID = Customers_Policies.Customer_ID 
GROUP BY Customer_name 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Which customer uses the most policies? Give me the customer name.*/


SELECT Customer_name 
FROM Customers 
INNER JOIN Customers_Policies 
ON Customers.Customer_ID = Customers_Policies.Customer_ID 
GROUP BY Customer_name 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are all the policy types of the customer named "Dayana Robel"?*/


SELECT p.policy_type_code 
FROM Customers c 
INNER JOIN Customers_Policies cp ON c.Customer_ID = cp.Customer_ID 
INNER JOIN Available_Policies p ON cp.Policy_ID = p.Policy_ID 
WHERE c.Customer_name = 'Dayana Robel'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Tell me the types of the policy used by the customer named "Dayana Robel".*/


SELECT p.policy_type_code 
FROM Customers c 
INNER JOIN Customers_Policies cp ON c.Customer_ID = cp.Customer_ID 
INNER JOIN Available_Policies p ON cp.Policy_ID = p.Policy_ID 
WHERE c.Customer_name = 'Dayana Robel'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are all the policy types of the customer that has the most policies listed?*/


SELECT policy_type_code 
FROM Available_Policies 
INNER JOIN Customers_Policies 
ON Available_Policies.Policy_ID = Customers_Policies.Policy_ID 
WHERE Customers_Policies.Customer_ID = (SELECT Customer_ID 
                                       FROM Customers_Policies 
                                       GROUP BY Customer_ID 
                                       ORDER BY COUNT(*) DESC 
                                       LIMIT 1) 
GROUP BY policy_type_code

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to List all the policy types used by the customer enrolled in the most policies.*/


SELECT policy_type_code 
FROM Available_Policies 
INNER JOIN Customers_Policies 
ON Available_Policies.Policy_ID = Customers_Policies.Policy_ID 
INNER JOIN Customers 
ON Customers_Policies.Customer_ID = Customers.Customer_ID 
GROUP BY policy_type_code 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to List all the services in the alphabetical order.*/


SELECT Service_name 
FROM Services 
ORDER BY Service_name ASC

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Give me a list of all the service names sorted alphabetically.*/


SELECT Service_name
FROM Services
ORDER BY Service_name ASC

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer How many services are there?*/


SELECT COUNT(*) FROM Services

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Count the total number of available services.*/


SELECT COUNT(Service_ID) FROM Services

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the names of users who do not have a first notification of loss record.*/


SELECT Customer_name 
FROM Customers 
WHERE Customer_ID NOT IN (SELECT Customer_ID FROM First_Notification_of_Loss)

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Which customers do not have a first notification of loss record? Give me the customer names.*/


SELECT Customer_name
FROM Customers
WHERE Customer_ID NOT IN (SELECT Customer_ID FROM First_Notification_of_Loss)

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the names of customers who have used either the service "Close a policy" or the service "Upgrade a policy".*/


SELECT c.Customer_name 
FROM Customers c 
INNER JOIN Services s 
ON c.Customer_ID = s.Service_ID 
INNER JOIN Customers_Policies cp 
ON c.Customer_ID = cp.Customer_ID 
WHERE s.Service_name = 'Close a policy' 
OR s.Service_name = 'Upgrade a policy'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Which customers have used the service named "Close a policy" or "Upgrade a policy"? Give me the customer names.*/


SELECT c.Customer_name 
FROM Customers c 
INNER JOIN Services s 
ON c.Customer_ID = s.Service_ID 
INNER JOIN Customers_Policies cp 
ON c.Customer_ID = cp.Customer_ID 
INNER JOIN Available_Policies ap 
ON cp.Policy_ID = ap.Policy_ID 
WHERE s.Service_name IN ('Close a policy', 'Upgrade a policy')

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the names of customers who have used both the service "Close a policy" and the service "New policy application".*/


SELECT c.Customer_name 
FROM Customers c 
INNER JOIN Services s 
ON c.Customer_ID = s.Service_ID 
INNER JOIN Available_Policies ap 
ON s.Service_name = 'Close a policy' 
INNER JOIN Customers_Policies cp 
ON ap.Policy_ID = cp.Policy_ID 
INNER JOIN First_Notification_of_Loss fnol 
ON cp.Customer_ID = fnol.Customer_ID 
INNER JOIN Claims cl 
ON fnol.FNOL_ID = cl.FNOL_ID 
INNER JOIN Settlements st 
ON cl.Claim_ID = st.Claim_ID 
WHERE s.Service_name = 'New policy application' 
GROUP BY c.Customer_name

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Which customers have used both the service named "Close a policy" and the service named "Upgrade a policy"? Give me the customer names.*/


SELECT c.Customer_name 
FROM Customers c 
INNER JOIN Services s1 ON s1.Service_name = 'Close a policy' 
INNER JOIN Services s2 ON s2.Service_name = 'Upgrade a policy' 
INNER JOIN First_Notification_of_Loss fnol1 ON fnol1.Service_ID = s1.Service_ID 
INNER JOIN First_Notification_of_Loss fnol2 ON fnol2.Service_ID = s2.Service_ID 
WHERE fnol1.Customer_ID = fnol2.Customer_ID 
AND c.Customer_ID = fnol1.Customer_ID

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the IDs of customers whose name contains "Diana".*/


SELECT Customer_ID 
FROM Customers 
WHERE Customer_name LIKE '%Diana%'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are the IDs of customers who have "Diana" in part of their names?*/


SELECT Customer_ID 
FROM Customers 
WHERE Customer_name LIKE '%Diana%'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are the maximum and minimum settlement amount on record?*/


SELECT MAX(Settlement_Amount) AS Max_Settlement_Amount, MIN(Settlement_Amount) AS Min_Settlement_Amount
FROM Settlements

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Find the maximum and minimum settlement amount.*/


SELECT MAX(Settlement_Amount) AS Max_Settlement_Amount, MIN(Settlement_Amount) AS Min_Settlement_Amount
FROM Settlements

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to List all the customers in increasing order of IDs.*/


SELECT Customer_ID, Customer_name
FROM Customers
ORDER BY Customer_ID ASC

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What is the ordered list of customer ids?*/


SELECT Customer_ID
FROM Customers
ORDER BY Customer_ID ASC

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to Retrieve the open and close dates of all the policies associated with the customer whose name contains "Diana"*/


SELECT Customers.Customer_name, Available_Policies.Customer_Phone, Customers_Policies.Date_Opened, Customers_Policies.Date_Closed
FROM Customers
INNER JOIN Customers_Policies ON Customers.Customer_ID = Customers_Policies.Customer_ID
INNER JOIN Available_Policies ON Customers_Policies.Policy_ID = Available_Policies.Policy_ID
WHERE Customers.Customer_name LIKE '%Diana%'

/*Here are Mysql tables, with their properties:

Customers(Customer_ID, Customer_name)
Services(Service_ID, Service_name)
Available_Policies(Policy_ID, policy_type_code, Customer_Phone, UNIQUE)
Customers_Policies(Customer_ID, Policy_ID, Date_Opened, Date_Closed)
First_Notification_of_Loss(FNOL_ID, Customer_ID, Policy_ID, Service_ID, UNIQUE)
Claims(Claim_ID, FNOL_ID, Effective_Date, UNIQUE)
Settlements(Settlement_ID, Claim_ID, Effective_Date, Settlement_Amount, UNIQUE)

Create a SQL request to answer What are the open and close dates of all the policies used by the customer who have "Diana" in part of their names?*/


SELECT Customers.Customer_name, Available_Policies.Date_Opened, Available_Policies.Date_Closed
FROM Customers
INNER JOIN Customers_Policies ON Customers.Customer_ID = Customers_Policies.Customer_ID
INNER JOIN Available_Policies ON Customers_Policies.Policy_ID = Available_Policies.Policy_ID
WHERE Customers.Customer_name LIKE '%Diana%'

