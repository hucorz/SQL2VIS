import os
import ijson
import json
import random
import logging
from collections import defaultdict

from tqdm import tqdm
import sqlglot
import sqlparse
import re

import sqlite3

logging.basicConfig(format='%(message)s\n',
                    level=logging.ERROR,
                    filename='sqlTest/execuatableTest.log',
                    filemode='w')

# 准备测试的 dbs
db_list = os.listdir('sql')
db_list = list(map(lambda x: x.split('.')[0], db_list))
# print(db_list[:5])

def res_print(s):
    for row in s:
        print(row)
    print()

for db_id in db_list:
    total, err = 0, 0

    connection = sqlite3.connect(f'spider/database/{db_id}/{db_id}.sqlite')
    cursor = connection.cursor()
    # 测试 gpt 返回的 sql
    with open(f'sql/{db_id}.sql', 'r') as f:
        # sqlparse.splite 似乎是用 ';' 来分割 sql 的？有点鸡肋，gpt 返回的 sql 并没有 ';'(虽然可以帮他加上)
        # sql_list = sqlparse.split(f.read())
        sql_list = re.split('\/\*(?:[^\*]|\*+[^\/\*])*\*+\/', f.read())
    for sql in sql_list:
        if sql.strip() == '':
            continue
        total += 1
        try:
            res = cursor.execute(sql)
        except sqlite3.OperationalError as e:
            err += 1
        except Exception as e:
            err += 1
            

    connection.close()
    logging.error(f'{db_id}:{total-err} / {total}')
