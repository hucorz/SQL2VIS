/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to answer How many buildings are there?*/


SELECT COUNT(*) FROM building

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the name, street address, and number of floors for all buildings ordered by the number of floors.*/


SELECT Name, Street_address, Floors 
FROM building 
ORDER BY Floors

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to answer What is the name of the tallest building?*/


SELECT Name 
FROM building 
ORDER BY Height_feet DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to answer What are the average, maximum, and minimum number of floors for all buildings?*/


SELECT AVG(Floors) AS Average_Floors, MAX(Floors) AS Maximum_Floors, MIN(Floors) AS Minimum_Floors
FROM building

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the number of buildings with a height above the average or a number of floors above the average.*/


SELECT COUNT(*) 
FROM building 
WHERE Height_feet > (SELECT AVG(Height_feet) FROM building) 
OR Floors > (SELECT AVG(Floors) FROM building)

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to List the names of buildings with at least 200 feet of height and with at least 20 floors.*/


SELECT Name 
FROM building 
WHERE Height_feet >= 200 
AND Floors >= 20

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the names and locations of institutions that are founded after 1990 and have the type "Private".*/


SELECT Institution, Location 
FROM Institution 
WHERE Founded > 1990 
AND Type = 'Private'

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show institution types, along with the number of institutions and total enrollment for each type.*/


SELECT Type, COUNT(Institution_id) AS Number_of_Institutions, SUM(Enrollment) AS Total_Enrollment
FROM Institution
GROUP BY Type

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the institution type with the largest number of institutions.*/


SELECT Type, COUNT(*) AS Institution_Count
FROM Institution
GROUP BY Type
ORDER BY Institution_Count DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the institution type with an institution founded after 1990 and an institution with at least 1000 enrollment.*/


SELECT Institution, Type, Founded, Enrollment 
FROM Institution 
WHERE Founded > 1990 AND Enrollment >= 1000

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the name of buildings that do not have any institution.*/


SELECT Name 
FROM building 
WHERE building_id NOT IN (SELECT building_id FROM Institution)

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the names of buildings except for those having an institution founded in 2003.*/


SELECT Name 
FROM building 
WHERE building_id NOT IN (SELECT building_id 
                         FROM Institution 
                         WHERE Founded = 2003)

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to For each building, show the name of the building and the number of institutions in it.*/


SELECT building.Name, COUNT(Institution.Institution_id) AS 'Number of Institutions'
FROM building
INNER JOIN Institution ON building.building_id = Institution.building_id
GROUP BY building.Name

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the names and heights of buildings with at least two institutions founded after 1880.*/


SELECT Name, Height_feet 
FROM building 
INNER JOIN Institution 
ON building.building_id = Institution.building_id 
WHERE Institution.Founded > 1880 
GROUP BY building.building_id 
HAVING COUNT(Institution.Institution_id) > 1

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show all the distinct institution types.*/


SELECT DISTINCT Type FROM Institution

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show institution names along with the number of proteins for each institution.*/


SELECT Institution, COUNT(protein_name) AS 'Number of Proteins'
FROM Institution
INNER JOIN protein ON Institution.Institution_id = protein.Institution_id
GROUP BY Institution

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to answer How many proteins are associated with an institution founded after 1880 or an institution with type "Private"?*/


SELECT COUNT(*) 
FROM protein 
INNER JOIN Institution 
ON protein.Institution_id = Institution.Institution_id 
WHERE Institution.Founded > 1880 OR Institution.Type = 'Private'

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to Show the protein name and the institution name.*/


SELECT protein.protein_name, Institution.Institution 
FROM protein 
INNER JOIN Institution 
ON protein.Institution_id = Institution.Institution_id

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to answer How many proteins are associated with an institution in a building with at least 20 floors?*/


SELECT COUNT(*) 
FROM protein 
INNER JOIN Institution 
ON protein.Institution_id = Institution.Institution_id 
INNER JOIN building 
ON Institution.building_id = building.building_id 
WHERE building.Floors >= 20

/*Here are Mysql tables, with their properties:

building(building_id, Name, Street_address, Years_as_tallest, Height_feet, Floors)
Institution(Institution_id, Institution, Location, Founded, Type, Enrollment, Team, Primary_Conference, building_id)
protein(common_name, protein_name, divergence_from_human_lineage, accession_number, sequence_length, sequence_identity_to_human_protein, Institution_id)

Create a SQL request to answer How many institutions do not have an associated protein in our record?*/


SELECT COUNT(*) 
FROM Institution 
WHERE Institution_id NOT IN (SELECT Institution_id FROM protein)

