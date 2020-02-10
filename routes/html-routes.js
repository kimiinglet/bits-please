
/////////////////////////////////////////////////////////////////////////
// via .SendFile
// handles HTML pg user is sent to/shown 
// based on user action and logic
////////////////////////////////////////////////////////////////////////

// Requiring path to so we can use relative routes to our HTML files
var path = require("path")

// Requiring our custom middleware for checking if a user is logged in
// var isAuthenticated = require("../config/middleware/isAuthenticated")

module.exports = function (app) {

  //main menu
  app.get("/", function (req, res) {
    // // If the user already has an account send them to the homepage
    // if (req.user) {
    //   res.redirect("/")
    // }
    res.sendFile(path.join(__dirname, "../public/main-menu.html"))
  })


  //Quiz page
  app.get("/quiz", function (req, res) {
    // 
    // if (req.user) {
    //   res.redirect("/")
    // }
    res.sendFile(path.join(__dirname, "../public/quiz.html"))
  })

  //User profil / quiz score history page
  // Here we've added our isAuthenticated middleware to this route.
  // If a user who is not logged in tries to access this route they will be redirected to the homepage
  app.get("/profile", function (req, res) {
    // if (req.user) {
    //   res.redirect("/")
    // }
    res.sendFile(path.join(__dirname, "../public/profile.html"))
  })

  app.get("*", function (req, res) {
    res.sendFile(path.join(__dirname, "../public/404.html"))
  })

  //main-menu
  // app.get("/", function (req, res) {
  //   // If the user already has an account send them to the homepage
  //   if (req.user) {
  //     res.redirect("/")
  //   }
  //   res.sendFile(path.join(__dirname, "../public/main-menu.html"))
  //   console.log("BAM")
  // })

}




