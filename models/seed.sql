DROP DATABASE IF EXISTS quiz_db;
CREATE database quiz_db;

USE quiz_db;



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
  question_code VARCHAR
      (30) NULL,
  question_text VARCHAR
      (300) NOT NULL,
  topic_id INT NULL,
  quiz_id INT NULL, 
  FOREIGN KEY
      (topic_id) REFERENCES topics
      (id),
  FOREIGN KEY
      (quiz_id) REFERENCES quizzes
      (id)
);


      CREATE TABLE answers
      (
        id INT NOT NULL
        AUTO_INCREMENT PRIMARY KEY, 
  question_code VARCHAR
        (30) NULL,
  answer_option VARCHAR
        (500) NOT NULL,
  correct BOOLEAN NOT NULL, 
  quiz_id INT NULL, 
  question_id INT NOT NULL,
  FOREIGN KEY
        (question_id) REFERENCES questions
        (id),
  FOREIGN KEY
        (quiz_id) REFERENCES quizzes
        (id)
);



INSERT INTO highscores (name, score) 
VALUES 
 ("CPU1" , 7),
 ("CPU2" , 6),
 ("CPU3", 2),


-- When you build the functionality, pass this sql call into javascript. (The connection.query)
 SELECT * FROM highscores LIMIT 10 ORDER BY score DESC;



-- Everything should be in one set of parenthesis separated by commas
        INSERT INTO topics
          (topic_name)
        VALUES
          ("JavaScript"),
          ("HTML"),
          ("CSS"),
          ("NodeJS");


        SELECT *
        FROM topics;







        INSERT INTO quizzes
          (quiz_name, topic_id)
        VALUES
          ("JavaScript Level 1", 1)
        ;

        SELECT *
        FROM quizzes;




        INSERT INTO questions
          (question_code, question_text, topic_id, quiz_id)
        VALUES
          ("JSQ01Q01", "What is the proper syntax for writing a JavaScript array for the variable 'devices' containing 'tablet', 'smartphone' and 'desktop'? Use double quotes for strings", 1, 1),
          ("JSQ01Q02", 'What is the correct syntax for referring to an external script called "example.js"?', 1, 1),
          ("JSQ01Q03", 'For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhich of the following are variables?', 1, 1),
          ("JSQ01Q04", 'For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhat will var wallOne equal?', 1, 1),
          ("JSQ01Q05", 'For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhat will var wallTwo equal?', 1, 1)
        ;



        SELECT *
        FROM questions;


        INSERT INTO answers
          (question_code, answer_option, correct, quiz_id, question_id)
        VALUES
          ("JSQ01Q01", 'var devices = "tablet", "smartphone", "desktop"', false, 1, 1),
          ("JSQ01Q01", 'class devices = ["tablet", "smartphone", "desktop"]', false, 1, 1),
          ("JSQ01Q01", 'var devices = ["tablet", "smartphone", "desktop"]', true, 1, 1),
          ("JSQ01Q01", 'variable devices = "tablet", "smartphone", "desktop"', false, 1, 1),
          -- -- --- --
          ("JSQ01Q02", '<script src="example.js">', true, 1, 2),
          ("JSQ01Q02", '<script href="example.js">', false, 1, 2),
          ("JSQ01Q02", '<script name="example.js">', false, 1, 2),
          ("JSQ01Q02", '<javascript src="example.js">', false, 1, 2),
          --  -- 
          -- -- --- --
          ("JSQ01Q03", 'area, wallOne, wallTwo', true, 1, 3),
          ("JSQ01Q03", 'calculateArea', false, 1, 3),
          ("JSQ01Q03", 'function', false, 1, 3),
          ("JSQ01Q03", 'return', false, 1, 3),

          -- -- --- --
          ("JSQ01Q04", '8', false, 1, 4),
          ("JSQ01Q04", '40', false, 1, 4),
          ("JSQ01Q04", '13', false, 1, 4),
          ("JSQ01Q04", '15', true, 1, 4),

          -- -- --- --
          ("JSQ01Q05", '8', false, 1, 5),
          ("JSQ01Q05", '40', false, 1, 5),
          ("JSQ01Q05", '13', false, 1, 5),
          ("JSQ01Q05", '15', true, 1, 5)

        ;
        --  -- -- 
        SELECT *
        FROM answers;
