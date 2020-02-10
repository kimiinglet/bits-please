$(document).ready(function () {
    
// variables
// const cssQuiz = $("#startCssBtn");
const jsQuiz = $("#startJsBtn");
// const htmlQuiz = $("startHtmlBtn");
// const nodeQuiz = $("startNodeBtn");


//js btn
jsQuiz.on("click", function (event) {
    event.preventDefault()
    console.log("You guys are killing this!")
    window.location = "/quiz"
  })// 4 btn functions
  }) //onclick




// //css btn
// cssQuiz.on("click", function (event) {
//     event.preventDefault()

//   })

// //html btn
// htmlQuiz.on("click", function (event) {
//     event.preventDefault()
    
//   })

// //node btn
// nodeQuiz.on("click", function (event) {
//     event.preventDefault()
    
//   })