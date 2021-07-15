from flask import Flask, redirect, url_for, render_template, request, session, flash
from datetime import timedelta
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.secret_key = ":)"


@app.route("/index")    
@app.route("/")
def home():
    return render_template("index.html")

if __name__ == "__main__":
    db.create_all()
    app.run(debug=True) 