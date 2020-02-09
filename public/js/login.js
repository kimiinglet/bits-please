$(document).ready(function () {
  // Getting references to our form and inputs
  var loginForm = $("form.login")
  var usernameInput = $("input#username-input")
  // var emailInput = $("input#email-input");
  // var passwordInput = $("input#password-input");

  // When the form is submitted, we validate there's an email and password entered
  loginForm.on("submit", function (event) {
    event.preventDefault()
    var userData = {
      username: usernameInput.val().trim()
      // email: emailInput.val().trim(),
      // password: passwordInput.val().trim()
    }

    if (!userData.username) {
      // (!userData.email || !userData.password)
      return
    }

    // If we have an email and password we run the loginUser function and clear the form
    loginUser(!userData.username)
    // (userData.email, userData.password)
    usernameInput.val("")
    // emailInput.val("");
    // passwordInput.val("");
  })

  // loginUser does a post to our "api/login" route and if successful, redirects us the the members page
  function loginUser(username) {
    //(email, password)
    $.post("/api/login", {
      username: username
      // email: email,
      // password: password
    })
      .then(function () {
        window.location.replace("/members")
        // If there's an error, log the error
      })
      .catch(function (err) {
        console.log(err)
      })
  }
})

$(document).ready(function () {
  // This file just does a GET request to figure out which user is logged in
  // and updates the HTML on the page
  $.get("/api/user_data").then(function (data) {
    $(".account_hero_name").text(data.username)
    //data.username was data.email
  })
})
