/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the ids of orders whose status is 'Success'.*/


SELECT actual_order_id 
FROM Actual_Orders 
WHERE order_status_code = 'Success'

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the name and price of the product that has been ordered the greatest number of times.*/


SELECT product_name, product_price 
FROM Products 
INNER JOIN Actual_Order_Products ON Products.product_id = Actual_Order_Products.product_id 
GROUP BY product_name, product_price 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the number of customers in total.*/


SELECT COUNT(*) FROM Customers

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to answer How many different payment methods are there?*/


SELECT COUNT(DISTINCT payment_method) 
FROM Customers

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Show the details of all trucks in the order of their license number.*/


SELECT truck_id, truck_licence_number, truck_details
FROM Trucks
ORDER BY truck_licence_number

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the name of the most expensive product.*/


SELECT product_name 
FROM Products 
ORDER BY product_price DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the names of customers who are not living in the state of California.*/


SELECT customer_name 
FROM Customers 
INNER JOIN Customer_Addresses ON Customers.customer_id = Customer_Addresses.customer_id 
INNER JOIN Addresses ON Customer_Addresses.address_id = Addresses.address_id 
WHERE Addresses.state_province_county != 'California'

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to List the names and emails of customers who payed by Visa card.*/


SELECT customer_name, customer_email 
FROM Customers 
WHERE payment_method = 'Visa'

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the names and phone numbers of customers living in California state.*/


SELECT customer_name, customer_phone 
FROM Customers 
INNER JOIN Customer_Addresses ON Customers.customer_id = Customer_Addresses.customer_id 
INNER JOIN Addresses ON Customer_Addresses.address_id = Addresses.address_id 
WHERE state_province_county = 'California'

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the states which do not have any employee in their record.*/


SELECT DISTINCT state_province_county 
FROM Addresses 
WHERE state_province_county NOT IN (SELECT state_province_county 
                                   FROM Addresses 
                                   INNER JOIN Employees 
                                   ON Addresses.address_id = Employees.employee_address_id)

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to List the names, phone numbers, and emails of all customers sorted by their dates of becoming customers.*/


SELECT customer_name, customer_phone, customer_email 
FROM Customers 
ORDER BY date_became_customer

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the name of the first 5 customers.*/


SELECT customer_name 
FROM Customers 
ORDER BY customer_id 
LIMIT 5

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the payment method that is used most frequently.*/


SELECT payment_method, COUNT(*) AS frequency 
FROM Customers 
GROUP BY payment_method 
ORDER BY frequency DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to List the names of all routes in alphabetic order.*/


SELECT route_name
FROM Delivery_Routes
ORDER BY route_name ASC

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to Find the name of route that has the highest number of deliveries.*/


SELECT route_name 
FROM Delivery_Routes 
INNER JOIN Delivery_Route_Locations 
ON Delivery_Routes.route_id = Delivery_Route_Locations.route_id 
INNER JOIN Order_Deliveries 
ON Delivery_Route_Locations.location_code = Order_Deliveries.location_code 
GROUP BY route_name 
ORDER BY COUNT(*) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Products(product_id, product_name, product_price, product_description)
Addresses(address_id, address_details, city, zip_postcode, state_province_county, country)
Customers(customer_id, payment_method, customer_name, customer_phone, customer_email, date_became_customer)
Regular_Orders(regular_order_id, distributer_id)
Regular_Order_Products(regular_order_id, product_id)
Actual_Orders(actual_order_id, order_status_code, regular_order_id, actual_order_date)
Actual_Order_Products(actual_order_id, product_id)
Customer_Addresses(customer_id, address_id, date_from, address_type, date_to)
Delivery_Routes(route_id, route_name, other_route_details)
Delivery_Route_Locations(location_code, route_id, location_address_id, location_name)
Trucks(truck_id, truck_licence_number, truck_details)
Employees(employee_id, employee_address_id, employee_name, employee_phone)
Order_Deliveries(location_code, actual_order_id, delivery_status_code, driver_employee_id, truck_id, delivery_date)

Create a SQL request to List the state names and the number of customers living in each state.*/


SELECT state_province_county, COUNT(*) AS 'Number of Customers'
FROM Addresses
INNER JOIN Customer_Addresses ON Addresses.address_id = Customer_Addresses.address_id
GROUP BY state_province_county

