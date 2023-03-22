/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer what are the details of the cmi masters that have the cross reference code 'Tax'?*/


SELECT cm.master_customer_id, cm.cmi_details 
FROM Customer_Master_Index cm 
INNER JOIN CMI_Cross_References cr ON cm.master_customer_id = cr.master_customer_id 
WHERE cr.source_system_code = 'Tax'

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to What is the cmi cross reference id that is related to at least one council tax entry? List the cross reference id and source system code.*/


SELECT cmi_cross_ref_id, source_system_code
FROM CMI_Cross_References
INNER JOIN Council_Tax
ON CMI_Cross_References.cmi_cross_ref_id = Council_Tax.cmi_cross_ref_id

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to How many business rates are related to each cmi cross reference? List cross reference id, master customer id and the n*/
b of business rates

SELECT cmi_cross_ref_id, master_customer_id, COUNT(business_rates_id) AS nb_business_rates
FROM CMI_Cross_References
INNER JOIN Business_Rates
ON CMI_Cross_References.cmi_cross_ref_id = Business_Rates.cmi_cross_ref_id
GROUP BY cmi_cross_ref_id, master_customer_id

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to What is the tax source system code related to the benefits and overpayments? List the code and the benifit id, order by benifit id.*/


SELECT cmi_cross_ref_id, source_system_code 
FROM CMI_Cross_References 
INNER JOIN Benefits_Overpayments 
ON CMI_Cross_References.cmi_cross_ref_id = Benefits_Overpayments.cmi_cross_ref_id 
ORDER BY Benefits_Overpayments.council_tax_id

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer Wat is the tax source system code and master customer id of the taxes related to each parking fine id?*/


SELECT cmi_cross_references.source_system_code, customer_master_index.master_customer_id
FROM parking_fines
INNER JOIN cmi_cross_references ON parking_fines.cmi_cross_ref_id = cmi_cross_references.cmi_cross_ref_id
INNER JOIN customer_master_index ON cmi_cross_references.master_customer_id = customer_master_index.master_customer_id

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer What are the renting arrears tax ids related to the customer master index whose detail is not 'Schmidt, Kertzmann and Lubowitz'?*/


SELECT Rent_Arrears.council_tax_id 
FROM Rent_Arrears 
INNER JOIN CMI_Cross_References 
ON Rent_Arrears.cmi_cross_ref_id = CMI_Cross_References.cmi_cross_ref_id 
INNER JOIN Customer_Master_Index 
ON CMI_Cross_References.master_customer_id = Customer_Master_Index.master_customer_id 
WHERE Customer_Master_Index.cmi_details != 'Schmidt, Kertzmann and Lubowitz'

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer What are the register ids of electoral registries that have the cross reference source system code 'Electoral' or 'Tax'?*/


SELECT electoral_register_id 
FROM Electoral_Register 
INNER JOIN CMI_Cross_References 
ON Electoral_Register.cmi_cross_ref_id = CMI_Cross_References.cmi_cross_ref_id 
WHERE source_system_code IN ('Electoral', 'Tax')

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer How many different source system code for the cmi cross references are there?*/


SELECT COUNT(DISTINCT source_system_code) 
FROM CMI_Cross_References

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to List all information about customer master index, and sort them by details in descending order.*/


SELECT master_customer_id, cmi_details 
FROM Customer_Master_Index 
ORDER BY cmi_details DESC

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to List the council tax ids and their related cmi cross references of all the parking fines.*/


SELECT ct.council_tax_id, ctcr.cmi_cross_ref_id 
FROM Council_Tax ct 
INNER JOIN CMI_Cross_References ctcr ON ct.cmi_cross_ref_id = ctcr.cmi_cross_ref_id 
INNER JOIN Parking_Fines pf ON ct.council_tax_id = pf.council_tax_id

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer How many council taxes are collected for renting arrears ?*/


SELECT COUNT(*) 
FROM Council_Tax ct 
INNER JOIN Rent_Arrears ra 
ON ct.council_tax_id = ra.council_tax_id

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer What are the distinct cross reference source system codes which are related to the master customer details 'Gottlieb, Becker and Wyman'?*/


SELECT DISTINCT source_system_code 
FROM CMI_Cross_References 
INNER JOIN Customer_Master_Index 
ON CMI_Cross_References.master_customer_id = Customer_Master_Index.master_customer_id 
WHERE cmi_details = 'Gottlieb, Becker and Wyman'

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer Which cmi cross reference id is not related to any parking taxes?*/


SELECT cmi_cross_ref_id
FROM CMI_Cross_References
WHERE cmi_cross_ref_id NOT IN (SELECT cmi_cross_ref_id FROM Parking_Fines)

/*Here are Mysql tables, with their properties:

Customer_Master_Index(master_customer_id, cmi_details)
CMI_Cross_References(cmi_cross_ref_id, master_customer_id, source_system_code)
Council_Tax(council_tax_id, cmi_cross_ref_id)
Business_Rates(business_rates_id, cmi_cross_ref_id)
Benefits_Overpayments(council_tax_id, cmi_cross_ref_id)
Parking_Fines(council_tax_id, cmi_cross_ref_id)
Rent_Arrears(council_tax_id, cmi_cross_ref_id)
Electoral_Register(electoral_register_id, cmi_cross_ref_id)

Create a SQL request to answer Which distinct source system code includes the substring 'en'?*/


SELECT DISTINCT source_system_code 
FROM CMI_Cross_References 
WHERE source_system_code LIKE '%en%'

