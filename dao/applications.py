from flask import Flask, render_template, request, redirect, url_for, flash, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

app = Flask(__name__)
app.secret_key = "Secret Key"


# SqlAlchemy Database Configuration With Mysql
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+mysqlconnector://root@localhost:3306/ta_listing"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False



db = SQLAlchemy(app)
CORS(app)

class Applications(db.Model):

    __tablename__ = 'applications'
    student_name = db.Column(db.String(30), nullable=False)
    student_id = db.Column(db.String(15), nullable=False)
    application_no = db.Column(db.Integer, primary_key = True, nullable=False)
    status = db.Column(db.Integer, nullable=False)
    mod_id = db.Column(db.String(30), nullable=False)
    professor_name = db.Column(db.String(20), nullable=False)
    professor_id = db.Column(db.String(12), nullable=False)


    def __init__(self, student_name, student_id, application_no, status, mod_id, professor_name, professor_id):

        self.student_name = student_name
        self.student_id = student_id
        self.application_no = application_no
        self.status = status
        self.mod_id = mod_id
        self.professor_name = professor_name
        self.professor_id = professor_id

    def json(self):
        return {"student_name": self.student_name, "student_id": self.student_id, 
        "application_no": self.application_no, "status": self.status, "mod_id": self.mod_id, 
        "professsor_name": self.professor_name, "professor_id": self.professor_id}

@app.route('/get_all')
def get_all():
	return jsonify({"applications": [application.json() for application in Applications.query.all()]})



# ! port numbers
# account = 5010
# applications = 5011
# modules = 5012
# payments = 5013
# professors = 5014
# students = 5015
# student_experience = 5016
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5011, debug=True)