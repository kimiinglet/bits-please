

-- --=================================================
--  db = game_db
-- --=================================================
DROP DATABASE IF EXISTS game_db;
CREATE DATABASE game_db;

USE game_db;


-- --=================================================
--  USER    table
-- id, email, password
-- --=================================================
CREATE TABLE users
(
    id INT NOT NULL
    AUTO_INCREMENT PRIMARY KEY,
email VARCHAR
    (50) NOT NULL,
password VARCHAR
    (100)
);

    -- --=================================================
    -- USER SCORE HISTORY    table (SCORES)
    -- id, score, quiz-id FK, user_id FK, 
    -- --=================================================
    CREATE TABLE scores
    (
        id INT NOT NULL
        AUTO_INCREMENT PRIMARY KEY,
-- UserId as foreignkey
score INT NOT NULL,
-- quiz_id as foreignkey
quiz_id INT NULL,
-- user_id as foreignkey
user_id INT NULL,
FOREIGN KEY
        (quiz_id) REFERENCES quizzes
        (id)
FOREIGN KEY
        (user_id) REFERENCES users
        (id)

);



        -- --=================================================
        -- TOPICS    table
        --  id and topic_name
        -- --=================================================
        CREATE TABLE topics
        (
            id INT NOT NULL
            AUTO_INCREMENT PRIMARY KEY, 
  topic_name VARCHAR
            (40) NOT NULL
);

            -- --=================================================
            -- QUIZZES  table - list all quizzes
            -- they have columns for topic_id, questions, answers, and correct answer
            -- --=================================================
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

