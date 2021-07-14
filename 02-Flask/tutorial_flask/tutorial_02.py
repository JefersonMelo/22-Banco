from os import name
from flask import Flask, redirect, url_for, render_template

app = Flask(__name__)

@app.route("/<name>")
def home(name):
    return render_template("tutorial_02.html", context=["Jef","Jon","Car"])

if __name__ == "__main__":
    app.run() 