from flask import Flask

app = Flask(__name__)

@app.route('/pong', methods=['POST'])
def pong():
    return "Pong!"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
