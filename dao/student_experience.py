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

class Student_Experience(db.Model):

    __tablename__ = 'student_experience'
    student_id = db.Column(db.String(15), primary_key = True, nullable=False)
    student_name = db.Column(db.String(30), nullable=False)
    experience = db.Column(db.String(1000), nullable=False)
    

    def __init__(self, student_name, student_id, resume, rating, current_year, faculty):

        self.student_id = student_id
        self.student_name = student_name
        self.experience = experience
        

    def json(self):
        return {
            "student_id": self.student_id, "student_name": self.student_name,
            "experience": self.experience
        }

@app.route('/get_all')
def get_all():
	return jsonify({"student_experiences": [student_experience.json() for student_experience in Student_Experience.query.all()]})



# ! port numbers
# account = 5010
# applications = 5011
# modules = 5012
# payments = 5013
# professors = 5014
# students = 5015
# student_experience = 5016
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5016, debug=True)