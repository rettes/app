from flask import Flask, render_template, request, redirect, url_for, flash, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

app = Flask(__name__)
app.secret_key = "Secret Key"

# SqlAlchemy Database Configuration With Mysql
# app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+mysqlconnector://root@localhost:3306/ta_listing"
app.config['SQLALCHEMY_DATABASE_URI'] =  "mysql://b6f4c2bb784eb6:a6d604a2@us-cdbr-east-02.cleardb.com/heroku_bb881c2fc78bb76?reconnect=true"

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)
CORS(app)

class Professors(db.Model):

    __tablename__ = 'professors'
    professor_name = db.Column(db.String(30), nullable=False)
    professor_id = db.Column(db.String(12), primary_key=True ,nullable=False)
    

    def __init__(self, professor_name, professor_id):

        self.professor_name = professor_name
        self.professor_id = professor_id
        

    def json(self):
        return {
            "professor_name": self.professor_name , "professor_id": self.professor_id
        }

@app.route('/get_all')
def get_all():
	return jsonify({"professors": [professor.json() for professor in Professors.query.all()]})

@app.route('/get_name_by_id/<string:professor_id>')
def get_name_by_id(professor_id):
    name = Professors.query.filter_by(professor_id=professor_id).first()
    if name != None:
        return jsonify(name.json())
    else:
        print('error')
        return jsonify({"message": 'error' })

# ! port numbers
# account = 5010
# applications = 5011
# modules = 5012
# payments = 5013
# professors = 5014
# students = 5015
# student_experience = 5016
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5014, debug=True)