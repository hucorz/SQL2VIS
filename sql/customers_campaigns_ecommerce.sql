/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to answer How many premises are there?*/


SELECT COUNT(*) FROM Premises

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to answer What are all the distinct premise types?*/


SELECT DISTINCT premises_type FROM Premises

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Find the types and details for all premises and order by the premise type.*/


SELECT premises_type, premise_details 
FROM Premises 
ORDER BY premises_type

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show each premise type and the number of premises in that type.*/


SELECT premises_type, COUNT(*) AS 'Number of Premises'
FROM Premises
GROUP BY premises_type

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show all distinct product categories along with the number of mailshots in each category.*/


SELECT Products.product_category, COUNT(DISTINCT Mailshot_Campaigns.mailshot_id) AS 'Number of Mailshots'
FROM Products
INNER JOIN Mailshot_Campaigns
ON Products.product_category = Mailshot_Campaigns.product_category
GROUP BY Products.product_category

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show the name and phone of the customer without any mailshot.*/


SELECT customer_name, customer_phone
FROM Customers
WHERE customer_id NOT IN (SELECT customer_id FROM Mailshot_Customers)

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show the name and phone for customers with a mailshot with outcome code 'No Response'.*/


SELECT c.customer_name, c.customer_phone 
FROM Customers c 
INNER JOIN Mailshot_Customers mc ON c.customer_id = mc.customer_id 
WHERE mc.outcome_code = 'No Response'

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show the outcome code of mailshots along with the number of mailshots in each outcome code.*/


SELECT outcome_code, COUNT(*) AS 'Number of Mailshots'
FROM Mailshot_Customers
GROUP BY outcome_code

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show the names of customers who have at least 2 mailshots with outcome code 'Order'.*/


SELECT c.customer_name 
FROM Customers c 
INNER JOIN Mailshot_Customers mc ON c.customer_id = mc.customer_id 
WHERE mc.outcome_code = 'Order' 
GROUP BY c.customer_name 
HAVING COUNT(mc.mailshot_id) >= 2

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show the names of customers who have the most mailshots.*/


SELECT c.customer_name, COUNT(mc.mailshot_id) AS mailshot_count
FROM Customers c
INNER JOIN Mailshot_Customers mc ON c.customer_id = mc.customer_id
GROUP BY c.customer_name
ORDER BY mailshot_count DESC

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to What are the name and payment method of customers who have both mailshots in 'Order' outcome and mailshots in 'No Response' outcome.*/


SELECT c.customer_name, c.payment_method 
FROM Customers c 
INNER JOIN Mailshot_Customers mc1 ON c.customer_id = mc1.customer_id 
INNER JOIN Mailshot_Customers mc2 ON c.customer_id = mc2.customer_id 
WHERE mc1.outcome_code = 'Order' 
AND mc2.outcome_code = 'No Response'

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show the premise type and address type code for all customer addresses.*/


SELECT Premises.premises_type, Customer_Addresses.address_type_code
FROM Premises
INNER JOIN Customer_Addresses
ON Premises.premise_id = Customer_Addresses.premise_id

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to answer What are the distinct address type codes for all customer addresses?*/


SELECT DISTINCT address_type_code 
FROM Customer_Addresses

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show the shipping charge and customer id for customer orders with order status Cancelled or Paid.*/


SELECT customer_id, order_shipping_charges 
FROM Customer_Orders 
WHERE order_status_code IN ('Cancelled', 'Paid')

/*Here are Mysql tables, with their properties:

Premises(premise_id, premises_type, premise_details)
Products(product_id, product_category, product_name)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, customer_address, customer_login, customer_password)
Mailshot_Campaigns(mailshot_id, product_category, mailshot_name, mailshot_start_date, mailshot_end_date)
Customer_Addresses(customer_id, premise_id, date_address_from, address_type_code, date_address_to)
Customer_Orders(order_id, customer_id, order_status_code, shipping_method_code, order_placed_datetime, order_delivered_datetime, order_shipping_charges)
Mailshot_Customers(mailshot_id, customer_id, outcome_code, mailshot_customer_date)
Order_Items(item_id, order_item_status_code, order_id, product_id, item_status_code, item_delivered_datetime, item_order_quantity)

Create a SQL request to Show the names of customers having an order with shipping method FedEx and order status Paid.*/


SELECT customer_name 
FROM Customers 
INNER JOIN Customer_Orders 
ON Customers.customer_id = Customer_Orders.customer_id 
WHERE Customer_Orders.shipping_method_code = 'FedEx' 
AND Customer_Orders.order_status_code = 'Paid'

