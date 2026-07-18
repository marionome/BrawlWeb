from flask import Flask, render_template
from backend.buscar_brawler import brawl_bs

app = Flask(__name__)
app.register_blueprint(brawl_bs, url_prefix="/brawler")

@app.route("/")

def main():
    return render_template("brawlstarsWeb.html") 

if __name__ == "__main__":
    app.run(debug=True)