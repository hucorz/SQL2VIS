'''
customers_campaigns_ecommerce / schema.sql
products_for_hire / schema.sql
 里面有个 CREATE 里面少了个 逗号

'''
import os
import ijson
import random
from pathlib import Path
from pprint import pprint
from collections import defaultdict

import sqlparse
import sqlglot
from tqdm import tqdm


def extract_table_name(sql):
    beg = sql.upper().find("TABLE")+6
    end = sql.find(" ", beg)
    table_name = sql[beg: end].strip()
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
    beg = sql.find('(')
    attr_list = sql[beg+1:-1].split(',')
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
                if sql.strip().upper().startswith("CREATE"):
                    sql = sql.replace(r"`", '"')
                    new_sql = sqlglot.transpile(sql, write='sqlite')[0]
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

import json
# print(extractedDB)
with open('extractedDB.json', 'w') as json_file:
    json_file.write(json.dumps(extractedDB, indent=4))

# with open(f'./spider/train_spider.json', 'r') as f:
#     objects = ijson.items(f, 'item')
#     for obj in objects:
#         print(obj['question'])
#         print(obj['query'])
#         break
