# BOOK-A-TA
### Overview of features: This app is used for students to browse and apply for a TA position. Professors can also create a TA listing for students to apply to. Administrators will be able to make payment to the students that have completed their TA tenure.
<br> 

# Downloading dependencies:
```
pip install -r requirements.txt
```
# Folder directories
app <br>
&nbsp; |- dao ==> contains the microservices that are required for the application to work <br>
&nbsp; |- data ==> contains the .sql file to initialize the database of this app <br>
&nbsp; |- login ==> contains the codes and microservice for the login function <br>
&nbsp; |- main ==> contains the codes for the main features of this app  <br>

<br>
 
# Flask APIs and their port numbers
#### <i>port number, code to run microservice</i>
### login (google) = 5000, python dao/login.py
### index (normal login) = 5001, python login/index.py
### account = 5010, python dao/account.py
### applications = 5011, python dao/applications.py
### modules = 5012, python dao/modules.py
### payments = 5013, python dao/payments.py
### professors = 5014, python dao/professors.py
### students = 5015, python dao/students.py
### student_experience = 5016, python dao/student_experience.py
<br>

# Login credentials to use this app
## Admin:
### - username: admin@smu.edu.sg
### - password: admin
<br>

## Professor:
### - username: lkshar@smu.edu.sg
### - password: professor
<br>

## Student:
### - username: john.teo.2018@sis.smu.edu.sg
### - password: student
<br>
