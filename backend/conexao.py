import mysql.connector
from dotenv import load_dotenv
import os

load_dotenv()
conexao = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_NAME")
)

ex = conexao.cursor()
ex.execute("SELECT * FROM brawler")
table = ex.fetchall()
for i in range(len(table)):
    print(table[i])