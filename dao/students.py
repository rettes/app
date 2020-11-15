from flask import Flask, render_template, request, redirect, url_for, flash, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

app = Flask(__name__)
app.secret_key = "Secret Key"

# SqlAlchemy Database Configuration With Mysql
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+mysqlconnector://root:root@localhost:3306/ta_listing"
# app.config['SQLALCHEMY_DATABASE_URI'] =  "mysql://b6f4c2bb784eb6:a6d604a2@us-cdbr-east-02.cleardb.com/heroku_bb881c2fc78bb76?reconnect=true"

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)
CORS(app)

class Students(db.Model):

    __tablename__ = 'students'
    student_name = db.Column(db.String(30), primary_key = True, nullable=False)
    student_id = db.Column(db.String(12), nullable=False)
    resume = db.Column(db.String(99), nullable=False)
    rating = db.Column(db.Float, nullable=False)
    current_year = db.Column(db.Integer, nullable=False)
    faculty = db.Column(db.String(4), nullable=False)
    

    def __init__(self, student_name, student_id, resume, rating, current_year, faculty):

        self.student_name = student_name
        self.student_id = student_id
        self.resume = resume
        self.rating = rating
        self.current_year = current_year
        self.faculty = faculty
        

    def json(self):
        return {
            "student_name": self.student_name, "student_id": self.student_id,
            "resume": self.resume, "rating": self.rating,
            "current_year": self.current_year, "faculty": self.faculty
        }

@app.route('/get_all')
def get_all():
	return jsonify({"students": [student.json() for student in Students.query.all()]})

@app.route('/get_name_by_id/<string:student_id>')
def get_name_by_id(student_id):
    name = Students.query.filter_by(student_id=student_id).first()
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
    app.run(host='0.0.0.0', port=5015, debug=True)