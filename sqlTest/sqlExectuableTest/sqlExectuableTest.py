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

cur_dir = os.path.dirname(__file__)

logging.basicConfig(format='%(message)s\n',
                    level=logging.ERROR,)
file_handler1 = logging.FileHandler(os.path.join(cur_dir, 'sqlExectuableTest.log'))
file_handler2 = logging.FileHandler(os.path.join(cur_dir, 'failedSql.log'))

logger1 = logging.getLogger("exectuableTest")
logger1.setLevel(level=logging.ERROR)
logger1.addHandler(file_handler1)

logger2 = logging.getLogger("failedSql")
logger2.setLevel(level=logging.ERROR)
logger2.addHandler(file_handler2)

# 准备测试的 dbs
db_list = os.listdir('sql')
db_list = list(map(lambda x: x.split('.')[0], db_list))
# print(db_list[:5])

def res_print(s):
    for row in s:
        print(row)
    print()

for db_id in db_list:
    logger2.error(f"******* {db_id} *********")

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
        # except sqlite3.OperationalError as e:
        #     err += 1
        except Exception as e:
            err += 1
            logger2.error(sql)
            

    connection.close()
    logger1.error(f'{db_id}: {total-err} / {total}')
