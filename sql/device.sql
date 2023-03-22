/*Here are Mysql tables, with their properties:

device(Device_ID, Device, Carrier, Package_Version, Applications, Software_Platform)
shop(Shop_ID, Shop_Name, Location, Open_Date, Open_Year)
stock(Shop_ID, Device_ID, Quantity)

Create a SQL request to answer How many devices are there?*/


SELECT COUNT(Device_ID) FROM device

/*Here are Mysql tables, with their properties:

device(Device_ID, Device, Carrier, Package_Version, Applications, Software_Platform)
shop(Shop_ID, Shop_Name, Location, Open_Date, Open_Year)
stock(Shop_ID, Device_ID, Quantity)

Create a SQL request to Count the number of devices.*/


SELECT COUNT(Device_ID) FROM device

/*Here are Mysql tables, with their properties:

device(Device_ID, Device, Carrier, Package_Version, Applications, Software_Platform)
shop(Shop_ID, Shop_Name, Location, Open_Date, Open_Year)
stock(Shop_ID, Device_ID, Quantity)

Create a SQL request to List the carriers of devices in ascending alphabetical order.*/


SELECT Carrier 
FROM device 
ORDER BY Carrier ASC

/*Here are Mysql tables, with their properties:

device(Device_ID, Device, Carrier, Package_Version, Applications, Software_Platform)
shop(Shop_ID, Shop_Name, Location, Open_Date, Open_Year)
stock(Shop_ID, Device_ID, Quantity)

Create a SQL request to answer What are the different carriers for devices, listed in alphabetical order?*/


SELECT DISTINCT Carrier 
FROM device 
ORDER BY Carrier ASC

/*Here are Mysql tables, with their properties:

device(Device_ID, Device, Carrier, Package_Version, Applications, Software_Platform)
shop(Shop_ID, Shop_Name, Location, Open_Date, Open_Year)
stock(Shop_ID, Device_ID, Quantity)

Create a SQL request to answer What are the carriers of devices whose software platforms are not "Android"?*/


SELECT DISTINCT Carrier 
FROM device 
WHERE Software_Platform != 'Android'

