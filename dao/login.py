from flask import Flask, render_template, request, redirect, url_for, flash, jsonify, session
import functools
import json
import os

from authlib.client import OAuth2Session
import google.oauth2.credentials
import googleapiclient.discovery

import google_auth

from flask_cors import CORS


app = Flask(__name__)
app.secret_key = "Secret Key"

CORS(app)

app.register_blueprint(google_auth.app)

@app.route('/')
def index():
    if google_auth.is_logged_in():
        user_info = google_auth.get_user_info()
        return user_info['email']
    return 'You are not currently logged in.'
@app.route('/get_all')
def get_all():
    if google_auth.is_logged_in():
        user_info = google_auth.get_user_info()
        session['email'] = user_info['email']
        return redirect("http://localhost/app/main/index.html?" + str(session['email']), code=302)
    return 'You are not currently logged in.'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)