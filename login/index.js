function verifyPassword() {

    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    console.log(email)
    // Step 1
    var request = new XMLHttpRequest();

    // Step 2
    // Register function
    request.onreadystatechange = function() {
        // Step 5
        if( this.readyState == 4 && this.status == 200 ) {
            // Response is ready
            console.log('success');
            var json_obj = JSON.parse(request.responseText);
            processLogin(json_obj);
        }
        // else if( request.readyState == 4 && request.status == 404 ) {
        //     console.log('Fail to retrieve request')
        }
    

    // Step 3
    var url = `http://127.0.0.1:5001/login?email=${email}&password=${password}`; 

    // var url = `http://localhost:5001/`; 
    request.open("GET", url, true); 
    request.send();
    
    // request.open("PUT", url, true); 
    // request.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); 
    // request.send("email=" + email +"&password="+password); // query parameters

    }

// PART B
function processLogin(json_obj) {
    var verify_password = json_obj.verify_password;

    if (verify_password == true) {
        console.log('success, password verified');
    } else{
        document.getElementById('loginFailed').innerHTML = 
        `<div class="alert alert-danger" role="alert">
        Wrong email or password!
      </div>`;
    }
    
}

