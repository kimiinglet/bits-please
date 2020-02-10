$(document).ready(function () {
  $("#signBtn").on('click', function(){
    //window.location = "http://localhost:8080/quiz"; 
    $.get("/api/user_data").then(function(data) {
      $(".account_hero_name").text(data.username)
      //data.username was data.email
      //Post request could sign you in
      //Get username and password off the page
    })   
});

  // This file just does a GET request to figure out which user is logged in
  // and updates the HTML on the page
})

//Takes the user from the signup page to the quiz page after signing in. 
function signUpAction() {
  var playerOne = document.getElementsById("signBtn").formAction;
  document.getElementById("demo").innerHTML = playerOne;
}

//Check to see if username or password forms were left blank when submitted
function validateForm() {
  var usernameBlank = document.forms["signIn"]["uname"].value;
  if (usernameBlank == "") {
    alert("Username is required");
    return false;
  }
}
