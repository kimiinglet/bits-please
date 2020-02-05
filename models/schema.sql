DROP DATABASE IF EXISTS highscores_db;
CREATE DATABASE highscores_db;
USE highscores_db;

CREATE TABLE highscores (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR (20) NOT NULL,
    score INT NOT NULL,
    PRIMARY KEY (id)
);
SELECT * FROM highscores;

