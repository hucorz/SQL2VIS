/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the number of accounts.*/


SELECT COUNT(*) AS 'Number of Accounts' FROM Accounts

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many accounts are there?*/


SELECT COUNT(*) AS 'Number of Accounts' FROM Accounts

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many customers have opened an account?*/


SELECT COUNT(*) 
FROM Accounts 
GROUP BY customer_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of customers who have an account.*/


SELECT COUNT(*) 
FROM Customers c 
INNER JOIN Accounts a 
ON c.customer_id = a.customer_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the id, the date of account opened, the account name, and other account detail for all accounts.*/


SELECT account_id, date_account_opened, account_name, other_account_details 
FROM Accounts

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the ids, date opened, name, and other details for all accounts?*/


SELECT account_id, date_account_opened, account_name, other_account_details 
FROM Accounts

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the id, the account name, and other account details for all accounts by the customer with first name 'Meaghan'.*/


SELECT account_id, account_name, other_account_details 
FROM Accounts 
WHERE customer_id IN (SELECT customer_id 
                      FROM Customers 
                      WHERE customer_first_name = 'Meaghan')

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the ids, names, dates of opening, and other details for accounts corresponding to the customer with the first name "Meaghan"?*/


SELECT a.account_id, a.account_name, a.date_account_opened, a.other_account_details 
FROM Accounts a 
INNER JOIN Customers c 
ON a.customer_id = c.customer_id 
WHERE c.customer_first_name = 'Meaghan'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the account name and other account detail for all accounts by the customer with first name Meaghan and last name Keeling.*/


SELECT account_name, other_account_details 
FROM Accounts 
INNER JOIN Customers 
ON Accounts.customer_id = Customers.customer_id 
WHERE customer_first_name = 'Meaghan' 
AND customer_last_name = 'Keeling'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the names and other details for accounts corresponding to the customer named Meaghan Keeling?*/


SELECT customer_first_name, customer_middle_initial, customer_last_name, account_name, other_account_details 
FROM Customers 
INNER JOIN Accounts 
ON Customers.customer_id = Accounts.customer_id 
WHERE customer_first_name = 'Meaghan' 
AND customer_last_name = 'Keeling'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the first name and last name for the customer with account name 900.*/


SELECT customer_first_name, customer_last_name 
FROM Customers 
INNER JOIN Accounts 
ON Customers.customer_id = Accounts.customer_id 
WHERE Accounts.account_name = '900'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the full names of customers with the account name 900?*/


SELECT customer_first_name, customer_middle_initial, customer_last_name 
FROM Customers 
INNER JOIN Accounts 
ON Customers.customer_id = Accounts.customer_id 
WHERE Accounts.account_name = '900'

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many customers don't have an account?*/


SELECT COUNT(*)
FROM Customers c
LEFT JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.account_id IS NULL

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of customers who do not have an account.*/


SELECT COUNT(*) 
FROM Customers c 
LEFT JOIN Accounts a 
ON c.customer_id = a.customer_id 
WHERE a.account_id IS NULL

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the unique first names, last names, and phone numbers for all customers with any account.*/


SELECT customer_first_name, customer_last_name, phone_number
FROM Customers
INNER JOIN Accounts
ON Customers.customer_id = Accounts.customer_id
GROUP BY customer_first_name, customer_last_name, phone_number

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the distinct first names, last names, and phone numbers for customers with accounts?*/


SELECT DISTINCT customer_first_name, customer_last_name, phone_number 
FROM Customers 
INNER JOIN Accounts 
ON Customers.customer_id = Accounts.customer_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show customer ids who don't have an account.*/


SELECT customer_id
FROM Customers
WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the customer ids for customers who do not have an account?*/


SELECT customer_id
FROM Customers
WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to How many accounts does each customer have? List the number and customer id.*/


SELECT COUNT(account_id) AS 'Number of Accounts', customer_id 
FROM Accounts 
GROUP BY customer_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of accounts corresponding to each customer id.*/


SELECT customer_id, COUNT(account_id) AS num_accounts
FROM Accounts
GROUP BY customer_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to What is the customer id, first and last name with most number of accounts.*/


SELECT c.customer_id, c.customer_first_name, c.customer_last_name
FROM Customers c
INNER JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.customer_first_name, c.customer_last_name
ORDER BY COUNT(a.account_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Return the id and full name of the customer with the most accounts.*/


SELECT c.customer_id, CONCAT(c.customer_first_name, ' ', c.customer_middle_initial, ' ', c.customer_last_name) AS full_name
FROM Customers c
INNER JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id
ORDER BY COUNT(a.account_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show id, first name and last name for all customers and the number of accounts.*/


SELECT customer_id, customer_first_name, customer_last_name, COUNT(account_id) AS 'Number of Accounts'
FROM Customers
LEFT JOIN Accounts ON Customers.customer_id = Accounts.customer_id
GROUP BY customer_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the the full names and ids for all customers, and how many accounts does each have?*/


SELECT c.customer_id, c.customer_first_name, c.customer_middle_initial, c.customer_last_name, COUNT(a.account_id) AS 'Number of Accounts'
FROM Customers c
LEFT JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.customer_first_name, c.customer_middle_initial, c.customer_last_name

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show first name and id for all customers with at least 2 accounts.*/


SELECT customer_first_name, customer_id 
FROM Customers 
WHERE customer_id IN (SELECT customer_id 
                      FROM Accounts 
                      GROUP BY customer_id 
                      HAVING COUNT(*) >= 2)

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the first names and ids for customers who have two or more accounts?*/


SELECT customer_first_name, customer_id
FROM Customers
WHERE customer_id IN (SELECT customer_id
                      FROM Accounts
                      GROUP BY customer_id
                      HAVING COUNT(*) >= 2)

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the number of customers.*/


SELECT COUNT(*) AS 'Number of Customers' FROM Customers

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of customers.*/


SELECT COUNT(customer_id) FROM Customers

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the number of customers for each gender.*/


SELECT gender, COUNT(customer_id) AS 'Number of Customers'
FROM Customers
GROUP BY gender

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many customers are there of each gender?*/


SELECT gender, COUNT(*) AS 'Number of Customers'
FROM Customers
GROUP BY gender

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many transactions do we have?*/


SELECT COUNT(*) AS 'Number of Transactions' FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of transactions.*/


SELECT COUNT(transaction_id) FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to How many transaction does each account have? Show the number and account id.*/


SELECT Accounts.account_id, COUNT(Financial_Transactions.transaction_id) AS 'Number of Transactions'
FROM Accounts
INNER JOIN Financial_Transactions
ON Accounts.account_id = Financial_Transactions.account_id
GROUP BY Accounts.account_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of financial transactions that correspond to each account id.*/


SELECT account_id, COUNT(transaction_id) AS 'Number of Transactions'
FROM Financial_Transactions
GROUP BY account_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many transaction does account with name 337 have?*/


SELECT COUNT(transaction_id) 
FROM Financial_Transactions 
WHERE account_id IN (SELECT account_id 
                     FROM Accounts 
                     WHERE account_name = '337') 

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of financial transactions that the account with the name 337 has.*/


SELECT COUNT(*) 
FROM Financial_Transactions 
WHERE account_id IN (SELECT account_id 
                     FROM Accounts 
                     WHERE account_name = '337')

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What is the average, minimum, maximum, and total transaction amount?*/


SELECT AVG(transaction_amount) AS 'Average Transaction Amount', MIN(transaction_amount) AS 'Minimum Transaction Amount', MAX(transaction_amount) AS 'Maximum Transaction Amount', SUM(transaction_amount) AS 'Total Transaction Amount'
FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Return the average, minimum, maximum, and total transaction amounts.*/


SELECT AVG(transaction_amount) AS 'Average Transaction Amount', MIN(transaction_amount) AS 'Minimum Transaction Amount', MAX(transaction_amount) AS 'Maximum Transaction Amount', SUM(transaction_amount) AS 'Total Transaction Amount' FROM Financial_Transactions

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show ids for all transactions whose amounts are greater than the average.*/


SELECT transaction_id 
FROM Financial_Transactions 
WHERE transaction_amount > (SELECT AVG(transaction_amount) FROM Financial_Transactions)

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the ids for transactions that have an amount greater than the average amount of a transaction?*/


SELECT transaction_id 
FROM Financial_Transactions 
WHERE transaction_amount > (SELECT AVG(transaction_amount) FROM Financial_Transactions)

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the transaction types and the total amount of transactions.*/


SELECT transaction_type, SUM(transaction_amount) AS Total_Amount
FROM Financial_Transactions
GROUP BY transaction_type

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are total transaction amounts for each transaction type?*/


SELECT transaction_type, SUM(transaction_amount) AS Total_Transaction_Amount
FROM Financial_Transactions
GROUP BY transaction_type

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the account name, id and the number of transactions for each account.*/


SELECT Accounts.account_name, Accounts.account_id, COUNT(Financial_Transactions.transaction_id) AS 'Number of Transactions'
FROM Accounts
LEFT JOIN Financial_Transactions
ON Accounts.account_id = Financial_Transactions.account_id
GROUP BY Accounts.account_name, Accounts.account_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Return the names and ids of each account, as well as the number of transactions.*/


SELECT Accounts.account_id, Accounts.account_name, COUNT(Financial_Transactions.transaction_id) AS 'Number of Transactions'
FROM Accounts
LEFT JOIN Financial_Transactions ON Accounts.account_id = Financial_Transactions.account_id
GROUP BY Accounts.account_id, Accounts.account_name

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the account id with most number of transactions.*/


SELECT account_id, COUNT(transaction_id) AS 'Number of Transactions' 
FROM Financial_Transactions 
GROUP BY account_id 
ORDER BY COUNT(transaction_id) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What is the id of the account with the most transactions?*/


SELECT account_id
FROM Financial_Transactions
GROUP BY account_id
ORDER BY COUNT(transaction_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the account id and name with at least 4 transactions.*/


SELECT Accounts.account_id, Accounts.account_name 
FROM Accounts 
INNER JOIN Financial_Transactions 
ON Accounts.account_id = Financial_Transactions.account_id 
GROUP BY Accounts.account_id, Accounts.account_name 
HAVING COUNT(Financial_Transactions.transaction_id) >= 4

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the ids and names of accounts with 4 or more transactions?*/


SELECT a.account_id, a.account_name 
FROM Accounts a 
INNER JOIN Financial_Transactions ft 
ON a.account_id = ft.account_id 
GROUP BY a.account_id, a.account_name 
HAVING COUNT(ft.transaction_id) >= 4

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show all product sizes.*/


SELECT product_size FROM Products

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the different product sizes?*/


SELECT DISTINCT product_size 
FROM Products

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show all product colors.*/


SELECT product_color FROM Products

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the different product colors?*/


SELECT DISTINCT product_color 
FROM Products

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the invoice number and the number of transactions for each invoice.*/


SELECT Invoices.invoice_number, COUNT(Financial_Transactions.transaction_id) AS 'Number of Transactions'
FROM Invoices
INNER JOIN Financial_Transactions ON Invoices.invoice_number = Financial_Transactions.invoice_number
GROUP BY Invoices.invoice_number

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many transactions correspond to each invoice number?*/


SELECT invoice_number, COUNT(transaction_id) AS 'Number of Transactions'
FROM Financial_Transactions
GROUP BY invoice_number

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What is the invoice number and invoice date for the invoice with most number of transactions?*/


SELECT Invoices.invoice_number, Invoices.invoice_date
FROM Invoices
INNER JOIN Financial_Transactions ON Invoices.invoice_number = Financial_Transactions.invoice_number
GROUP BY Invoices.invoice_number, Invoices.invoice_date
ORDER BY COUNT(Financial_Transactions.transaction_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What is the invoice number and invoice date corresponding to the invoice with the greatest number of transactions?*/


SELECT Invoices.invoice_number, Invoices.invoice_date
FROM Invoices
INNER JOIN Financial_Transactions ON Invoices.invoice_number = Financial_Transactions.invoice_number
GROUP BY Invoices.invoice_number, Invoices.invoice_date
ORDER BY COUNT(Financial_Transactions.transaction_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many invoices do we have?*/


SELECT COUNT(*) AS 'Number of Invoices'
FROM Invoices

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of invoices.*/


SELECT COUNT(*) FROM Invoices

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show invoice dates and order id and details for all invoices.*/


SELECT i.invoice_date, o.order_id, o.order_details 
FROM Invoices i 
INNER JOIN Orders o 
ON i.order_id = o.order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the invoice dates, order ids, and order details for all invoices?*/


SELECT i.invoice_date, o.order_id, o.order_details 
FROM Invoices i 
INNER JOIN Orders o 
ON i.order_id = o.order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the order ids and the number of invoices for each order.*/


SELECT o.order_id, COUNT(i.invoice_number) AS 'Number of Invoices'
FROM Orders o
INNER JOIN Invoices i ON o.order_id = i.order_id
GROUP BY o.order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many invoices correspond to each order id?*/


SELECT order_id, COUNT(invoice_number) AS 'Number of Invoices'
FROM Invoices
GROUP BY order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to What is the order id and order details for the order more than two invoices.*/


SELECT o.order_id, o.order_details 
FROM Orders o 
INNER JOIN Invoices i ON o.order_id = i.order_id 
GROUP BY o.order_id, o.order_details 
HAVING COUNT(i.invoice_number) > 2

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Return the order ids and details for orderes with two or more invoices.*/


SELECT o.order_id, o.order_details 
FROM Orders o 
INNER JOIN Invoices i 
ON o.order_id = i.order_id 
GROUP BY o.order_id 
HAVING COUNT(i.invoice_number) >= 2

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What is the customer last name, id and phone number with most number of orders?*/


SELECT c.customer_id, c.customer_last_name, c.phone_number, COUNT(o.order_id) AS order_count
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY order_count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Return the last name, id and phone number of the customer who has made the greatest number of orders.*/


SELECT customer_last_name, customer_id, phone_number 
FROM Customers 
WHERE customer_id = (SELECT customer_id 
                     FROM Orders 
                     GROUP BY customer_id 
                     ORDER BY COUNT(*) DESC 
                     LIMIT 1)

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show all product names without an order.*/


SELECT Products.product_name
FROM Products
LEFT JOIN Order_Items
ON Products.product_id = Order_Items.product_id
WHERE Order_Items.order_id IS NULL

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the names of products that have never been ordered?*/


SELECT Products.product_name
FROM Products
LEFT JOIN Order_Items
ON Products.product_id = Order_Items.product_id
WHERE Order_Items.order_item_id IS NULL

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show all product names and the total quantity ordered for each product name.*/


SELECT Products.product_name, SUM(Order_Items.product_quantity) AS Total_Quantity_Ordered
FROM Products
INNER JOIN Order_Items ON Products.product_id = Order_Items.product_id
GROUP BY Products.product_name

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer What are the different product names, and what is the sum of quantity ordered for each product?*/


SELECT Products.product_name, SUM(Order_Items.product_quantity) AS Total_Quantity
FROM Products
INNER JOIN Order_Items ON Products.product_id = Order_Items.product_id
GROUP BY Products.product_name

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the order ids and the number of items in each order.*/


SELECT o.order_id, COUNT(oi.order_item_id) AS 'Number of Items'
FROM Orders o
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY o.order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many order items correspond to each order id?*/


SELECT order_id, COUNT(order_item_id) AS 'Number of Order Items'
FROM Order_Items
GROUP BY order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show the product ids and the number of unique orders containing each product.*/


SELECT product_id, COUNT(DISTINCT order_id) AS 'Number of Unique Orders'
FROM Order_Items
GROUP BY product_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many distinct order ids correspond to each product?*/


SELECT product_id, COUNT(DISTINCT order_id) AS 'Number of Distinct Order IDs'
FROM Order_Items
GROUP BY product_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show all product names and the number of customers having an order on each product.*/


SELECT Products.product_name, COUNT(Orders.customer_id) AS 'Number of Customers'
FROM Products
INNER JOIN Order_Items ON Products.product_id = Order_Items.product_id
INNER JOIN Orders ON Order_Items.order_id = Orders.order_id
GROUP BY Products.product_name

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to What are teh names of the different products, as well as the number of customers who have ordered each product.*/


SELECT Products.product_name, COUNT(Orders.customer_id) AS 'Number of Customers'
FROM Products
INNER JOIN Order_Items ON Products.product_id = Order_Items.product_id
INNER JOIN Orders ON Order_Items.order_id = Orders.order_id
GROUP BY Products.product_name

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show order ids and the number of products in each order.*/


SELECT o.order_id, COUNT(oi.product_id) AS 'Number of Products'
FROM Orders o
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY o.order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many different products correspond to each order id?*/


SELECT o.order_id, COUNT(DISTINCT oi.product_id) AS 'Number of Different Products'
FROM Orders o
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY o.order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Show order ids and the total quantity in each order.*/


SELECT o.order_id, SUM(oi.product_quantity) AS total_quantity
FROM Orders o
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY o.order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Give the order ids for all orders, as well as the total product quantity in each.*/


SELECT o.order_id, SUM(oi.product_quantity) AS total_product_quantity
FROM Orders o
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY o.order_id

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to answer How many products were not included in any order?*/


SELECT COUNT(*)
FROM Products p
WHERE NOT EXISTS (SELECT * FROM Order_Items oi WHERE oi.product_id = p.product_id)

/*Here are Mysql tables, with their properties:

Customers(customer_id, customer_first_name, customer_middle_initial, customer_last_name, gender, email_address, login_name, login_password, phone_number, town_city, state_county_province, country)
Orders(order_id, customer_id, date_order_placed, order_details)
Invoices(invoice_number, order_id, invoice_date)
Accounts(account_id, customer_id, date_account_opened, account_name, other_account_details)
Product_Categories(production_type_code, product_type_description, vat_rating)
Products(product_id, parent_product_id, production_type_code, unit_price, product_name, product_color, product_size)
Financial_Transactions(transaction_id, account_id, invoice_number, transaction_type, transaction_date, transaction_amount, transaction_comment, other_transaction_details)
Order_Items(order_item_id, order_id, product_id, product_quantity, other_order_item_details)
Invoice_Line_Items(order_item_id, invoice_number, product_id, product_title, product_quantity, product_price, derived_product_cost, derived_vat_payable, derived_total_cost)

Create a SQL request to Count the number of products that were never ordered.*/


SELECT COUNT(*)
FROM Products
WHERE product_id NOT IN (SELECT product_id FROM Order_Items)

