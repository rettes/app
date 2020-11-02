from flask import Flask, render_template, request, redirect, url_for, flash, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

app = Flask(__name__)
app.secret_key = "Secret Key"


# SqlAlchemy Database Configuration With Mysql
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+mysqlconnector://root:root@localhost:3306/ta_listing"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False



db = SQLAlchemy(app)
CORS(app)

class Modules(db.Model):

    __tablename__ = 'modules'
    mod_id = db.Column(db.Integer, primary_key = True, nullable=False)
    mod_name = db.Column(db.String(30), nullable=False)
    positions_available = db.Column(db.Integer, nullable=False)
    job_scope = db.Column(db.String(99), nullable=False)
    professor_name = db.Column(db.String(30), nullable=False)
    professor_id = db.Column(db.String(12), nullable=False)
    school = db.Column(db.String(1000), nullable=False)
    level = db.Column(db.String(100), nullable=False)
    description = db.Column(db.String(10000), nullable=False)


    def __init__(self, mod_id, mod_name, positions_available , job_scope ,professor_name, professor_id, school, level, description):

        self.mod_id = mod_id
        self.mod_name = mod_name
        self.positions_available = positions_available
        self.job_scope = job_scope
        self.professor_name = professor_name
        self.professor_id = professor_id
        self.school = school
        self.level = level
        self.description = description

    def json(self):
        return {
            "mod_id": self.mod_id , "mod_name": self.mod_name, 
            "positions_available": self.positions_available, "job_scope": self.job_scope, 
            "professsor_name": self.professor_name, "professor_id": self.professor_id, "school":self.school, "level":self.level,
            "description": self.description
        }

@app.route('/get_all')
def get_all():
	return jsonify({"modules": [module.json() for module in Modules.query.all()]})



# ! port numbers
# account = 5010
# applications = 5011
# modules = 5012
# payments = 5013
# professors = 5014
# students = 5015
# student_experience = 5016
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5012, debug=True)