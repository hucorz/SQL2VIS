/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer How many main stream browsers whose market share is at least 5 exist?*/


SELECT COUNT(*) 
FROM browser 
WHERE market_share >= 5

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to List the name of browsers in descending order by market share.*/


SELECT name 
FROM browser 
ORDER BY market_share DESC

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to List the ids, names and market shares of all browsers.*/


SELECT b.id, b.name, b.market_share
FROM browser b

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer What is the maximum, minimum and average market share of the listed browsers?*/


SELECT MAX(browser.market_share) AS Max_Market_Share, 
       MIN(browser.market_share) AS Min_Market_Share, 
       AVG(browser.market_share) AS Avg_Market_Share 
FROM browser 
INNER JOIN accelerator_compatible_browser 
ON browser.id = accelerator_compatible_browser.browser_id 
INNER JOIN web_client_accelerator 
ON accelerator_compatible_browser.accelerator_id = web_client_accelerator.id

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer What is the id and market share of the browser Safari?*/


SELECT b.id, b.market_share
FROM browser b
WHERE b.name = 'Safari'

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer What are the name and os of web client accelerators that do not work with only a 'Broadband' type connection?*/


SELECT wca.name, wca.Operating_system
FROM Web_client_accelerator wca
WHERE wca.Connection != 'Broadband'
AND NOT EXISTS (SELECT * 
                FROM accelerator_compatible_browser acb
                WHERE acb.accelerator_id = wca.id
                AND acb.browser_id IN (SELECT b.id 
                                       FROM browser b 
                                       WHERE b.name = 'Broadband')) 

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer What is the name of the browser that became compatible with the accelerator 'CProxy' after year 1998 ?*/


SELECT b.name 
FROM browser b 
INNER JOIN accelerator_compatible_browser acb 
ON b.id = acb.browser_id 
INNER JOIN web_client_accelerator wca 
ON acb.accelerator_id = wca.id 
WHERE wca.name = 'CProxy' 
AND acb.compatible_since_year > 1998

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer What are the ids and names of the web accelerators that are compatible with two or more browsers?*/


SELECT wca.id, wca.name
FROM web_client_accelerator wca
INNER JOIN accelerator_compatible_browser acb ON wca.id = acb.accelerator_id
INNER JOIN browser b ON acb.browser_id = b.id
GROUP BY wca.id, wca.name
HAVING COUNT(*) >= 2

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer What is the id and name of the browser that is compatible with the most web accelerators?*/


SELECT browser.id, browser.name
FROM browser
INNER JOIN accelerator_compatible_browser
ON browser.id = accelerator_compatible_browser.browser_id
GROUP BY browser.id, browser.name
ORDER BY COUNT(accelerator_compatible_browser.accelerator_id) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer When did the web accelerator 'CACHEbox' and browser 'Internet Explorer' become compatible?*/


SELECT compatible_since_year 
FROM accelerator_compatible_browser 
INNER JOIN web_client_accelerator ON accelerator_compatible_browser.accelerator_id = web_client_accelerator.id 
INNER JOIN browser ON accelerator_compatible_browser.browser_id = browser.id 
WHERE web_client_accelerator.name = 'CACHEbox' 
AND browser.name = 'Internet Explorer'

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer How many different kinds of clients are supported by the web clients accelerators?*/


SELECT COUNT(DISTINCT Client) 
FROM Web_client_accelerator

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer How many accelerators are not compatible with the browsers listed ?*/


SELECT COUNT(*)
FROM Web_client_accelerator wca
LEFT JOIN accelerator_compatible_browser acb
ON wca.id = acb.accelerator_id
LEFT JOIN browser b
ON acb.browser_id = b.id
WHERE acb.accelerator_id IS NULL

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer What distinct accelerator names are compatible with the browswers that have market share higher than 15?*/


SELECT DISTINCT wca.name 
FROM web_client_accelerator wca 
INNER JOIN accelerator_compatible_browser acb 
ON wca.id = acb.accelerator_id 
INNER JOIN browser b 
ON acb.browser_id = b.id 
WHERE b.market_share > 15

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to List the names of the browser that are compatible with both 'CACHEbox' and 'Fasterfox'.*/


SELECT b.name 
FROM browser b 
INNER JOIN accelerator_compatible_browser acb ON b.id = acb.browser_id 
INNER JOIN web_client_accelerator wca ON acb.accelerator_id = wca.id 
WHERE wca.name IN ('CACHEbox', 'Fasterfox')

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to Show the accelerator names and supporting operating systems that are not compatible with the browser named 'Opera'.*/


SELECT wca.name, wca.Operating_system
FROM web_client_accelerator wca
LEFT JOIN accelerator_compatible_browser acb ON wca.id = acb.accelerator_id
LEFT JOIN browser b ON acb.browser_id = b.id
WHERE b.name != 'Opera'
GROUP BY wca.name, wca.Operating_system

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to answer Which accelerator name contains substring "Opera"?*/


SELECT name 
FROM Web_client_accelerator 
WHERE name LIKE '%Opera%'

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to Find the number of web accelerators used for each Operating system.*/


SELECT Operating_system, COUNT(*) AS 'Number of Web Accelerators'
FROM Web_client_accelerator
GROUP BY Operating_system

/*Here are Mysql tables, with their properties:

Web_client_accelerator(id, name, Operating_system, Client, Connection)
browser(id, name, market_share)
accelerator_compatible_browser(accelerator_id, browser_id, compatible_since_year)

Create a SQL request to give me names of all compatible browsers and accelerators in the descending order of compatible year*/


SELECT b.name AS Browser_Name, w.name AS Accelerator_Name, ac.compatible_since_year
FROM browser b
INNER JOIN accelerator_compatible_browser ac ON b.id = ac.browser_id
INNER JOIN web_client_accelerator w ON ac.accelerator_id = w.id
ORDER BY ac.compatible_since_year DESC

