$(document).ready(function () {
    
// variables
const cssQuiz = $("#startCssBtn");
const jsQuiz = $("#startJsBtn");
const htmlQuiz = $("#startHtmlBtn");
const nodeQuiz = $("#startNodeBtn");


//js btn
jsQuiz.on("click", function (event) {
    event.preventDefault()
    console.log("You guys are killing this!")
    window.location = "/quiz"
  })


// //css btn
cssQuiz.on("click", function (event) {
    event.preventDefault()
    window.location = "/quiz"

  })

// //html btn
htmlQuiz.on("click", function (event) {
    event.preventDefault()
    window.location = "/quiz"
  })

// //node btn
nodeQuiz.on("click", function (event) {
    event.preventDefault()
    window.location = "/quiz"
  })

})