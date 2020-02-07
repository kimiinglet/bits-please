//Add an if statement that will add player's score only if they place among the top 10 current scores. 
module.exports = function (sequelize, DataTypes) { // eslint-disable-line no-unused-vars
  const Highscore = sequelize.define("Highscore", {

  })
  return Highscore
  // Fill in the model here
}
// .then(function (points) {
//     connection.query(
//         "INSERT INTO highscores SET ?",
//         {
//             name: points.name,
//             score: points.score
//         },
//         function (err) {
//             if (err) throw err;
//             console.log("You set a highscore!");
//         })
// };