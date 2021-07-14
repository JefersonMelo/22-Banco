from os import name
from flask import Flask, redirect, url_for, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index_tut_03.html")

@app.route("/02")
def tut_02():
    return render_template("index_tut_02.html")

if __name__ == "__main__":
    app.run(debug=True) 