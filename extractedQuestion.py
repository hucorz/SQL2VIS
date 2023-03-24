import ijson
import json
from collections import defaultdict

# 生成 prompts.json
questions = defaultdict(list)
with open(f'./spider/train_spider.json', 'r') as f:
    objects = ijson.items(f, 'item')
    for obj in objects:
        question = obj['question']
        query = obj['query']
        db_id = obj['db_id']
        questions[db_id].append({'question': question,'query': query})

with open('extractedQuestion.json', 'w') as json_file:
    json_file.write(json.dumps(questions, indent=4))