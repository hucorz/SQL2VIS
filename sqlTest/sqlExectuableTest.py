import os
import ijson
import json
import random
import logging
from collections import defaultdict

from tqdm import tqdm
import sqlglot

db_list = os.listdir('sql')
print(db_list[0:5])