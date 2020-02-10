// /* global moment */

// // When user clicks add-btn
// $("#user-submit").on("click", function (event) {
//     event.preventDefault()

//     // Make a newUser object
//     var newUser = {
//         name: $("#user").val().trim(),
//         created_at: moment().format("YYYY-MM-DD HH:mm:ss")
//     }

//     console.log(newUser)

//     // Send an AJAX POST-request with jQuery
//     $.post("/api/new", newUser)
//         // On success, run the following code
//         .then(function () {

//             var row = $("<div>")
//             row.addClass("user")

//             row.append("<p>" + newUser.name + " added: </p>")
//             row.append("<p>At " + moment(newUser.created_at).format("h:mma on dddd") + "</p>")

//         })

//     // Empty each input box by replacing the value with an empty string
//     $("#user").val("")
// })

// // When the page loads, grab all of our users
// $.get("/api/all", function (data) {

//     if (data.length !== 0) {

//         for (var i = 0; i < data.length; i++) {

//             var row = $("<div>")
//             row.addClass("user")

//             row.append("<p>" + data[i].user + " added.. </p>")
//             row.append("<p>At " + moment(data[i].created_at).format("h:mma on dddd") + "</p>")
//         }

//     }

// })