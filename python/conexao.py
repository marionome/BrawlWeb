import mysql.connector
conexao = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="",
    database="brawlweb"
)

ex = conexao.cursor()
ex.execute("SELECT * FROM brawler")
table = ex.fetchall()
for i in range(len(table)):
    print(table[i])