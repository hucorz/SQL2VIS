/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the ids of the top three products that were purchased in the largest amount?*/


SELECT product_id, SUM(total_amount_purchased) AS total_amount_purchased 
FROM Product_Suppliers 
GROUP BY product_id 
ORDER BY total_amount_purchased DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Give the ids of the three products purchased in the largest amounts.*/


SELECT product_id, SUM(total_amount_purchased) AS total_amount_purchased 
FROM Product_Suppliers 
GROUP BY product_id 
ORDER BY total_amount_purchased DESC 
LIMIT 3

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the product id and product type of the cheapest product?*/


SELECT product_id, product_type_code 
FROM Products 
ORDER BY product_price ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Give the id and product type of the product with the lowest price.*/


SELECT product_id, product_type_code 
FROM Products 
ORDER BY product_price ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the number of different product types.*/


SELECT COUNT(DISTINCT product_type_code) 
FROM Products

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Count the number of distinct product types.*/


SELECT COUNT(DISTINCT product_type_code) 
FROM Products

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the address of customer 10.*/


SELECT address_details 
FROM Addresses 
INNER JOIN Customer_Addresses 
ON Addresses.address_id = Customer_Addresses.address_id 
WHERE Customer_Addresses.customer_id = 10

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the address for the customer with id 10?*/


SELECT a.address_details 
FROM Addresses a 
INNER JOIN Customer_Addresses ca 
ON a.address_id = ca.address_id 
WHERE ca.customer_id = 10

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the staff ids and genders of all staffs whose job title is Department Manager?*/


SELECT staff_id, staff_gender 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
WHERE job_title_code = 'Department Manager'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the staff ids and genders for any staff with the title Department Manager.*/


SELECT staff_id, staff_gender 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
WHERE job_title_code = 'Department Manager'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to For each payment method, return how many customers use it.*/


SELECT payment_method_code, COUNT(customer_id) AS 'Number of Customers'
FROM Customers
GROUP BY payment_method_code

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer How many customers use each payment method?*/


SELECT payment_method_code, COUNT(customer_id) AS 'Number of Customers'
FROM Customers
GROUP BY payment_method_code

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the id of the product that was ordered the most often?*/


SELECT product_id, COUNT(*) AS total_orders
FROM Order_Items
GROUP BY product_id
ORDER BY total_orders DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Give the product id for the product that was ordered most frequently.*/


SELECT product_id, COUNT(*) AS order_count
FROM Order_Items
GROUP BY product_id
ORDER BY order_count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the name, phone number and email address of the customer who made the largest number of orders?*/


SELECT c.customer_name, c.customer_phone, c.customer_email
FROM Customers c
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id
GROUP BY c.customer_id
ORDER BY COUNT(co.order_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the name, phone number and email address for the customer with the most orders.*/


SELECT c.customer_name, c.customer_phone, c.customer_email 
FROM Customers c 
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id 
GROUP BY c.customer_id 
ORDER BY COUNT(co.order_id) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the average price for each type of product?*/


SELECT product_type_code, AVG(product_price)
FROM Products
GROUP BY product_type_code

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the average price for each product type.*/


SELECT product_type_code, AVG(product_price)
FROM Products
GROUP BY product_type_code

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer How many department stores does the store chain South have?*/


SELECT COUNT(*) 
FROM Department_Store_Chain 
INNER JOIN Department_Stores 
ON Department_Store_Chain.dept_store_chain_id = Department_Stores.dept_store_chain_id 
WHERE Department_Store_Chain.dept_store_chain_name = 'South'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Count the number of stores the chain South has.*/


SELECT COUNT(*) 
FROM Department_Store_Chain 
INNER JOIN Department_Stores 
ON Department_Store_Chain.dept_store_chain_id = Department_Stores.dept_store_chain_id 
WHERE Department_Store_Chain.dept_store_chain_name = 'South'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the name and job title of the staff who was assigned the latest?*/


SELECT staff_name, job_title_code 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
WHERE date_assigned_to = (SELECT MAX(date_assigned_to) FROM Staff_Department_Assignments)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the name and job title of the staff with the latest date assigned.*/


SELECT staff_name, job_title_code 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
WHERE date_assigned_to = (SELECT MAX(date_assigned_to) FROM Staff_Department_Assignments)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Give me the product type, name and price for all the products supplied by supplier id 3.*/


SELECT Products.product_type_code, Products.product_name, Products.product_price
FROM Products
INNER JOIN Product_Suppliers
ON Products.product_id = Product_Suppliers.product_id
WHERE Product_Suppliers.supplier_id = 3

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the product type, name, and price for products supplied by supplier 3.*/


SELECT Products.product_type_code, Products.product_name, Products.product_price 
FROM Products 
INNER JOIN Product_Suppliers 
ON Products.product_id = Product_Suppliers.product_id 
WHERE Product_Suppliers.supplier_id = 3

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the distinct name of customers whose order status is Pending, in the order of customer id.*/


SELECT DISTINCT customer_name 
FROM Customers 
INNER JOIN Customer_Orders 
ON Customers.customer_id = Customer_Orders.customer_id 
WHERE order_status_code = 'Pending' 
ORDER BY Customers.customer_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the distinct names of customers with an order status of Pending, sorted by customer id?*/


SELECT DISTINCT customer_name 
FROM Customers 
INNER JOIN Customer_Orders 
ON Customers.customer_id = Customer_Orders.customer_id 
WHERE order_status_code = 'Pending' 
ORDER BY customer_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the name and address of the customers who have both New and Pending orders.*/


SELECT c.customer_name, a.address_details 
FROM Customers c 
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id 
INNER JOIN Customer_Addresses ca ON c.customer_id = ca.customer_id 
INNER JOIN Addresses a ON ca.address_id = a.address_id 
WHERE co.order_status_code IN ('New', 'Pending') 
GROUP BY c.customer_name, a.address_details

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the names and addressed of customers who have both New and Pending orders?*/


SELECT c.customer_name, a.address_details
FROM Customers c
INNER JOIN Customer_Addresses ca ON c.customer_id = ca.customer_id
INNER JOIN Addresses a ON ca.address_id = a.address_id
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id
WHERE co.order_status_code IN ('New', 'Pending')
GROUP BY c.customer_name, a.address_details

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return ids of all the products that are supplied by supplier id 2 and are more expensive than the average price of all products.*/


SELECT product_id 
FROM Products 
WHERE product_id IN (SELECT product_id 
                     FROM Product_Suppliers 
                     WHERE supplier_id = 2) 
AND product_price > (SELECT AVG(product_price) 
                     FROM Products)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the ids of products from the supplier with id 2, which are more expensive than the average price across all products?*/


SELECT product_id 
FROM Products 
WHERE supplier_id = 2 
AND product_price > (SELECT AVG(product_price) FROM Products)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the id and name of the department store that has both marketing and managing department?*/


SELECT ds.dept_store_id, ds.store_name 
FROM Department_Stores ds 
INNER JOIN Departments d ON ds.dept_store_id = d.dept_store_id 
WHERE d.department_name IN ('Marketing', 'Managing') 
GROUP BY ds.dept_store_id, ds.store_name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the ids and names of department stores with both marketing and managing departments?*/


SELECT ds.dept_store_id, ds.store_name
FROM Department_Stores ds
INNER JOIN Departments d ON ds.dept_store_id = d.dept_store_id
WHERE d.department_name IN ('Marketing', 'Managing')
GROUP BY ds.dept_store_id, ds.store_name
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the ids of the two department store chains with the largest number of department stores?*/


SELECT dept_store_chain_id
FROM Department_Store_Chain
INNER JOIN Department_Stores
ON Department_Store_Chain.dept_store_chain_id = Department_Stores.dept_store_chain_id
GROUP BY dept_store_chain_id
ORDER BY COUNT(*) DESC
LIMIT 2

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the ids of the two department store chains with the most department stores.*/


SELECT dept_store_chain_id, COUNT(dept_store_id) AS store_count
FROM Department_Store_Chain
INNER JOIN Department_Stores
ON Department_Store_Chain.dept_store_chain_id = Department_Stores.dept_store_chain_id
GROUP BY dept_store_chain_id
ORDER BY store_count DESC
LIMIT 2

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the id of the department with the least number of staff?*/


SELECT department_id
FROM Departments
WHERE department_id IN (SELECT department_id
                       FROM Staff_Department_Assignments
                       GROUP BY department_id
                       ORDER BY COUNT(staff_id) ASC
                       LIMIT 1)


/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the id of the department with the fewest staff assignments.*/


SELECT department_id 
FROM Staff_Department_Assignments 
GROUP BY department_id 
ORDER BY COUNT(staff_id) ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to For each product type, return the maximum and minimum price.*/


SELECT product_type_code, MAX(product_price) AS max_price, MIN(product_price) AS min_price
FROM Products
GROUP BY product_type_code

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the maximum and minimum product prices for each product type?*/


SELECT product_type_code, MAX(product_price) AS Max_Price, MIN(product_price) AS Min_Price
FROM Products
GROUP BY product_type_code

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the product type whose average price is higher than the average price of all products.*/


SELECT product_type_code
FROM Products
GROUP BY product_type_code
HAVING AVG(product_price) > (SELECT AVG(product_price) FROM Products)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the code of the product type with an average price higher than the average price of all products?*/


SELECT product_type_code
FROM Products
WHERE product_price > (SELECT AVG(product_price) FROM Products)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the id and name of the staff who has been assigned for the shortest period.*/


SELECT staff_id, staff_name 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
ORDER BY date_assigned_to - date_assigned_from ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the id and name of the staff who has been assigned for the least amount of time?*/


SELECT staff_id, staff_name 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
ORDER BY date_assigned_from ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the names and ids of all products whose price is between 600 and 700.*/


SELECT product_id, product_name 
FROM Products 
WHERE product_price BETWEEN 600 AND 700

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the names and ids of products costing between 600 and 700?*/


SELECT product_id, product_name 
FROM Products 
WHERE product_price BETWEEN 600 AND 700

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the ids of all distinct customers who made order after some orders that were Cancelled.*/


SELECT DISTINCT customer_id 
FROM Customer_Orders 
WHERE order_status_code != 'Cancelled' 
AND order_date > (SELECT order_date 
                   FROM Customer_Orders 
                   WHERE order_status_code = 'Cancelled')

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the distinct ids of customers who made an order after any order that was Cancelled?*/


SELECT DISTINCT c.customer_id 
FROM Customers c 
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id 
WHERE co.order_date > (SELECT order_date FROM Customer_Orders WHERE order_status_code = 'Cancelled' ORDER BY order_date DESC LIMIT 1)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is id of the staff who had a Staff Department Assignment earlier than any Clerical Staff?*/


SELECT staff_id 
FROM Staff_Department_Assignments 
WHERE job_title_code != 'Clerical' 
AND date_assigned_from < (SELECT MIN(date_assigned_from) 
                         FROM Staff_Department_Assignments 
                         WHERE job_title_code = 'Clerical')

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the id of the staff whose Staff Department Assignment was earlier than that of any Clerical Staff.*/


SELECT staff_id 
FROM Staff_Department_Assignments 
WHERE job_title_code != 'Clerical' 
AND date_assigned_from < (SELECT date_assigned_from 
                          FROM Staff_Department_Assignments 
                          WHERE job_title_code = 'Clerical')

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the names and ids of customers whose address contains TN?*/


SELECT customer_name, customer_id 
FROM Customers 
INNER JOIN Customer_Addresses 
ON Customers.customer_id = Customer_Addresses.customer_id 
INNER JOIN Addresses 
ON Customer_Addresses.address_id = Addresses.address_id 
WHERE address_details LIKE '%TN%'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the names and ids of customers who have TN in their address.*/


SELECT customer_name, customer_id 
FROM Customers 
WHERE customer_address LIKE '%TN%'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the name and gender of the staff who was assigned in 2016.*/


SELECT staff_name, staff_gender 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
WHERE YEAR(date_assigned_from) = 2016

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the names and genders of staff who were assigned in 2016?*/


SELECT staff_name, staff_gender 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
WHERE YEAR(date_assigned_from) = 2016

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to List the name of staff who has been assigned multiple jobs.*/


SELECT staff_name 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
GROUP BY staff_name 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the names of staff who have been assigned multiple jobs?*/


SELECT staff_name 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
GROUP BY staff_name 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to List the name and phone number of all suppliers in the alphabetical order of their addresses.*/


SELECT supplier_name, supplier_phone 
FROM Suppliers 
INNER JOIN Supplier_Addresses 
ON Suppliers.supplier_id = Supplier_Addresses.supplier_id 
INNER JOIN Addresses 
ON Supplier_Addresses.address_id = Addresses.address_id 
ORDER BY Addresses.address_details ASC

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the names and phone numbers for all suppliers, sorted in alphabetical order of their addressed?*/


SELECT supplier_name, supplier_phone 
FROM Suppliers 
INNER JOIN Supplier_Addresses 
ON Suppliers.supplier_id = Supplier_Addresses.supplier_id 
INNER JOIN Addresses 
ON Supplier_Addresses.address_id = Addresses.address_id 
ORDER BY Addresses.address_details ASC

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to What are the phone numbers of all customers and suppliers.*/


SELECT c.customer_phone, s.supplier_phone
FROM Customers c
INNER JOIN Suppliers s
ON c.customer_id = s.supplier_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the phone numbers for all customers and suppliers.*/


SELECT c.customer_phone, s.supplier_phone
FROM Customers c
INNER JOIN Suppliers s
ON c.customer_id = s.supplier_id

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the ids of all products that were ordered more than three times or supplied more than 80000.*/


SELECT product_id 
FROM Products 
WHERE product_id IN (SELECT product_id 
                     FROM Order_Items 
                     GROUP BY product_id 
                     HAVING COUNT(*) > 3) 
OR product_id IN (SELECT product_id 
                  FROM Product_Suppliers 
                  WHERE total_amount_purchased > 80000)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the ids of all products that were either ordered more than 3 times or have a cumulative amount purchased of above 80000?*/


SELECT product_id 
FROM Order_Items 
GROUP BY product_id 
HAVING COUNT(order_id) > 3 OR SUM(total_amount_purchased) > 80000

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are id and name of the products whose price is lower than 600 or higher than 900?*/


SELECT product_id, product_name 
FROM Products 
WHERE product_price < 600 OR product_price > 900

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Give the ids and names of products with price lower than 600 or higher than 900.*/


SELECT product_id, product_name 
FROM Products 
WHERE product_price < 600 OR product_price > 900

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the id of suppliers whose average amount purchased for each product is above 50000 or below 30000.*/


SELECT supplier_id 
FROM Product_Suppliers 
GROUP BY supplier_id 
HAVING AVG(total_amount_purchased) > 50000 OR AVG(total_amount_purchased) < 30000

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the ids of suppliers which have an average amount purchased of above 50000 or below 30000?*/


SELECT supplier_id
FROM Product_Suppliers
GROUP BY supplier_id
HAVING AVG(total_amount_purchased) > 50000 OR AVG(total_amount_purchased) < 30000

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to What are the average amount purchased and value purchased for the supplier who supplies the most products.*/


SELECT AVG(total_amount_purchased) AS avg_amount_purchased, AVG(total_value_purchased) AS avg_value_purchased
FROM Product_Suppliers
WHERE supplier_id = (SELECT supplier_id
                     FROM Product_Suppliers
                     GROUP BY supplier_id
                     ORDER BY COUNT(*) DESC
                     LIMIT 1)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the average total amount purchased and total value purchased for the supplier who supplies the greatest number of products.*/


SELECT AVG(total_amount_purchased) AS avg_total_amount_purchased, AVG(total_value_purchased) AS avg_total_value_purchased
FROM Product_Suppliers
WHERE supplier_id = (SELECT supplier_id
                     FROM Product_Suppliers
                     GROUP BY supplier_id
                     ORDER BY COUNT(*) DESC
                     LIMIT 1)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the largest and smallest customer codes?*/


SELECT MAX(customer_code) AS 'Largest Customer Code', MIN(customer_code) AS 'Smallest Customer Code'
FROM Customers

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Return the maximum and minimum customer codes.*/


SELECT MAX(customer_code) AS Max_Customer_Code, MIN(customer_code) AS Min_Customer_Code
FROM Customers

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to List the names of all the distinct customers who bought a keyboard.*/


SELECT DISTINCT c.customer_name 
FROM Customers c 
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id 
INNER JOIN Order_Items oi ON co.order_id = oi.order_id 
INNER JOIN Products p ON oi.product_id = p.product_id 
WHERE p.product_name = 'keyboard'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the distinct names of customers who have purchased a keyboard?*/


SELECT DISTINCT c.customer_name 
FROM Customers c 
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id 
INNER JOIN Order_Items oi ON co.order_id = oi.order_id 
INNER JOIN Products p ON oi.product_id = p.product_id 
WHERE p.product_name = 'keyboard'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to List the names and phone numbers of all the distinct suppliers who supply red jeans.*/


SELECT DISTINCT s.supplier_name, s.supplier_phone
FROM Suppliers s
INNER JOIN Product_Suppliers ps ON s.supplier_id = ps.supplier_id
INNER JOIN Products p ON ps.product_id = p.product_id
WHERE p.product_name = 'red jeans'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the distinct names and phone numbers for suppliers who have red jeans?*/


SELECT DISTINCT supplier_name, supplier_phone
FROM Suppliers
INNER JOIN Product_Suppliers ON Suppliers.supplier_id = Product_Suppliers.supplier_id
INNER JOIN Products ON Product_Suppliers.product_id = Products.product_id
WHERE Products.product_name = 'red jeans'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the highest and lowest prices of products, grouped by and alphabetically ordered by product type?*/


SELECT product_type_code, MIN(product_price) AS Lowest_Price, MAX(product_price) AS Highest_Price
FROM Products
GROUP BY product_type_code
ORDER BY product_type_code ASC

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Give the maximum and minimum product prices for each product type, grouped and ordered by product type.*/


SELECT product_type_code, MAX(product_price) AS max_price, MIN(product_price) AS min_price
FROM Products
GROUP BY product_type_code
ORDER BY product_type_code

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to List the order id, customer id for orders in Cancelled status, ordered by their order dates.*/


SELECT order_id, customer_id 
FROM Customer_Orders 
WHERE order_status_code = 'Cancelled' 
ORDER BY order_date

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the order ids and customer ids for orders that have been Cancelled, sorted by their order dates?*/


SELECT order_id, customer_id 
FROM Customer_Orders 
WHERE order_status_code = 'Cancelled' 
ORDER BY order_date

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the names of products that were bought by at least two distinct customers.*/


SELECT DISTINCT p.product_name 
FROM Products p 
INNER JOIN Order_Items oi ON p.product_id = oi.product_id 
INNER JOIN Customer_Orders co ON oi.order_id = co.order_id 
GROUP BY p.product_name 
HAVING COUNT(DISTINCT co.customer_id) >= 2

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the distinct names of products purchased by at least two different customers?*/


SELECT DISTINCT product_name 
FROM Products 
WHERE product_id IN (SELECT product_id 
                     FROM Customer_Orders 
                     GROUP BY product_id 
                     HAVING COUNT(DISTINCT customer_id) > 1)

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the names of customers who have bought by at least three distinct products.*/


SELECT c.customer_name 
FROM Customers c 
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id 
INNER JOIN Order_Items oi ON co.order_id = oi.order_id 
GROUP BY c.customer_name 
HAVING COUNT(DISTINCT oi.product_id) >= 3

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the distinct names of customers who have purchased at least three different products?*/


SELECT DISTINCT customer_name 
FROM Customers c 
INNER JOIN Customer_Orders co ON c.customer_id = co.customer_id 
INNER JOIN Order_Items oi ON co.order_id = oi.order_id 
GROUP BY c.customer_name 
HAVING COUNT(DISTINCT oi.product_id) >= 3

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the name and gender of the staff who has been assigned the job of Sales Person but never Clerical Staff.*/


SELECT staff_name, staff_gender 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
WHERE job_title_code = 'Sales Person' 
AND job_title_code != 'Clerical Staff'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the names and genders of staff who have held the title Sales Person, but never Clerical Staff?*/


SELECT staff_name, staff_gender 
FROM Staff 
INNER JOIN Staff_Department_Assignments 
ON Staff.staff_id = Staff_Department_Assignments.staff_id 
WHERE job_title_code = 'Sales Person' 
AND staff_id NOT IN (SELECT staff_id 
                     FROM Staff_Department_Assignments 
                     WHERE job_title_code = 'Clerical Staff') 
GROUP BY staff_name, staff_gender

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the id and name of customers whose address contains WY state and do not use credit card for payment.*/


SELECT customer_id, customer_name 
FROM Customers 
INNER JOIN Customer_Addresses 
ON Customers.customer_id = Customer_Addresses.customer_id 
INNER JOIN Addresses 
ON Customer_Addresses.address_id = Addresses.address_id 
WHERE Addresses.address_details LIKE '%WY%' 
AND Customers.payment_method_code != 'credit_card'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What are the ids and names of customers with addressed that contain WY and who do not use a credit card for payment?*/


SELECT customer_id, customer_name 
FROM Customers 
INNER JOIN Customer_Addresses 
ON Customers.customer_id = Customer_Addresses.customer_id 
INNER JOIN Addresses 
ON Customer_Addresses.address_id = Addresses.address_id 
WHERE address_details LIKE '%WY%' 
AND payment_method_code != 'credit_card'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the average price of all product clothes.*/


SELECT AVG(product_price)
FROM Products
WHERE product_type_code = 'clothes'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the average price of clothes?*/


SELECT AVG(Products.product_price)
FROM Products
WHERE Products.product_type_code = 'clothes'

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to Find the name of the most expensive hardware product.*/


SELECT product_name 
FROM Products 
WHERE product_type_code = 'HW' 
ORDER BY product_price DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Addresses(address_id, address_details)
Staff(staff_id, staff_gender, staff_name)
Suppliers(supplier_id, supplier_name, supplier_phone)
Department_Store_Chain(dept_store_chain_id, dept_store_chain_name)
Customers(customer_id, payment_method_code, customer_code, customer_name, customer_address, customer_phone, customer_email)
Products(product_id, product_type_code, product_name, product_price)
Supplier_Addresses(supplier_id, address_id, date_from, date_to)
Customer_Addresses(customer_id, address_id, date_from, date_to)
Customer_Orders(order_id, customer_id, order_status_code, order_date)
Department_Stores(dept_store_id, dept_store_chain_id, store_name, store_address, store_phone, store_email)
Departments(department_id, dept_store_id, department_name)
Order_Items(order_item_id, order_id, product_id)
Product_Suppliers(product_id, supplier_id, date_supplied_from, date_supplied_to, total_amount_purchased, total_value_purchased)
Staff_Department_Assignments(staff_id, department_id, date_assigned_from, job_title_code, date_assigned_to)

Create a SQL request to answer What is the name of the hardware product with the greatest price?*/


SELECT product_name 
FROM Products 
WHERE product_type_code = 'HW' 
ORDER BY product_price DESC 
LIMIT 1

