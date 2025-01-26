from flask import Flask, request, jsonify, render_template

app = Flask("app")

# @app.route("/")
# def index():
#     return "<h1>Hurray! You have successfully deployed your flash app!!!</h1>"
# Go to homepage
@app.get('/')
def index_get():
    return render_template('base.html') 

@app.post('/predict')
def predict():
    text = request.get_json().get("message")
    # TODO: check if text is valid
    response = "Hey! How can I help you?"
    message = {"answer": response}
    return jsonify(message)

if __name__ == "__main__":
    app.run(debug=True)