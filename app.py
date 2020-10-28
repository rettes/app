from flask import Flask, render_template, request, redirect, url_for, flash
from flask_sqlalchemy import SQLAlchemy
from flask_mysqldb import MySQL
from flask_cors import CORS

import hashlib, binascii, os
import basehash
import json


app = Flask(__name__)
app.secret_key = "Secret Key"
CORS(app)

# SqlAlchemy Database Configuration With Mysql
# app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+mysqlconnector://root:@localhost:3306/"
# app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'ta_listing'

db = SQLAlchemy(app)
mysql = MySQL(app)

# #Creating model table for our CRUD database
# class Data(db.Model):
#     id = db.Column(db.Integer, primary_key = True)
#     name = db.Column(db.String(100))
#     email = db.Column(db.String(100))
#     phone = db.Column(db.String(100))


#     def __init__(self, name, email, phone):

#         self.name = name
#         self.email = email
#         self.phone = phone



#This is the index route where we are going to
#query on all our listings data
@app.route('/')
def Index():
    # all_data = Data.query.all()
    cur = mysql.connection.cursor()
    cur.execute('''SELECT * FROM modules''')
    rv = cur.fetchall()
    listings = []
    for row in rv:
        listings.append(
            {'moduleCode':row[0], 'moduleName':row[1],
        'Positions':row[2], 'Description':row[3], 'Professor':row[4]}
        )

    print(listings[0])

    return render_template("index.html", listings=listings)


    # listings = [
    #     {'id':1, 'description': "TA for IS111", "professor": "Prof Shar"},
    #     {'id':2, 'description': "TA for IS111", "professor": "Prof YL"},
    #     {'id':3, 'description': "TA for IS111", "professor": "Prof Kyung"}
    # ]
    

    # return render_template("index.html", listings=listings)



# #this route is for inserting data to mysql database via html forms
# @app.route('/insert', methods = ['POST'])
# def insert():

#     if request.method == 'POST':

#         name = request.form['name']
#         email = request.form['email']
#         phone = request.form['phone']


#         my_data = Data(name, email, phone)
#         db.session.add(my_data)
#         db.session.commit()

#         flash("Employee Inserted Successfully")

#         return redirect(url_for('Index'))

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

@app.route('/login', methods = ['GET','POST'])
def login():

    if request.method == "POST":
        try:
            email = request.form['email']
            password = request.form['password']

        except:
            email = 0
            password = 0

        # simulate retrieval of email, password from database
        email = 'abc@gmail.com'
        stored_password = hash_password('123')

        # password verification
        if email == 'abc@gmail.com' and verify_password(stored_password, password ):
            flash(u"Login Successful", 'success')
            return redirect(url_for('Index'))

        else:
            flash(u"Login Unsuccessful", 'error')
            return render_template('login.html')


    else:
        return render_template('login.html')

    
    
        
    

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5001, debug=True)