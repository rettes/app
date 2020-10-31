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

class Payments(db.Model):

    __tablename__ = 'payments'
    payment_id = db.Column(db.Integer, primary_key = True, nullable=False)
    payment_amt = db.Column(db.Integer, nullable=False)
    payment_details = db.Column(db.String(99), nullable=False)
    payment_date = db.Column(db.DateTime, nullable=False)
    mod_id = db.Column(db.String(30), nullable=False)
    student_id = db.Column(db.String(15), nullable=False)
    professor_id = db.Column(db.String(15), nullable=False)

    def __init__(self, payment_id, payment_amt, payment_details , payment_date ,mod_id, student_id, professor_id):

        self.payment_id = payment_id
        self.payment_amt = payment_amt
        self.payment_details = payment_details
        self.payment_date = payment_date
        self.mod_id = mod_id
        self.student_id = student_id
        self.professor_id = professor_id

    def json(self):
        return {
            "payment_id": self.payment_id , "payment_amt": self.payment_amt, 
            "payment_details": self.payment_details, "payment_date": self.payment_date, 
            "mod_id": self.mod_id, "student_id": self.student_id, "professor_id": self.professor_id
        }

@app.route('/get_all')
def get_all():
	return jsonify({"payments": [payment.json() for payment in Payments.query.all()]})



# ! port numbers
# account = 5010
# applications = 5011
# modules = 5012
# payments = 5013
# professors = 5014
# students = 5015
# student_experience = 5016
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5013, debug=True)