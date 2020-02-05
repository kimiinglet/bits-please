/////// >> QUIZ API
/////// >> IF/ELSE TO SWITCH/CATCH/BREAK
/////// >> WRITE WIN++, LOSS++, SCORE FUNCTIONS


var fs = require("./maths.js");
var inquirer = require("inquirer");
var mysql2 = require("mysql2");
var sequelize = require("sequelize")

const connection = mysql.createConnection({
    host: "localhost",

    port: 3306,

    user: "root",

    password: process.env.DB_PASSWORD,
    database: "bits-please_db" ///////////// UPDATE
});

connection.connect(function (err) {
    if (err) throw err;
    /////////////////////////////////////////////////////
    // run the JSquiz function after the connection is made to prompt the user
    //////////////////////////////////////////////////////

});

let wins = 0;
let losses = 0;
let score = 0;

/////////////////////////////////////////////////////
// run the JSquiz function onclick from user
//////////////////////////////////////////////////////

let JSQ1 = prompt("What is the proper syntax for writing a JavaScript array for the variable 'devices' containing 'tablet', 'smartphone' and 'desktop'? Use double quotes for strings");
JSQ1 = JSQ1.toLowerCase();

if (JSQ1 === "var devices = [\"tablet\", \"smartphone\", \"desktop\"]" || JSQ1 === "const devices = [\"tablet\", \"smartphone\", \"desktop\"]") {
    wins++;
    alert("You've won " + wins + " time(s)!");

}



function (JSquiz) {

    ////////////////////////////////////////////////////////////////////////
    //// if / else if /then
    ////////////////////////////////////////////////////////////////////////
    inquirer
        .prompt(
            [{
                name: "JSQ1",
                type: "input",
                message: "What is the proper syntax for writing a JavaScript array for the variable 'devices'?",
            }]
        ).then(async function (jsq1Answer) {
                if (jsq1Answer.JSQ1 === "var devices = [\"tablet\", \"smartphone\", \"desktop\"]") {
                    wins++;
                    alert("correct! number of wins = " + wins);
                } else if (jsq1Answer.JSQ1 === "const devices = [\"tablet\", \"smartphone\", \"desktop\"]") {
                    wins++;
                    alert("correct! number of wins = " + wins);
                } else {
                    losses++;
                    alert("incorrect! number of losses = " + losses);
                };
                await JSQ2(); // await next JSQ function

                ////////////////////////////////////////////////////////////////////////
                //// Or switch/case style  ...(?)
                ////////////////////////////////////////////////////////////////////////
                let arg = prompt("What is the proper syntax for writing a JavaScript array for the variable 'devices'?");
                switch (arg) {
                    case 'jsq1Answer.JSQ1 === "var devices = [\"tablet\", \"smartphone\", \"desktop\"]"':
                    case 'jsq1Answer.JSQ1 === "const devices = [\"tablet\", \"smartphone\", \"desktop\"]"':
                        alert('Correct!');
                        wins();
                        JSQ2();
                        break;

                    case 'jsq1Answer.JSQ1 != "var devices = [\"tablet\", \"smartphone\", \"desktop\"]"':
                        alert('Incorrect!');
                        losses();
                        JSQ2();
                        break;
                    default:
                        alert('incorrect!');
                }


            }


        );

    console.log(wins())
    console.log(losses())
    console.log(finalScore())
}





// What is the correct syntax for referring to an external script called "example.js"?

// <script src="example.js">
// <script href="example.js">
// <script name="example.js">



// The external JavaScript file must contain the <script> tag.
// True
// False


// How do you write "Welcome, user!" in an alert box?

// msg("Welcome, user!");
// alert("Welcome, user!");
// prompt("Welcome, user!");
// alert.prompt("Welcome, user!");


// What is the keyboard shortcut for commenting out an entire line(s) of code?
// command + ? (Mac) // Ctrl + ? (Windows)
// command + c (Mac) // Ctrl + c (Windows)
// command + Alt + ? (Mac) // Ctrl + Alt + ? (Windows)


// What is the proper syntax for writing a JavaScript array for the variable 'devices'?
// var devices = ["tablet", "smartphone", "desktop"]
// class devices = ["tablet", "smartphone", "desktop"]
// class devices = "tablet", "smartphone", "desktop"
// var devices = "tablet", "smartphone", "desktop"
// var devices = ("tablet", "smartphone", "desktop")


// Java is the same as JavaScript
// True 
// False



// Is JavaScript case-sensitive?
// Yes 
// No 