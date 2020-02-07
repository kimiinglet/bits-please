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
quiz_code VARCHAR
                (100) NOT NULL,
topic_id INT NULL,
FOREIGN KEY
                (topic_id) REFERENCES topics
                (id)
);

                CREATE TABLE quiz_content
                (
                    id INT NOT NULL
                    AUTO_INCREMENT PRIMARY KEY, 
topic_id INT NULL,
quiz_code VARCHAR
                    (100) NOT NULL,
question_text VARCHAR
                    (500) NOT NULL,
option1 VARCHAR
                    (500) NOT NULL,
option2 VARCHAR
                    (500) NOT NULL,
option3 VARCHAR
                    (500) NOT NULL,
option4 VARCHAR
                    (500) NOT NULL,
correct_option VARCHAR
                    (15) NOT NULL,
FOREIGN KEY
                    (topic_id) REFERENCES topics
                    (id)

);

