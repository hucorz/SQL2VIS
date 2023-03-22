/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to the names of models that launched between 2002 and 2004.*/


SELECT Model_name 
FROM chip_model 
WHERE Launch_year BETWEEN 2002 AND 2004

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Which model has the least amount of RAM? List the model name and the amount of RAM.*/


SELECT Model_name, RAM_MiB FROM chip_model ORDER BY RAM_MiB ASC LIMIT 1

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to answer What are the chip model and screen mode of the phone with hardware model name "LG-P760"?*/


SELECT chip_model.Model_name, screen_mode.Graphics_mode
FROM phone
INNER JOIN chip_model ON phone.chip_model = chip_model.Model_name
INNER JOIN screen_mode ON phone.screen_mode = screen_mode.Graphics_mode
WHERE phone.Hardware_Model_name = 'LG-P760'

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to answer How many phone hardware models are produced by the company named "Nokia Corporation"?*/


SELECT COUNT(*) 
FROM phone 
WHERE Company_name = 'Nokia Corporation'

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to answer What is maximum and minimum RAM size of phone produced by company named "Nokia Corporation"?*/


SELECT MAX(chip_model.RAM_MiB), MIN(chip_model.RAM_MiB)
FROM chip_model
INNER JOIN phone ON chip_model.Model_name = phone.Hardware_Model_name
WHERE phone.Company_name = 'Nokia Corporation'

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to answer What is the average ROM size of phones produced by the company named "Nokia Corporation"?*/


SELECT AVG(ROM_MiB)
FROM chip_model
INNER JOIN phone
ON chip_model.Model_name = phone.Hardware_Model_name
WHERE phone.Company_name = 'Nokia Corporation'

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the hardware model name and company name for all the phones that were launched in year 2002 or have RAM size greater than 32.*/


SELECT Hardware_Model_name, Company_name 
FROM phone 
INNER JOIN chip_model ON phone.chip_model = chip_model.Model_name 
WHERE Launch_year = 2002 OR RAM_MiB > 32

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find all phones that have word 'Full' in their accreditation types. List the Hardware Model name and Company name.*/


SELECT Hardware_Model_name, Company_name 
FROM phone 
WHERE Accreditation_type LIKE '%Full%'

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find the Char cells, Pixels and Hardware colours for the screen of the phone whose hardware model name is "LG-P760".*/


SELECT s.Char_cells, s.Pixels, s.Hardware_colours
FROM phone p
INNER JOIN screen_mode s ON p.screen_mode = s.Graphics_mode
WHERE p.Hardware_Model_name = 'LG-P760'

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the hardware model name and company name for the phone whose screen mode type is "Graphics."*/


SELECT Hardware_Model_name, Company_name 
FROM phone 
WHERE screen_mode IN (SELECT Type FROM screen_mode WHERE Type = 'Graphics')

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find the name of the company that has the least number of phone models. List the company name and the number of phone model produced by that company.*/


SELECT Company_name, COUNT(Hardware_Model_name) AS Num_of_Models
FROM phone
GROUP BY Company_name
ORDER BY Num_of_Models ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the name of the company that produced more than one phone model.*/


SELECT Company_name
FROM phone
GROUP BY Company_name
HAVING COUNT(Hardware_Model_name) > 1

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the maximum, minimum and average number of used kb in screen mode.*/


SELECT MAX(used_kb) AS Max_used_kb, MIN(used_kb) AS Min_used_kb, AVG(used_kb) AS Avg_used_kb FROM screen_mode

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the name of the phone model launched in year 2002 and with the highest RAM size.*/


SELECT Hardware_Model_name 
FROM phone 
INNER JOIN chip_model 
ON phone.chip_model = chip_model.Model_name 
WHERE Launch_year = 2002 
ORDER BY RAM_MiB DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to answer What are the wifi and screen mode type of the hardware model named "LG-P760"?*/


SELECT chip_model.WiFi, screen_mode.Type
FROM phone
INNER JOIN chip_model ON phone.chip_model = chip_model.Model_name
INNER JOIN screen_mode ON phone.screen_mode = screen_mode.Graphics_mode
WHERE phone.Hardware_Model_name = 'LG-P760'

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the hardware model name for the phones that have screen mode type "Text" or RAM size greater than 32.*/


SELECT Hardware_Model_name 
FROM phone 
INNER JOIN chip_model ON phone.chip_model = chip_model.Model_name 
INNER JOIN screen_mode ON phone.screen_mode = screen_mode.Graphics_mode 
WHERE screen_mode.Type = 'Text' OR chip_model.RAM_MiB > 32

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the hardware model name for the phones that were produced by "Nokia Corporation" or whose screen mode type is "Graphics."*/


SELECT Hardware_Model_name 
FROM phone 
WHERE Company_name = 'Nokia Corporation' OR screen_mode IN (SELECT Graphics_mode FROM screen_mode WHERE Type = 'Graphics')

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the hardware model name for the phons that were produced by "Nokia Corporation" but whose screen mode type is not Text.*/


SELECT Hardware_Model_name 
FROM phone 
WHERE Company_name = 'Nokia Corporation' 
AND screen_mode NOT IN (SELECT Type FROM screen_mode WHERE Type = 'Text')

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List the phone hardware model and company name for the phones whose screen usage in kb is between 10 and 15.*/


SELECT Hardware_Model_name, Company_name 
FROM phone 
INNER JOIN screen_mode 
ON phone.screen_mode = screen_mode.Graphics_mode 
WHERE used_kb BETWEEN 10 AND 15

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find the number of phones for each accreditation type.*/


SELECT Accreditation_type, COUNT(*) AS Number_of_phones
FROM phone
GROUP BY Accreditation_type

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to answer How many phones belongs to each accreditation type?*/


SELECT Accreditation_type, COUNT(*) AS 'Number of Phones'
FROM phone
GROUP BY Accreditation_type

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find the accreditation level that more than 3 phones use.*/


SELECT Accreditation_level 
FROM phone 
GROUP BY Accreditation_level 
HAVING COUNT(*) > 3

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find the details for all chip models.*/


SELECT * FROM chip_model

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to answer How many models do not have the wifi function?*/


SELECT COUNT(*) 
FROM chip_model 
WHERE WiFi = 'No'

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Count the number of chip model that do not have wifi.*/


SELECT COUNT(*) 
FROM chip_model 
WHERE WiFi = 0

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to List all the model names sorted by their launch year.*/


SELECT Model_name 
FROM chip_model 
ORDER BY Launch_year ASC

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find the average ram mib size of the chip models that are never used by any phone.*/


SELECT AVG(RAM_MiB)
FROM chip_model
WHERE Model_name NOT IN (SELECT chip_model
                        FROM phone)

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find the names of the chip models that are not used by any phone with full accreditation type.*/


SELECT chip_model.Model_name 
FROM chip_model 
LEFT JOIN phone 
ON chip_model.Model_name = phone.Hardware_Model_name 
WHERE phone.Accreditation_type != 'Full' OR phone.Accreditation_type IS NULL

/*Here are Mysql tables, with their properties:

chip_model(Model_name, Launch_year, RAM_MiB, ROM_MiB, Slots, WiFi, Bluetooth)
screen_mode(Graphics_mode, Char_cells, Pixels, Hardware_colours, used_kb, map, Type)
phone(Company_name, Hardware_Model_name, Accreditation_type, Accreditation_level, Date, chip_model, screen_mode)

Create a SQL request to Find the pixels of the screen modes that are used by both phones with full accreditation types and phones with Provisional accreditation types.*/


SELECT screen_mode.Pixels 
FROM phone 
INNER JOIN screen_mode ON phone.screen_mode = screen_mode.Graphics_mode 
WHERE phone.Accreditation_type IN ('Full', 'Provisional')

