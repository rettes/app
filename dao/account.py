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

class Account(db.Model):

    __tablename__ = 'account'
    user_id = db.Column(db.String(15), nullable=False, primary_key=True)
    hashed_password = db.Column(db.String(256), nullable=False)
    email = db.Column(db.String(32), nullable=False)
    user_type = db.Column(db.String(9), nullable=False)

    def __init__(self, user_id, hashed_password, email, user_type):
        self.user_id = user_id
        self.hashed_password = hashed_password
        self.email = email
        self.user_type = user_type

    def json(self):
        return {
            "user_id": self.user_id, "hashed_password": self.hashed_password, 
            "email": self.email, "user_type": self.user_type
        }

@app.route('/get_all')
def get_all():
	return jsonify({"accounts": [account.json() for account in Account.query.all()]})

@app.route('/get_account_by_email/<string:email>')
def get_account_by_email(email):
    account = Account.query.filter_by(email=email).first()
    if account != None:
        return jsonify(account.json())
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
    app.run(host='0.0.0.0', port=5010, debug=True)