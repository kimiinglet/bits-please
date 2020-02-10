$(document).ready(function () {
  // Getting references to our form and input
  // var signUpForm = $("form.signup")
  // var usernameInput = $("input#username-input")
  var emailInput = $("input#email-input");
  var passwordInput = $("input#password-input");

  // When the signup button is clicked, we check to make sure a username has been made
    event.preventDefault()
    var userData = {
      // username: usernameInput.val().trim()
      email: emailInput.val().trim(),
      password: passwordInput.val().trim()
    }

    if (!userData.email || !userData.password) {
      (!userData.username)
      return;
    }
    // If we have a username, run the signUpUser function
    signUpUser(userData.email, userData.password);
    // (userData.username)
    emailInput.val("");
    passwordInput.val("");
    //usernameInput.val("");

    //////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////Get username to follow user through the quiz//////////////////////////////
  //Get references to our sign-up form and input

  $.get("/api/user_data").then(function(data) {
    $(".account_hero_name").text(data.username);
  })
  })

  // Does a post to the signup route. If successful, we are redirected to the members page
  // Otherwise we log any errors
  function signUpUser (email, password) {
   //(username)`
    $.post("/api/signup", {
      email: email,
      password: password
      //username: username
    })
      .then(function () {
        window.location.replace("/members")
        // If there's an error, handle it by throwing up a bootstrap alert
      })
      .catch(handleLoginErr)
  }

  function handleLoginErr(err) {
    $("#alert .msg").text(err.responseJSON)
    $("#alert").fadeIn(500)
  }



