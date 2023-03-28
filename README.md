# SQL2VIS

- spider/ : spdier数据集，下载地址:https://yale-lily.github.io/spider
- sql/ : text-davinci-003 生成的 不同 db 的 sql
- sqlTest/
    - sqlGrammerTest.py: 测试 text-davinci-003 生成的 sql 是否有语法错误的脚本
    - sqlExectuableTest.py: 测试 text-davinci-003 生成的 sql 是否真的能执行
- extractedBD.py: 从 spider 数据集中提取每个 db 的 table 以及 各个 table 的字段
- extractedQuestion.py: 从 spider 数据集中提取每个 db 的 question 和 groundTruth

TODO:

- [ ] 抽取 spider 数据集中的 table 和 column 不需要从每个 db 的 sql 中提取，可以直接从 {db_id}.sqlite 文件中提取
- [ ] 测试生成的 sql 与 groundTruth 对不对