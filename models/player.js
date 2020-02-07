// =============================================================
// Dependencies
// =============================================================
module.exports = function (sequelize, DataTypes) {
    var User = sequelize.define("user", {
        name: Sequelize.STRING,
        created_at: Sequelize.DATE
    });
}

// Creates a "User" model that matches up with DB


// Syncs with DB
User.sync();

// Makes the User Model available for other files (will also create a table)
module.exports = User;
