from flask import Flask, render_template
from admin.tutorial_blueprint_10 import second

app = Flask(__name__)
app.register_blueprint(second, url_prefix="/admin")


@app.route("/")
def test():
    return "<h1>Test Home<h1>"

if __name__ == "__main__":
    app.run(debug=True) 