/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer How many members have the black membership card?*/


SELECT COUNT(*) 
FROM member 
WHERE Membership_card = 'black'

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to Find the number of members living in each address.*/


SELECT Address, COUNT(*) AS Num_of_members
FROM member
GROUP BY Address

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to Give me the names of members whose address is in Harford or Waterbury.*/


SELECT Name 
FROM member 
WHERE Address IN ('Harford', 'Waterbury')

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to Find the ids and names of members who are under age 30 or with black membership card.*/


SELECT Member_ID, Name 
FROM member 
WHERE Age < 30 OR Membership_card = 'black'

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to Find the purchase time, age and address of each member, and show the results in the order of purchase time.*/


SELECT m.Time_of_purchase, m.Age, m.Address 
FROM member m 
ORDER BY m.Time_of_purchase

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer Which membership card has more than 5 members?*/


SELECT Membership_card 
FROM member 
WHERE Member_ID IN (SELECT Member_ID 
                    FROM happy_hour_member 
                    GROUP BY Member_ID 
                    HAVING COUNT(*) > 5) 
GROUP BY Membership_card

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer Which address has both members younger than 30 and members older than 40?*/


SELECT Address 
FROM shop 
INNER JOIN member ON shop.Shop_ID = member.Shop_ID 
WHERE member.Age < 30 AND member.Age > 40

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer What is the membership card held by both members living in Hartford and ones living in Waterbury address?*/


SELECT m.Membership_card 
FROM member m 
INNER JOIN shop s ON m.Address = s.Address 
WHERE m.Address IN ('Hartford', 'Waterbury') 
GROUP BY m.Membership_card

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer How many members are not living in Hartford?*/


SELECT COUNT(*) 
FROM member 
WHERE Address NOT LIKE '%Hartford%'

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer Which address do not have any member with the black membership card?*/


SELECT Address
FROM shop
WHERE Shop_ID NOT IN (SELECT Shop_ID
                      FROM member
                      WHERE Membership_card = 'black')
ORDER BY Address

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to Show the shop addresses ordered by their opening year.*/


SELECT Address, Open_Year 
FROM shop 
ORDER BY Open_Year ASC

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer What are the average score and average staff number of all shops?*/


SELECT AVG(Score) AS Average_Score, AVG(Num_of_staff) AS Average_Staff_Number
FROM shop

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to Find the id and address of the shops whose score is below the average score.*/


SELECT Shop_ID, Address 
FROM shop 
WHERE Score < (SELECT AVG(Score) FROM shop)

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to Find the address and staff number of the shops that do not have any happy hour.*/


SELECT shop.Address, shop.Num_of_staff 
FROM shop 
LEFT JOIN happy_hour 
ON shop.Shop_ID = happy_hour.Shop_ID 
WHERE happy_hour.HH_ID IS NULL

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer What are the id and address of the shops which have a happy hour in May?*/


SELECT shop.Shop_ID, shop.Address 
FROM shop 
INNER JOIN happy_hour 
ON shop.Shop_ID = happy_hour.Shop_ID 
WHERE happy_hour.Month = 'May'

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to which shop has happy hour most frequently? List its id and number of happy hours.*/


SELECT Shop_ID, COUNT(HH_ID) AS Num_of_happy_hours
FROM happy_hour
GROUP BY Shop_ID
ORDER BY Num_of_happy_hours DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer Which month has the most happy hours?*/


SELECT Month, COUNT(*) AS Total_Happy_Hours
FROM happy_hour
GROUP BY Month
ORDER BY Total_Happy_Hours DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

shop(Shop_ID, Address, Num_of_staff, Score, Open_Year)
member(Member_ID, Name, Membership_card, Age, Time_of_purchase, Level_of_membership, Address)
happy_hour(HH_ID, Shop_ID, Month, Num_of_shaff_in_charge)
happy_hour_member(HH_ID, Member_ID, Total_amount)

Create a SQL request to answer Which months have more than 2 happy hours?*/


SELECT Month 
FROM happy_hour 
GROUP BY Month 
HAVING COUNT(*) > 2

