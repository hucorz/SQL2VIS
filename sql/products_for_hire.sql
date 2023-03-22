/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer Are the customers holding coupons with amount 500 bad or good?*/


SELECT c.good_or_bad_customer
FROM Customers c
INNER JOIN Discount_Coupons dc ON c.coupon_id = dc.coupon_id
WHERE dc.coupon_amount = 500

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to How many bookings did each customer make? List the customer id, first name, and the count.*/


SELECT c.customer_id, c.first_name, COUNT(b.booking_id) AS 'Booking Count'
FROM Customers c
INNER JOIN Bookings b ON c.customer_id = b.customer_id
GROUP BY c.customer_id, c.first_name

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to What is the maximum total amount paid by a customer? List the customer id and amount.*/


SELECT customers.customer_id, SUM(payments.amount_paid) AS total_amount_paid
FROM customers
INNER JOIN payments ON customers.customer_id = payments.customer_id
GROUP BY customers.customer_id
ORDER BY total_amount_paid DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What are the id and the amount of refund of the booking that incurred the most times of payments?*/


SELECT b.booking_id, MAX(p.amount_of_refund)
FROM Payments p
INNER JOIN Bookings b ON p.booking_id = b.booking_id
GROUP BY b.booking_id
ORDER BY COUNT(p.payment_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What is the id of the product that is booked for 3 times?*/


SELECT product_id 
FROM Products_Booked 
WHERE booked_count = 3

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What is the product description of the product booked with an amount of 102.76?*/


SELECT product_description 
FROM Products_for_Hire 
INNER JOIN Products_Booked 
ON Products_for_Hire.product_id = Products_Booked.product_id 
WHERE Products_Booked.booked_amount = 102.76

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What are the start date and end date of the booking that has booked the product named 'Book collection A'?*/


SELECT b.booking_start_date, b.booking_end_date 
FROM Bookings b 
INNER JOIN Products_Booked pb ON b.booking_id = pb.booking_id 
INNER JOIN Products_for_Hire pfh ON pb.product_id = pfh.product_id 
WHERE pfh.product_name = 'Book collection A'

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What are the names of products whose availability equals to 1?*/


SELECT product_name 
FROM Products_for_Hire 
INNER JOIN View_Product_Availability 
ON Products_for_Hire.product_id = View_Product_Availability.product_id 
WHERE View_Product_Availability.available_yn = 1

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer How many different product types are there?*/


SELECT COUNT(DISTINCT product_type_code) 
FROM Products_for_Hire

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to What are the first name, last name, and gender of all the good customers? Order by their last name.*/


SELECT first_name, last_name, gender_mf 
FROM Customers 
WHERE good_or_bad_customer = 'good' 
ORDER BY last_name

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What is the average amount due for all the payments?*/


SELECT AVG(amount_due) 
FROM Payments

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What are the maximum, minimum, and average booked count for the products booked?*/


SELECT MAX(booked_count) AS Max_Booked_Count, MIN(booked_count) AS Min_Booked_Count, AVG(booked_count) AS Avg_Booked_Count
FROM Products_Booked

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What are all the distinct payment types?*/


SELECT DISTINCT payment_type_code 
FROM Payments

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What are the daily hire costs for the products with substring 'Book' in its name?*/


SELECT product_name, daily_hire_cost 
FROM Products_for_Hire 
WHERE product_name LIKE '%Book%'

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer How many products are never booked with amount higher than 200?*/


SELECT COUNT(*) 
FROM Products_for_Hire pfh 
LEFT JOIN Products_Booked pb 
ON pfh.product_id = pb.product_id 
WHERE pb.booked_amount IS NULL OR pb.booked_amount <= 200

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What are the coupon amount of the coupons owned by both good and bad customers?*/


SELECT Discount_Coupons.coupon_amount 
FROM Discount_Coupons 
INNER JOIN Customers 
ON Discount_Coupons.coupon_id = Customers.coupon_id 
WHERE Customers.good_or_bad_customer IN ('good', 'bad')

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to What are the payment date of the payment with amount paid higher than 300 or with payment type is 'Check'*/


SELECT payment_date 
FROM Payments 
WHERE amount_paid > 300 OR payment_type_code = 'Check'

/*Here are Mysql tables, with their properties:

Discount_Coupons(coupon_id, date_issued, coupon_amount)
Customers(customer_id, coupon_id, good_or_bad_customer, first_name, last_name, gender_mf, date_became_customer, date_last_hire)
Bookings(booking_id, customer_id, booking_status_code, returned_damaged_yn, booking_start_date, booking_end_date, count_hired, amount_payable, amount_of_discount, amount_outstanding, amount_of_refund)
Products_for_Hire(product_id, product_type_code, daily_hire_cost, product_name, product_description)
Payments(payment_id, booking_id, customer_id, payment_type_code, amount_paid_in_full_yn, payment_date, amount_due, amount_paid)
Products_Booked(booking_id, product_id, returned_yn, returned_late_yn, booked_count, booked_amount)
View_Product_Availability(product_id, booking_id, status_date, available_yn)

Create a SQL request to answer What are the names and descriptions of the products that are of 'Cutlery' type and have daily hire cost lower than 20?*/


SELECT product_name, product_description 
FROM Products_for_Hire 
WHERE product_type_code = 'Cutlery' 
AND daily_hire_cost < 20

