from flask import Flask, render_template, request, redirect, url_for, flash, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

import hashlib, binascii, os
import basehash
import json
import requests


app = Flask(__name__)
app.secret_key = "Secret Key"
CORS(app)

# SqlAlchemy Database Configuration With Mysql
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+mysqlconnector://root:@localhost:3306/ta_listing"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False


db = SQLAlchemy(app)


# ! Password hashing functions
def hash_password(password):
    """Hash a password for storing."""
    salt = hashlib.sha256(os.urandom(60)).hexdigest().encode('ascii')
    pwdhash = hashlib.pbkdf2_hmac('sha512', password.encode('utf-8'), 
                                salt, 100000)
    pwdhash = binascii.hexlify(pwdhash)
    return (salt + pwdhash).decode('ascii')

def verify_password(stored_password, provided_password):
    """Verify a stored password against one provided by user"""
    salt = stored_password[:64]
    stored_password = stored_password[64:]
    pwdhash = hashlib.pbkdf2_hmac('sha512', 
                                  provided_password.encode('utf-8'), 
                                  salt.encode('ascii'), 
                                  100000)
    pwdhash = binascii.hexlify(pwdhash).decode('ascii')
    return pwdhash == stored_password

# ! password verification
@app.route('/', methods = ['GET','POST'])
def login():

    if request.method == 'POST':
        try:
            email = request.get['email']
            password = request.get['password']

        except:
            email = 0
            password = 0

        r = requests.get("http://localhost:5010/get_account_by_email/" + str(email))
        account = json.loads(r.text)
        stored_password = account['hashed_password']
        print(stored_password)
        print(password)

        # password verification
        if email != 0 and verify_password(stored_password, password):
            return jsonify({"verify_password": True })
        else:
            return jsonify({"verify_password": False })

    else:
        return
            
    
    
if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5001, debug=True)