/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many accounts do we have?*/


SELECT COUNT(*) AS 'Number of Accounts' FROM Accounts

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Count the number of accounts.*/


SELECT COUNT(account_id) FROM Accounts

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show ids, customer ids, names for all accounts.*/


SELECT account_id, customer_id, account_name 
FROM Accounts

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the account ids, customer ids, and account names for all the accounts?*/


SELECT Accounts.account_id, Accounts.customer_id, Accounts.account_name
FROM Accounts

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show other account details for account with name 338.*/


SELECT other_account_details 
FROM Accounts 
WHERE account_name = '338'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the other account details for the account with the name 338?*/


SELECT other_account_details 
FROM Accounts 
WHERE account_name = '338'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What is the first name, last name, and phone of the customer with account name 162?*/


SELECT c.customer_first_name, c.customer_last_name, c.customer_phone
FROM Accounts a
INNER JOIN Customers c ON a.customer_id = c.customer_id
WHERE a.account_name = '162'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Give the full name and phone of the customer who has the account name 162.*/


SELECT customer_first_name, customer_last_name, customer_phone
FROM Customers
INNER JOIN Accounts
ON Customers.customer_id = Accounts.customer_id
WHERE Accounts.account_name = '162'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many accounts does the customer with first name Art and last name Turcotte have?*/


SELECT COUNT(*) 
FROM Accounts a 
INNER JOIN Customers c 
ON a.customer_id = c.customer_id 
WHERE c.customer_first_name = 'Art' 
AND c.customer_last_name = 'Turcotte'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Return the number of accounts that the customer with the first name Art and last name Turcotte has.*/


SELECT COUNT(*) 
FROM Accounts 
INNER JOIN Customers 
ON Accounts.customer_id = Customers.customer_id 
WHERE Customers.customer_first_name = 'Art' 
AND Customers.customer_last_name = 'Turcotte'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show all customer ids and the number of accounts for each customer.*/


SELECT c.customer_id, COUNT(a.account_id) AS 'Number of Accounts'
FROM Customers c
LEFT JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many accounts are there for each customer id?*/


SELECT customer_id, COUNT(account_id) AS 'Number of Accounts'
FROM Accounts
GROUP BY customer_id

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the customer id and number of accounts with most accounts.*/


SELECT customer_id, COUNT(account_id) AS num_accounts 
FROM Accounts 
GROUP BY customer_id 
ORDER BY num_accounts DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What is the customer id of the customer with the most accounts, and how many accounts does this person have?*/


SELECT customer_id, COUNT(*) AS num_accounts
FROM Accounts
GROUP BY customer_id
ORDER BY num_accounts DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to What is the customer first, last name and id with least number of accounts.*/


SELECT customer_first_name, customer_last_name, customer_id
FROM Customers
WHERE customer_id IN (SELECT customer_id
                      FROM Accounts
                      GROUP BY customer_id
                      ORDER BY COUNT(*) ASC
                      LIMIT 1)


/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Give the full name and customer id of the customer with the fewest accounts.*/


SELECT customer_first_name, customer_last_name, customer_id
FROM Customers
WHERE customer_id IN (SELECT customer_id
                      FROM Accounts
                      GROUP BY customer_id
                      ORDER BY COUNT(*) ASC
                      LIMIT 1)

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the number of all customers without an account.*/


SELECT COUNT(*) 
FROM Customers 
WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many customers do not have an account?*/


SELECT COUNT(*) 
FROM Customers 
WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the first names and last names of customers without any account.*/


SELECT customer_first_name, customer_last_name
FROM Customers
WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the full names of customers who do not have any accounts?*/


SELECT customer_first_name, customer_last_name
FROM Customers
WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show distinct first and last names for all customers with an account.*/


SELECT DISTINCT customer_first_name, customer_last_name 
FROM Customers 
INNER JOIN Accounts 
ON Customers.customer_id = Accounts.customer_id

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the full names of customers who have accounts?*/


SELECT c.customer_first_name, c.customer_last_name 
FROM Accounts a 
INNER JOIN Customers c 
ON a.customer_id = c.customer_id

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many customers have an account?*/


SELECT COUNT(DISTINCT customer_id) 
FROM Accounts

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Count the number of customers who hold an account.*/


SELECT COUNT(DISTINCT customer_id) 
FROM Accounts

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many customers do we have?*/


SELECT COUNT(*) AS 'Number of Customers' FROM Customers

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Count the number of customers.*/


SELECT COUNT(*) FROM Customers

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show ids, first names, last names, and phones for all customers.*/


SELECT customer_id, customer_first_name, customer_last_name, customer_phone
FROM Customers

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the ids, full names, and phones of each customer?*/


SELECT c.customer_id, c.customer_first_name, c.customer_last_name, c.customer_phone
FROM Customers c

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What is the phone and email for customer with first name Aniyah and last name Feest?*/


SELECT customer_phone, customer_email
FROM Customers
WHERE customer_first_name = 'Aniyah' AND customer_last_name = 'Feest'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Return the phone and email of the customer with the first name Aniyah and last name Feest.*/


SELECT customer_phone, customer_email 
FROM Customers 
WHERE customer_first_name = 'Aniyah' 
AND customer_last_name = 'Feest'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the number of customer cards.*/


SELECT COUNT(*) AS 'Number of Customer Cards'
FROM Customers_Cards

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many customer cards are there?*/


SELECT COUNT(*) FROM Customers_Cards

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show ids, customer ids, card type codes, card numbers for all cards.*/


SELECT card_id, customer_id, card_type_code, card_number 
FROM Customers_Cards

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are card ids, customer ids, card types, and card numbers for each customer card?*/


SELECT c.customer_id, c.card_id, c.card_type_code, c.card_number
FROM Customers_Cards c
ORDER BY c.customer_id

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the date valid from and the date valid to for the card with card number '4560596484842'.*/


SELECT date_valid_from, date_valid_to 
FROM Customers_Cards 
WHERE card_number = '4560596484842'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the valid from and valid to dates for the card with the number 4560596484842?*/


SELECT date_valid_from, date_valid_to 
FROM Customers_Cards 
WHERE card_number = 4560596484842

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to What is the first name, last name, and phone of the customer with card 4560596484842.*/


SELECT c.customer_first_name, c.customer_last_name, c.customer_phone
FROM Customers c
INNER JOIN Customers_Cards cc ON c.customer_id = cc.customer_id
WHERE cc.card_number = '4560596484842'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Return the full name and phone of the customer who has card number 4560596484842.*/


SELECT customer_first_name, customer_last_name, customer_phone
FROM Customers
INNER JOIN Customers_Cards
ON Customers.customer_id = Customers_Cards.customer_id
WHERE card_number = 4560596484842

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many cards does customer Art Turcotte have?*/


SELECT COUNT(*) 
FROM Customers_Cards 
WHERE customer_id IN (SELECT customer_id 
                      FROM Customers 
                      WHERE customer_first_name = 'Art' 
                      AND customer_last_name = 'Turcotte') 

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Count the number of cards the customer with the first name Art and last name Turcotte has.*/


SELECT COUNT(*) 
FROM Customers 
INNER JOIN Customers_Cards 
ON Customers.customer_id = Customers_Cards.customer_id 
WHERE customer_first_name = 'Art' 
AND customer_last_name = 'Turcotte'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many debit cards do we have?*/


SELECT COUNT(*) 
FROM Customers_Cards 
WHERE card_type_code = 'debit'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Count the number of customer cards of the type Debit.*/


SELECT COUNT(*) 
FROM Customers_Cards 
WHERE card_type_code = 'Debit'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many credit cards does customer Blanche Huels have?*/


SELECT COUNT(*) 
FROM Customers_Cards 
INNER JOIN Customers 
ON Customers_Cards.customer_id = Customers.customer_id 
WHERE Customers.customer_first_name = 'Blanche' 
AND Customers.customer_last_name = 'Huels'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Count the number of credit cards that the customer with first name Blanche and last name Huels has.*/


SELECT COUNT(*) 
FROM Customers_Cards 
INNER JOIN Customers 
ON Customers_Cards.customer_id = Customers.customer_id 
WHERE Customers.customer_first_name = 'Blanche' 
AND Customers.customer_last_name = 'Huels'

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show all customer ids and the number of cards owned by each customer.*/


SELECT c.customer_id, COUNT(cc.card_id) AS 'Number of Cards'
FROM Customers c
LEFT JOIN Customers_Cards cc ON c.customer_id = cc.customer_id
GROUP BY c.customer_id

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the different customer ids, and how many cards does each one hold?*/


SELECT c.customer_id, COUNT(cc.card_id) AS 'Number of Cards'
FROM Customers c
LEFT JOIN Customers_Cards cc ON c.customer_id = cc.customer_id
GROUP BY c.customer_id

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What is the customer id with most number of cards, and how many does he have?*/


SELECT c.customer_id, COUNT(cc.card_id) AS num_cards
FROM Customers c
INNER JOIN Customers_Cards cc ON c.customer_id = cc.customer_id
GROUP BY c.customer_id
ORDER BY num_cards DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Return the id of the customer who has the most cards, as well as the number of cards.*/


SELECT c.customer_id, COUNT(cc.card_id) AS num_cards
FROM Customers c
INNER JOIN Customers_Cards cc ON c.customer_id = cc.customer_id
GROUP BY c.customer_id
ORDER BY num_cards DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show id, first and last names for all customers with at least two cards.*/


SELECT c.customer_id, c.customer_first_name, c.customer_last_name
FROM Customers c
INNER JOIN Customers_Cards cc ON c.customer_id = cc.customer_id
GROUP BY c.customer_id, c.customer_first_name, c.customer_last_name
HAVING COUNT(cc.card_id) >= 2

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the ids and full names of customers who hold two or more cards?*/


SELECT c.customer_id, c.customer_first_name, c.customer_last_name
FROM Customers c
INNER JOIN Customers_Cards cc ON c.customer_id = cc.customer_id
GROUP BY c.customer_id, c.customer_first_name, c.customer_last_name
HAVING COUNT(cc.card_id) >= 2

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to What is the customer id, first and last name with least number of accounts.*/


SELECT customer_id, customer_first_name, customer_last_name
FROM Customers
WHERE customer_id IN (SELECT customer_id
                     FROM Accounts
                     GROUP BY customer_id
                     ORDER BY COUNT(*) ASC
                     LIMIT 1)


/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Return the id and full name of the customer who has the fewest accounts.*/


SELECT c.customer_id, CONCAT(c.customer_first_name, ' ', c.customer_last_name) AS full_name
FROM Customers c
INNER JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id
ORDER BY COUNT(a.account_id) ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show all card type codes and the number of cards in each type.*/


SELECT card_type_code, COUNT(*) AS 'Number of Cards'
FROM Customers_Cards
GROUP BY card_type_code

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the different card types, and how many cards are there of each?*/


SELECT card_type_code, COUNT(*) AS 'Number of Cards'
FROM Customers_Cards
GROUP BY card_type_code

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What is the card type code with most number of cards?*/


SELECT card_type_code, COUNT(*) AS num_cards
FROM Customers_Cards
GROUP BY card_type_code
ORDER BY num_cards DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Return the code of the card type that is most common.*/


SELECT card_type_code, COUNT(*) AS count
FROM Customers_Cards
GROUP BY card_type_code
ORDER BY count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show card type codes with at least 5 cards.*/


SELECT card_type_code, COUNT(*) AS card_count
FROM Customers_Cards
GROUP BY card_type_code
HAVING COUNT(*) >= 5

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the codes of card types that have 5 or more cards?*/


SELECT card_type_code
FROM Customers_Cards
GROUP BY card_type_code
HAVING COUNT(card_id) >= 5

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show all card type codes and the number of customers holding cards in each type.*/


SELECT card_type_code, COUNT(customer_id) AS 'Number of Customers'
FROM Customers_Cards
GROUP BY card_type_code

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the different card type codes, and how many different customers hold each type?*/


SELECT card_type_code, COUNT(DISTINCT customer_id) AS num_customers
FROM Customers_Cards
GROUP BY card_type_code

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the customer ids and firstname without a credit card.*/


SELECT customer_id, customer_first_name 
FROM Customers 
WHERE customer_id NOT IN (SELECT customer_id FROM Customers_Cards)

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the ids and first names of customers who do not hold a credit card?*/


SELECT c.customer_id, c.customer_first_name
FROM Customers c
LEFT JOIN Customers_Cards cc ON c.customer_id = cc.customer_id
WHERE cc.card_id IS NULL

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show all card type codes.*/


SELECT card_type_code FROM Customers_Cards

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the different card type codes?*/


SELECT DISTINCT card_type_code FROM Customers_Cards

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the number of card types.*/


SELECT COUNT(DISTINCT card_type_code) AS 'Number of Card Types'
FROM Customers_Cards

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many different card types are there?*/


SELECT COUNT(DISTINCT card_type_code) 
FROM Customers_Cards

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show all transaction types.*/


SELECT transaction_type FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the different types of transactions?*/


SELECT DISTINCT transaction_type 
FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the number of transaction types.*/


SELECT COUNT(DISTINCT transaction_type) AS 'Number of Transaction Types' 
FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer How many different types of transactions are there?*/


SELECT COUNT(DISTINCT transaction_type) FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What is the average and total transaction amount?*/


SELECT AVG(transaction_amount) AS Average_Transaction_Amount, SUM(transaction_amount) AS Total_Transaction_Amount
FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Return the average transaction amount, as well as the total amount of all transactions.*/


SELECT AVG(transaction_amount) AS avg_transaction_amount, SUM(transaction_amount) AS total_transaction_amount
FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the card type codes and the number of transactions.*/


SELECT card_type_code, COUNT(transaction_id) AS 'Number of Transactions'
FROM Customers_Cards
INNER JOIN Financial_Transactions
ON Customers_Cards.card_id = Financial_Transactions.card_id
GROUP BY card_type_code

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the different card types, and how many transactions have been made with each?*/


SELECT card_type_code, COUNT(transaction_id) AS 'Number of Transactions'
FROM Customers_Cards
INNER JOIN Financial_Transactions
ON Customers_Cards.card_id = Financial_Transactions.card_id
GROUP BY card_type_code

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the transaction type and the number of transactions.*/


SELECT transaction_type, COUNT(transaction_type) AS 'Number of Transactions'
FROM Financial_Transactions
GROUP BY transaction_type

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the different transaction types, and how many transactions of each have taken place?*/


SELECT transaction_type, COUNT(transaction_type) AS 'Number of Transactions'
FROM Financial_Transactions
GROUP BY transaction_type

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What is the transaction type that has processed the greatest total amount in transactions?*/


SELECT transaction_type, SUM(transaction_amount) AS total_amount
FROM Financial_Transactions
GROUP BY transaction_type
ORDER BY total_amount DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Return the type of transaction with the highest total amount.*/


SELECT transaction_type, SUM(transaction_amount) AS total_amount 
FROM Financial_Transactions 
GROUP BY transaction_type 
ORDER BY total_amount DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to Show the account id and the number of transactions for each account*/


SELECT Accounts.account_id, COUNT(Financial_Transactions.transaction_id) AS 'Number of Transactions'
FROM Accounts
LEFT JOIN Financial_Transactions
ON Accounts.account_id = Financial_Transactions.account_id
GROUP BY Accounts.account_id

/*Here are Mysql tables, with their properties:

Accounts(account_id, customer_id, account_name, other_account_details)
Customers(customer_id, customer_first_name, customer_last_name, customer_address, customer_phone, customer_email, other_customer_details)
Customers_Cards(card_id, customer_id, card_type_code, card_number, date_valid_from, date_valid_to, other_card_details)
Financial_Transactions(transaction_id, previous_transaction_id, account_id, card_id, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)

Create a SQL request to answer What are the different account ids that have made financial transactions, as well as how many transactions correspond to each?*/


SELECT Accounts.account_id, COUNT(Financial_Transactions.transaction_id) AS 'Number of Transactions'
FROM Accounts
INNER JOIN Financial_Transactions
ON Accounts.account_id = Financial_Transactions.account_id
GROUP BY Accounts.account_id

