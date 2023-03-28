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

def res_print(s):
    for row in s:
        print(row)
    print()

sql = '''
SELECT count(*) FROM aircraft
'''
db = "aircraft"
connection = sqlite3.connect(f'spider/database/{db}/{db}.sqlite')
cursor = connection.cursor()
res = cursor.execute(sql)
res_print(res)