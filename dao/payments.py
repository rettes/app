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
    payment_status = db.Column(db.String(6), nullable=False)
    payment_details = db.Column(db.String(99), nullable=False)
    payment_date = db.Column(db.DateTime, nullable=False)
    mod_id = db.Column(db.String(30), nullable=False)
    student_id = db.Column(db.String(15), nullable=False)
    professor_id = db.Column(db.String(15), nullable=False)

    def __init__(self, payment_id, payment_amt, payment_status, payment_details , payment_date ,mod_id, student_id, professor_id):

        self.payment_id = payment_id
        self.payment_amt = payment_amt
        self.payment_status = payment_status
        self.payment_details = payment_details
        self.payment_date = payment_date
        self.mod_id = mod_id
        self.student_id = student_id
        self.professor_id = professor_id

    def json(self):
        return {
            "payment_id": self.payment_id , "payment_amt": self.payment_amt, 
            "payment_status": self.payment_status, "payment_details": self.payment_details, 
            "payment_date": self.payment_date, "mod_id": self.mod_id, 
            "student_id": self.student_id, "professor_id": self.professor_id
        }

@app.route('/get_all')
def get_all():
	return jsonify({"payments": [payment.json() for payment in Payments.query.all()]})

@app.route('/get_payment_by_id/<string:student_id>')
def get_name_by_id(student_id):
    payment = Payments.query.filter_by(student_id=student_id).all()
    if payment != None:
        return jsonify({"payments": [payment.json() for payment in Payments.query.filter_by(student_id=student_id).all()]})
    else:
        print('error')
        return jsonify({"message": 'error' })

@app.route('/add_tenure/<string:tenure>')
def add_course(tenure):
    payment = []
    details = tenure.split("&")
    last_id = Payments.query.order_by(Payments.payment_id.desc()).first()
    new_id = last_id.payment_id + 1
    for param in details:
        temp = param.split("=")
        if temp[1] == "id":
            payment.append(new_id)
        else:
            payment.append(temp[1])
    try:
        me = Payments(payment[0], payment[1], payment[2], payment[3], payment[4], payment[5], payment[6], payment[7])
        db.session.add(me)
        db.session.commit()
        return jsonify("Tenure added")
    except:
        return jsonify("Tenure exists")



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