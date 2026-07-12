import mysql.connector
from dotenv import load_dotenv
import os

load_dotenv()

def main():
    conexao = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_NAME")
    )
    brawler = input("Insira o nome do brawler que vc deseja ver:\n")
    busca = conexao.cursor()
    query = "SELECT nome_brawler, classe, descricao FROM brawler WHERE nome_brawler = %s"
    busca.execute(query,(brawler,))
    resposta = busca.fetchone()
    nome_brawler, classe, descricao = resposta
    print(f"Brawler:{nome_brawler}\nClasse:{classe}\nDescrição:{descricao}")

if __name__ == "__main__":
    main()