from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/github", methods=["POST"])
def github():
    data = request.get_json()
    event = data["event"]
    if event == "push":
        # Implementar la lógica para manejar el evento push
        pass
    return "OK"

if __name__ == "__main__":
    app.run(debug=True)