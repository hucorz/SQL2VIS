import os
from pathlib import Path
from collections import defaultdict

import sqlparse
import sqlglot
from tqdm import tqdm


def extract_table_name(sql):
    # beg = sql.upper().find("TABLE")+6
    # end = sql.find(" ", beg)
    # table_name = sql[beg: end].strip()
    # if table_name.startswith('"'):
    #     table_name = table_name[1:-1]
    # return table_name

    # 某些 CREATE 语句是像这样的：CREATE TABLE IF NOT EXISTS "department" (
    end = sql.find('(')
    sql = sql[:end].strip()
    beg = sql.rfind(' ')
    table_name = sql[beg+1:].strip()
    if table_name.startswith('"'):
        table_name = table_name[1:-1]
    return table_name

def extract_attr_list(sql):
    def fun(attr):
        attr = attr.strip()
        end = attr.find(' ')
        attr = attr[:end]
        if attr.startswith('"'):
            attr = attr[1:-1]
        return attr
    def filter_fun(str):
        # 过滤掉 primary key 和 foreign key
        if str.strip().upper().startswith("FOREIGN") or str.strip().upper().startswith("PRIMARY"):
            return False
        return True

    beg = sql.find('(')
    attr_list = sql[beg+1:-1].strip().split('\n')
    attr_list = filter(filter_fun, attr_list)
    attr_list = [fun(attr) for attr in attr_list]
    return attr_list


spider_root = Path('./spider')
db_list = os.listdir(spider_root / 'database')
extractedDB = defaultdict(dict)

for db in tqdm(db_list):
    try:
        with open(spider_root / 'database' / db / 'schema.sql', 'r', encoding='utf-8') as f:                
            if db in ["baseball_1", 'bike_1', 'soccer_1', 'sakila_1', 'store_1']: # 太大了，一堆 INSERT
                continue
            else:
                sql_list = sqlparse.split(f.read())

            for sql in sql_list:
                if sql.upper().find("CREATE TABLE") != -1:
                    sql = sql[sql.upper().find("CREATE"):] # CREATE 语句前可能有注释
                if sql.strip().upper().startswith("CREATE"):
                    sql = sql.replace(r"`", '"')
                    if (db == "flight_1"):
                        print()
                    new_sql = sqlglot.transpile(sql, write='sqlite', pretty=True)[0]
                    # print(new_sql)

                    # table name
                    table_name = extract_table_name(new_sql)
                    # print(table_name)

                    # attr
                    attr_list = extract_attr_list(new_sql)
                    # print(attr_list)

                    extractedDB[db][table_name] = attr_list
    except FileNotFoundError as e: # 没有 schema.sql
        pass
    except RuntimeError as e:
        print()

import json
# print(extractedDB)
with open('extractedDB.json', 'w') as json_file:
    json_file.write(json.dumps(extractedDB, indent=4))

