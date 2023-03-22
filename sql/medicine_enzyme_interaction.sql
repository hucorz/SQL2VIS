/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer How many kinds of enzymes are there?*/


SELECT COUNT(*) FROM enzyme

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the total count of enzymes?*/


SELECT COUNT(*) FROM enzyme

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to List the name of enzymes in descending lexicographical order.*/


SELECT name FROM enzyme ORDER BY name DESC

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names of enzymes in descending order?*/


SELECT name FROM enzyme ORDER BY name DESC

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to List the names and the locations that the enzymes can make an effect.*/


SELECT e.name, e.location 
FROM enzyme e 
INNER JOIN medicine_enzyme_interaction mei 
ON e.id = mei.enzyme_id 
WHERE mei.interaction_type = 'effect'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names and locations of all enzymes listed?*/


SELECT name, Location FROM enzyme

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the maximum Online Mendelian Inheritance in Man (OMIM) value of the enzymes?*/


SELECT MAX(OMIM) FROM enzyme

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the maximum OMIM value in the database?*/


SELECT MAX(OMIM) FROM enzyme

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the product, chromosome and porphyria related to the enzymes which take effect at the location 'Cytosol'?*/


SELECT e.Product, e.Chromosome, e.Porphyria
FROM enzyme e
WHERE e.Location = 'Cytosol'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the product, chromosome, and porphyria of the enzymes located at 'Cytosol'?*/


SELECT e.Product, e.Chromosome, e.Porphyria 
FROM enzyme e 
WHERE e.Location = 'Cytosol'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names of enzymes who does not produce 'Heme'?*/


SELECT name 
FROM enzyme 
WHERE Product != 'Heme'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names of enzymes whose product is not 'Heme'?*/


SELECT name 
FROM enzyme 
WHERE Product != 'Heme'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names and trade names of the medicines which has 'Yes' value in the FDA record?*/


SELECT name, Trade_Name 
FROM medicine 
WHERE FDA_approved = 'Yes'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names and trade names of the medcines that are FDA approved?*/


SELECT name, Trade_Name 
FROM medicine 
WHERE FDA_approved = 1

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names of enzymes in the medicine named 'Amisulpride' that can serve as an 'inhibitor'?*/


SELECT e.name 
FROM enzyme e 
INNER JOIN medicine_enzyme_interaction mei 
ON e.id = mei.enzyme_id 
INNER JOIN medicine m 
ON mei.medicine_id = m.id 
WHERE m.name = 'Amisulpride' 
AND mei.interaction_type = 'inhibitor'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names of the enzymes used in the medicine  Amisulpride that acts as inhibitors?*/


SELECT e.name 
FROM enzyme e 
INNER JOIN medicine_enzyme_interaction mei 
ON e.id = mei.enzyme_id 
INNER JOIN medicine m 
ON mei.medicine_id = m.id 
WHERE m.name = 'Amisulpride' 
AND mei.interaction_type = 'inhibitor'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the ids and names of the medicine that can interact with two or more enzymes?*/


SELECT m.id, m.name 
FROM medicine m 
INNER JOIN medicine_enzyme_interaction mei ON m.id = mei.medicine_id 
GROUP BY m.id, m.name 
HAVING COUNT(*) > 1

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer For every medicine id, what are the names of the medicines that can interact with more than one enzyme?*/


SELECT m.id, m.name
FROM medicine m
INNER JOIN medicine_enzyme_interaction mei ON m.id = mei.medicine_id
GROUP BY m.id, m.name
HAVING COUNT(DISTINCT mei.enzyme_id) > 1

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to What are the ids, names and FDA approval status of medicines in descending order of the number of enzymes that it can interact with.*/


SELECT m.id, m.name, m.FDA_approved
FROM medicine m
INNER JOIN medicine_enzyme_interaction mei ON m.id = mei.medicine_id
GROUP BY m.id, m.name, m.FDA_approved
ORDER BY COUNT(mei.enzyme_id) DESC

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the ids, names, and FDA approval status for medicines ordered by descending number of possible enzyme interactions?*/


SELECT m.id, m.name, m.FDA_approved
FROM medicine m
INNER JOIN medicine_enzyme_interaction mei ON m.id = mei.medicine_id
GROUP BY m.id, m.name, m.FDA_approved
ORDER BY COUNT(mei.enzyme_id) DESC

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the id and name of the enzyme with most number of medicines that can interact as 'activator'?*/


SELECT e.id, e.name 
FROM enzyme e 
INNER JOIN medicine_enzyme_interaction mei ON e.id = mei.enzyme_id 
INNER JOIN medicine m ON mei.medicine_id = m.id 
WHERE mei.interaction_type = 'activator' 
GROUP BY e.id, e.name 
ORDER BY COUNT(m.id) DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the id and name of the enzyme that can interact with the most medicines as an activator?*/


SELECT enzyme.id, enzyme.name
FROM enzyme
INNER JOIN medicine_enzyme_interaction ON enzyme.id = medicine_enzyme_interaction.enzyme_id
WHERE medicine_enzyme_interaction.interaction_type = 'activator'
GROUP BY enzyme.id
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the interaction type of the enzyme named 'ALA synthase' and the medicine named 'Aripiprazole'?*/


SELECT interaction_type 
FROM enzyme 
INNER JOIN medicine_enzyme_interaction ON enzyme.id = medicine_enzyme_interaction.enzyme_id 
INNER JOIN medicine ON medicine.id = medicine_enzyme_interaction.medicine_id 
WHERE enzyme.name = 'ALA synthase' 
AND medicine.name = 'Aripiprazole'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the type of interaction for the enzyme named 'ALA synthase' and the medicine named 'Aripiprazole'?*/


SELECT interaction_type 
FROM enzyme 
INNER JOIN medicine_enzyme_interaction ON enzyme.id = medicine_enzyme_interaction.enzyme_id 
INNER JOIN medicine ON medicine.id = medicine_enzyme_interaction.medicine_id 
WHERE enzyme.name = 'ALA synthase' 
AND medicine.name = 'Aripiprazole'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the most common interaction type between enzymes and medicine? And how many are there?*/


SELECT interaction_type, COUNT(*) AS count
FROM medicine_enzyme_interaction
GROUP BY interaction_type
ORDER BY count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the most common types of interactions between enzymes and medicine, and how many types are there?*/


SELECT interaction_type, COUNT(*) AS num_interactions
FROM medicine_enzyme_interaction
GROUP BY interaction_type
ORDER BY num_interactions DESC

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer How many medicines have the FDA approval status 'No' ?*/


SELECT COUNT(*) 
FROM medicine 
WHERE FDA_approved = 'No'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer How many medicines were not approved by the FDA?*/


SELECT COUNT(*)
FROM medicine
WHERE FDA_approved = 0

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer How many enzymes do not have any interactions?*/


SELECT COUNT(*) 
FROM enzyme 
WHERE enzyme.id NOT IN (SELECT enzyme_id FROM medicine_enzyme_interaction)

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the count of enzymes without any interactions?*/


SELECT COUNT(*)
FROM enzyme e
LEFT JOIN medicine_enzyme_interaction mei
ON e.id = mei.enzyme_id
WHERE mei.enzyme_id IS NULL

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What is the id and trade name of the medicines can interact with at least 3 enzymes?*/


SELECT m.id, m.Trade_Name 
FROM medicine m 
INNER JOIN medicine_enzyme_interaction mei 
ON m.id = mei.medicine_id 
GROUP BY m.id, m.Trade_Name 
HAVING COUNT(*) >= 3

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the ids and trade names of the medicine that can interact with at least 3 enzymes?*/


SELECT m.id, m.Trade_Name
FROM medicine m
INNER JOIN medicine_enzyme_interaction mei ON m.id = mei.medicine_id
GROUP BY m.id, m.Trade_Name
HAVING COUNT(*) >= 3

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the distinct name, location and products of the enzymes which has any 'inhibitor' interaction?*/


SELECT DISTINCT e.name, e.location, e.product
FROM enzyme e
INNER JOIN medicine_enzyme_interaction mei
ON e.id = mei.enzyme_id
WHERE mei.interaction_type = 'inhibitor'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the different names, locations, and products of the enzymes that are capable inhibitor interactions?*/


SELECT e.name, e.Location, e.Product
FROM enzyme e
INNER JOIN medicine_enzyme_interaction mei
ON e.id = mei.enzyme_id
INNER JOIN medicine m
ON mei.medicine_id = m.id
WHERE mei.interaction_type = 'inhibitor'
GROUP BY e.name, e.Location, e.Product

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to List the medicine name and trade name which can both interact as 'inhibitor' and 'activitor' with enzymes.*/


SELECT m.name, m.Trade_Name 
FROM medicine m 
INNER JOIN medicine_enzyme_interaction mei 
ON m.id = mei.medicine_id 
WHERE mei.interaction_type IN ('inhibitor', 'activator') 
GROUP BY m.name, m.Trade_Name

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the medicine and trade names that can interact as an inhibitor and activitor with enzymes?*/


SELECT m.name, m.Trade_Name
FROM medicine m
INNER JOIN medicine_enzyme_interaction mei
ON m.id = mei.medicine_id
WHERE mei.interaction_type IN ('inhibitor', 'activator')
GROUP BY m.name, m.Trade_Name

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to Show the medicine names and trade names that cannot interact with the enzyme with product 'Heme'.*/


SELECT m.name, m.Trade_Name 
FROM medicine m 
LEFT JOIN medicine_enzyme_interaction mei ON m.id = mei.medicine_id 
LEFT JOIN enzyme e ON mei.enzyme_id = e.id 
WHERE e.Product != 'Heme' 
AND mei.interaction_type IS NULL

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the medicine and trade names that cannot interact with the enzyme with the product 'Heme'?*/


SELECT m.name, m.Trade_Name
FROM medicine m
LEFT JOIN medicine_enzyme_interaction mei ON m.id = mei.medicine_id
LEFT JOIN enzyme e ON mei.enzyme_id = e.id
WHERE e.Product = 'Heme'
AND mei.interaction_type IS NULL

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer How many distinct FDA approval statuses are there for the medicines?*/


SELECT COUNT(DISTINCT FDA_approved)
FROM medicine

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer How many different FDA approval statuses exist for medicines?*/


SELECT COUNT(DISTINCT FDA_approved)
FROM medicine

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer Which enzyme names have the substring "ALA"?*/


SELECT name 
FROM enzyme 
WHERE name LIKE '%ALA%'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer What are the names of enzymes that include the string 'ALA'?*/


SELECT name 
FROM enzyme 
WHERE name LIKE '%ALA%'

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to find the number of medicines offered by each trade.*/


SELECT Trade_Name, COUNT(*) AS Number_of_Medicines
FROM medicine
GROUP BY Trade_Name

/*Here are Mysql tables, with their properties:

medicine(id, name, Trade_Name, FDA_approved)
enzyme(id, name, Location, Product, Chromosome, OMIM, Porphyria)
medicine_enzyme_interaction(enzyme_id, medicine_id, interaction_type)

Create a SQL request to answer How many medicines are offered by each trade name?*/


SELECT Trade_Name, COUNT(*) AS 'Number of Medicines'
FROM medicine
GROUP BY Trade_Name

