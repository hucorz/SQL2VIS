import sqlparse

sql = '''
select * from foo; select * from bar
'''
sql = sqlparse.split(sql)
print(sql)
sql = sqlparse.format(sql[1], reindent=True, keyword_case='upper')
print(sql)