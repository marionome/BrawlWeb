import mysql.connector
def main():
    conexao = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        password="sans009Mnp",
        database="brawlweb"
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