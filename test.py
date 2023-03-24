# import sqlparse

# sql = '''
# select * from foo; select * from bar
# '''
# sql = sqlparse.split(sql)
# print(sql)
# sql = sqlparse.format(sql[1], reindent=True, keyword_case='upper')
# print(sql)


# import sqlglot
# try:
#     sqlglot.transpile("SELECT foo (FROM bar")
# except sqlglot.errors.ParseError:
#     print('err')

import re

with open(f'sql/aircraft.sql', 'r', encoding='utf-8') as f:
    # sqlparse.splite 似乎是用 ';' 来分割 sql 的？有点鸡肋，gpt 返回的 sql 并没有 ';'(虽然可以帮他加上)
    # sql_list = sqlparse.split(f.read())
    # s = f.read()
    s = r'''
    SELECT COUNT(Aircraft_ID) FROM aircraft

    /*Here are Mysql tables, with their properties:

    pilot(Pilot_Id, Name, Age)
    aircraft(Aircraft_ID, Aircraft, Description, Max_Gross_Weight, Total_disk_area, Max_disk_Loading)
    match(Round, Location, Country, Date, Fastest_Qualifying, Winning_Pilot, Winning_Aircraft)
    airport(Airport_ID, Airport_Name, Total_Passengers, %_Change_2007, International_Passengers, Domestic_Passengers, Transit_Passengers, Aircraft_Movements, Freight_Metric_Tonnes)
    airport_aircraft(ID, Airport_ID, Aircraft_ID)

    Create a SQL request to answer What is the number of aircraft?*/


    SELECT AVG(International_Passengers)
    FROM airport

    /*111*/

    SELECT International_Passengers, Domestic_Passengers 
    FROM airport 
    WHERE Airport_Name = 'London Heathrow'
    '''
    sql_list = re.split('\/\*(?:[^\*]|\*+[^\/\*])*\*+\/', s)
for sql in sql_list:

    print(sql)