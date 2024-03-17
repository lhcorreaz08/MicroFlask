from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/ping', methods=['POST'])
def ping():
    return jsonify({'message': 'pong'})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)
