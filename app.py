from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/survey")
def survey():
    return render_template("survey.html")

@app.route("/thanks", methods=["GET","POST"])
def thanks():
    return render_template("thanks.html")
