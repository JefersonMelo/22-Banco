from flask import Blueprint, render_template

second = Blueprint("second", __name__, static_folder="static", template_folder="templates")

@second.route("/index")    
@second.route("/")
def home():
    return render_template("index.html")


@second.route("/test")
def test():
    return render_template("view.html")