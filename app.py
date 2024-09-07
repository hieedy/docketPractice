from flask.app import Flask

app = Flask(__name__)

@app.route('/')
def print_hi():
    return '<h1>Hey There </h1>'


if __name__ == '__main__':
    app.run(debug=True)
