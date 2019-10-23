import os

from flask import Flask, render_template, request

app = Flask(__name__)

token = "{flag}git_challenge_surpass"


@app.route("/")
def index():
    return render_template('index.html')


if __name__ == "__main__":
    app.run()
