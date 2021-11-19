from flask import Flask

app = Flask(__name__)

@app.route('/corentin')
def hello():
    return 'Corentin was here!'


