from flask import Flask, render_template
from admin.second import second

app = Flask(__name__)
app.register_blueprint(second, url_prefix="/admin")


@app.route("/")
def test():
    return render_template("home.html")

if __name__ == "__main__":
    app.run(debug=True) 