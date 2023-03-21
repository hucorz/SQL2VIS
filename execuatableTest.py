import ijson
import json
import random
from pprint import pprint
from collections import defaultdict

# prompts.json
questions = defaultdict(list)
with open(f'./spider/train_spider.json', 'r') as f:
    objects = ijson.items(f, 'item')
    for obj in objects:
        question = obj['question']
        query = obj['query']
        db_id = obj['db_id']
        questions[db_id].append({'question': question,'query': query})

# with open('prompts.json', 'w') as json_file:
#     json_file.write(json.dumps(questions, indent=4))


with open(f'./extractedDB.json', 'r') as f:
    extractedDB = json.load(f)

prompt_head = "Here are Mysql tables, with their properties:\n\n"
for db_id, val_list in questions.items():
    try:
        db = extractedDB[db_id]

        '''
        类似这样 Flights(id, source_airport, destination_airport, depart_time)
        '''
        prompt_db = ""
        for table, attr_list in db.items():
            prompt_db += f"{table}({', '.join(attr_list)})\n"
        prompt_db += "\n"

        for val in val_list:
            prompt_question = "Create a SQL request to "
            if question.strip().endswith("?"):
                prompt_question += "answer "
            question = val["question"]
            prompt_question += question


            prompt = prompt_head + prompt_db + prompt_question
            if random.randint(1, 100) < 3:
                print(prompt)
                print('****************************************************************************')
    except KeyError:
        pass