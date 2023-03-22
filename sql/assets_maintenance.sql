/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which assets have 2 parts and have less than 2 fault logs? List the asset id and detail.*/


SELECT Assets.asset_id, Assets.asset_details 
FROM Assets 
INNER JOIN Asset_Parts ON Assets.asset_id = Asset_Parts.asset_id 
INNER JOIN Fault_Log ON Assets.asset_id = Fault_Log.asset_id 
GROUP BY Assets.asset_id 
HAVING COUNT(Asset_Parts.part_id) = 2 
AND COUNT(Fault_Log.fault_log_entry_id) < 2

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to How many assets does each maintenance contract contain? List the number and the contract id.*/


SELECT Maintenance_Contracts.maintenance_contract_id, COUNT(Assets.asset_id) AS 'Number of Assets'
FROM Maintenance_Contracts
INNER JOIN Assets ON Maintenance_Contracts.maintenance_contract_id = Assets.maintenance_contract_id
GROUP BY Maintenance_Contracts.maintenance_contract_id

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to How many assets does each third party company supply? List the count and the company id.*/


SELECT COUNT(a.asset_id) AS asset_count, c.company_id 
FROM Assets a 
INNER JOIN Maintenance_Contracts mc ON a.maintenance_contract_id = mc.maintenance_contract_id 
INNER JOIN Third_Party_Companies c ON mc.maintenance_contract_company_id = c.company_id 
GROUP BY c.company_id

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which third party companies have at least 2 maintenance engineers or have at least 2 maintenance contracts? List the company id and name.*/


SELECT Third_Party_Companies.company_id, Third_Party_Companies.company_name
FROM Third_Party_Companies
INNER JOIN Maintenance_Contracts ON Third_Party_Companies.company_id = Maintenance_Contracts.maintenance_contract_company_id
INNER JOIN Maintenance_Engineers ON Third_Party_Companies.company_id = Maintenance_Engineers.company_id
GROUP BY Third_Party_Companies.company_id, Third_Party_Companies.company_name
HAVING COUNT(DISTINCT Maintenance_Contracts.maintenance_contract_id) >= 2 OR COUNT(DISTINCT Maintenance_Engineers.engineer_id) >= 2

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to answer What is the name and id of the staff who recorded the fault log but has not contacted any visiting engineers?*/


SELECT s.staff_id, s.staff_name 
FROM Staff s 
INNER JOIN Fault_Log f 
ON s.staff_id = f.recorded_by_staff_id 
LEFT JOIN Engineer_Visits e 
ON f.fault_log_entry_id = e.fault_log_entry_id 
WHERE e.fault_log_entry_id IS NULL

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which engineer has visited the most times? Show the engineer id, first name and last name.*/


SELECT e.engineer_id, e.first_name, e.last_name
FROM Engineer_Visits v
INNER JOIN Maintenance_Engineers e
ON v.engineer_id = e.engineer_id
GROUP BY e.engineer_id
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which parts have more than 2 faults? Show the part name and id.*/


SELECT Parts.part_name, Parts.part_id
FROM Parts
INNER JOIN Asset_Parts ON Parts.part_id = Asset_Parts.part_id
INNER JOIN Fault_Log_Parts ON Asset_Parts.part_id = Fault_Log_Parts.part_id
GROUP BY Parts.part_name, Parts.part_id
HAVING COUNT(Fault_Log_Parts.part_fault_id) > 2

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to List all every engineer's first name, last name, details and coresponding skill description.*/


SELECT e.first_name, e.last_name, e.other_details, s.skill_description
FROM Maintenance_Engineers e
INNER JOIN Engineer_Skills es ON e.engineer_id = es.engineer_id
INNER JOIN Skills s ON es.skill_id = s.skill_id

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to For all the faults of different parts, what are all the decriptions of the skills required to fix them? List the name of the faults and the skill description.*/


SELECT pf.fault_short_name, s.skill_description
FROM Part_Faults pf
INNER JOIN Skills_Required_To_Fix srtf ON pf.part_fault_id = srtf.part_fault_id
INNER JOIN Skills s ON srtf.skill_id = s.skill_id

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to How many assets can each parts be used in? List the part name and the number.*/


SELECT Parts.part_name, COUNT(Asset_Parts.asset_id) AS 'Number of Assets'
FROM Parts
INNER JOIN Asset_Parts ON Parts.part_id = Asset_Parts.part_id
GROUP BY Parts.part_name

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to answer What are all the fault descriptions and the fault status of all the faults recoreded in the logs?*/


SELECT Fault_Log.fault_description, Fault_Log_Parts.fault_status
FROM Fault_Log
INNER JOIN Fault_Log_Parts ON Fault_Log.fault_log_entry_id = Fault_Log_Parts.fault_log_entry_id

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to How many engineer visits are required at most for a single fault log? List the number and the log entry id.*/


SELECT COUNT(engineer_visit_id) AS 'Number of Visits', fault_log_entry_id
FROM Engineer_Visits
GROUP BY fault_log_entry_id
ORDER BY COUNT(engineer_visit_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to answer What are all the distinct last names of all the engineers?*/


SELECT DISTINCT last_name 
FROM Maintenance_Engineers 
ORDER BY last_name

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to answer How many fault status codes are recorded in the fault log parts table?*/


SELECT COUNT(DISTINCT fault_status) 
FROM Fault_Log_Parts

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which engineers have never visited to maintain the assets? List the engineer first name and last name.*/


SELECT e.first_name, e.last_name
FROM Engineers e
LEFT JOIN Engineer_Visits ev ON e.engineer_id = ev.engineer_id
WHERE ev.engineer_visit_id IS NULL

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to List the asset id, details, make and model for every asset.*/


SELECT asset_id, asset_details, asset_make, asset_model 
FROM Assets

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to answer When was the first asset acquired?*/


SELECT MIN(asset_acquired_date) 
FROM Assets

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which part fault requires the most number of skills to fix? List part id and name.*/


SELECT Parts.part_id, Parts.part_name
FROM Parts
INNER JOIN Skills_Required_To_Fix ON Parts.part_id = Skills_Required_To_Fix.part_fault_id
GROUP BY Parts.part_id, Parts.part_name
ORDER BY COUNT(Skills_Required_To_Fix.skill_id) DESC

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which kind of part has the least number of faults? List the part name.*/


SELECT p.part_name, COUNT(f.part_fault_id) AS 'Number of Faults'
FROM Parts p
INNER JOIN Asset_Parts ap ON p.part_id = ap.part_id
INNER JOIN Fault_Log_Parts flp ON ap.part_id = flp.part_fault_id
INNER JOIN Part_Faults f ON flp.part_fault_id = f.part_fault_id
GROUP BY p.part_name
ORDER BY COUNT(f.part_fault_id) ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Among those engineers who have visited, which engineer makes the least number of visits? List the engineer id, first name and last name.*/


SELECT engineer_id, first_name, last_name
FROM Maintenance_Engineers
INNER JOIN Engineer_Visits
ON Maintenance_Engineers.engineer_id = Engineer_Visits.engineer_id
GROUP BY engineer_id
ORDER BY COUNT(*) ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which staff have contacted which engineers? List the staff name and the engineer first name and last name.*/


SELECT s.staff_name, e.first_name, e.last_name
FROM Staff s
INNER JOIN Engineer_Visits ev ON s.staff_id = ev.contact_staff_id
INNER JOIN Maintenance_Engineers e ON ev.engineer_id = e.engineer_id

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which fault log included the most number of faulty parts? List the fault log id, description and record time.*/


SELECT Fault_Log.fault_log_entry_id, Fault_Log.fault_description, Fault_Log.recorded_by_staff_id, Fault_Log.fault_log_entry_datetime
FROM Fault_Log
INNER JOIN Fault_Log_Parts ON Fault_Log.fault_log_entry_id = Fault_Log_Parts.fault_log_entry_id
GROUP BY Fault_Log.fault_log_entry_id
ORDER BY COUNT(Fault_Log_Parts.part_fault_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which skill is used in fixing the most number of faults? List the skill id and description.*/


SELECT skill_id, skill_description
FROM Skills
INNER JOIN Skills_Required_To_Fix ON Skills.skill_id = Skills_Required_To_Fix.skill_id
GROUP BY skill_id
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to answer What are all the distinct asset models?*/


SELECT DISTINCT asset_model 
FROM Assets

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to List the all the assets make, model, details by the disposed date ascendingly.*/


SELECT asset_make, asset_model, asset_details, asset_disposed_date 
FROM Assets 
ORDER BY asset_disposed_date ASC

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which part has the least chargeable amount? List the part id and amount.*/


SELECT part_id, chargeable_amount 
FROM Parts 
ORDER BY chargeable_amount ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which company started the earliest the maintenance contract? Show the company name.*/


SELECT company_name 
FROM Third_Party_Companies 
INNER JOIN Maintenance_Contracts 
ON Third_Party_Companies.company_id = Maintenance_Contracts.maintenance_contract_company_id 
ORDER BY contract_start_date ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to answer What is the description of the type of the company who concluded its contracts most recently?*/


SELECT company_type 
FROM Third_Party_Companies 
INNER JOIN Maintenance_Contracts 
ON Third_Party_Companies.company_id = Maintenance_Contracts.maintenance_contract_company_id 
ORDER BY contract_end_date DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to answer Which gender makes up the majority of the staff?*/


SELECT gender, COUNT(*) AS total_staff
FROM Staff
GROUP BY gender
ORDER BY total_staff DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to How many engineers did each staff contact? List both the contact staff name and number of engineers contacted.*/


SELECT s.staff_name, COUNT(DISTINCT e.engineer_id) AS 'Number of Engineers Contacted'
FROM Staff s
INNER JOIN Engineer_Visits ev ON s.staff_id = ev.contact_staff_id
INNER JOIN Maintenance_Engineers e ON ev.engineer_id = e.engineer_id
GROUP BY s.staff_name

/*Here are Mysql tables, with their properties:

Third_Party_Companies(company_id, company_type, company_name, company_address, other_company_details)
Maintenance_Contracts(maintenance_contract_id, maintenance_contract_company_id, contract_start_date, contract_end_date, other_contract_details)
Parts(part_id, part_name, chargeable_yn, chargeable_amount, other_part_details)
Skills(skill_id, skill_code, skill_description)
Staff(staff_id, staff_name, gender, other_staff_details)
Assets(asset_id, maintenance_contract_id, supplier_company_id, asset_details, asset_make, asset_model, asset_acquired_date, asset_disposed_date, other_asset_details)
Asset_Parts(asset_id, part_id)
Maintenance_Engineers(engineer_id, company_id, first_name, last_name, other_details)
Engineer_Skills(engineer_id, skill_id)
Fault_Log(fault_log_entry_id, asset_id, recorded_by_staff_id, fault_log_entry_datetime, fault_description, other_fault_details)
Engineer_Visits(engineer_visit_id, contact_staff_id, engineer_id, fault_log_entry_id, fault_status, visit_start_datetime, visit_end_datetime, other_visit_details)
Part_Faults(part_fault_id, part_id, fault_short_name, fault_description, other_fault_details)
Fault_Log_Parts(fault_log_entry_id, part_fault_id, fault_status)
Skills_Required_To_Fix(part_fault_id, skill_id)

Create a SQL request to Which assets did not incur any fault log? List the asset model.*/


SELECT a.asset_model
FROM Assets a
LEFT JOIN Fault_Log f ON a.asset_id = f.asset_id
WHERE f.fault_log_entry_id IS NULL

