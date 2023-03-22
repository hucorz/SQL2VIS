# import sqlparse

# sql = '''
# select * from foo; select * from bar
# '''
# sql = sqlparse.split(sql)
# print(sql)
# sql = sqlparse.format(sql[1], reindent=True, keyword_case='upper')
# print(sql)


import sqlglot
try:
    sqlglot.transpile("SELECT foo (FROM bar")
except sqlglot.errors.ParseError:
    print('err')