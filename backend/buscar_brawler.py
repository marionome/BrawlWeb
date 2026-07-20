from flask import Flask , jsonify, Blueprint
import mysql.connector
from dotenv import load_dotenv
import os

load_dotenv()

brawl_bs = Blueprint("busca",__name__)
@brawl_bs.route("/<brawl_name>")
def ret_brawl(brawl_name):
    return busca_brawler(brawl_name)
    
def conect():
    return mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_NAME")
    )

def ler_query():
    with open("database/Query/brawlerinfo.sql","r",encoding="utf-8") as arquivo:
        return arquivo.read()

def busca_brawler(brawler):
    conexao = conect() 
    busca = conexao.cursor(dictionary = True)
    query = ler_query()
    busca.execute(query,(brawler,))
    resposta = busca.fetchone()
    #nome_brawler, classe, vida, dano, descricao = resposta
    return jsonify(resposta)
