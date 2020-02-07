DROP DATABASE IF EXISTS game_db;
CREATE DATABASE game_db;

USE game_db;


-- User related tables
CREATE TABLE highscores
(
id INT NOT NULL
AUTO_INCREMENT,
name VARCHAR
(20) NOT NULL,
-- UserId as foreignkey
score INT NOT NULL,
PRIMARY KEY
(id)
);


CREATE TABLE users
(
id INT NOT NULL
AUTO_INCREMENT,
name VARCHAR
(20) NOT NULL,
-- highest_score INT NULL,
PRIMARY KEY
(id)
);


-- Question related tables
CREATE TABLE topics
(
id INT NOT NULL
AUTO_INCREMENT PRIMARY KEY, 
topic_name VARCHAR
(40) NOT NULL
);


CREATE TABLE quizzes
(
id INT NOT NULL
AUTO_INCREMENT PRIMARY KEY, 
quiz_name VARCHAR
(100) NOT NULL,
topic_id INT NULL,
FOREIGN KEY
(topic_id) REFERENCES topics
(id)
);


CREATE TABLE questions
(
id INT NOT NULL
AUTO_INCREMENT PRIMARY KEY, 
question_text VARCHAR
(300) NOT NULL,
quiz_id INT NULL, 
FOREIGN KEY
(quiz_id) REFERENCES quizzes
(id)
);


CREATE TABLE answers
(
id INT NOT NULL
AUTO_INCREMENT PRIMARY KEY, 
answer_option VARCHAR
(500) NOT NULL,
correct BOOLEAN NOT NULL, 
question_id INT NOT NULL,
FOREIGN KEY
(question_id) REFERENCES questions
(id)
);
