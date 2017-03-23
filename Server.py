import sys

sys.path.append('/ENV/Lib')

from flask import Flask, current_app
from flask import jsonify
from KaideeDB import KaideeDB

app = Flask(__name__)
db = KaideeDB()

@app.route("/")
def index():
    return current_app.send_static_file('index.html')

@app.route("/sql")
def select():
	return jsonify(db.selectAll())
	
if __name__ == "__main__":
    app.run()