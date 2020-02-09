
INSERT INTO users
  (email, password)
VALUES
  ("user1@email.com", "pw123"),
  ("user2@email.com", "pw123"),
  ("user3@email.com", "pw123"),
  ("user4@email.com", "pw123")


SELECT *
FROM users;



INSERT INTO scores
  (score, quiz_id, user_id)
VALUES
  ("9", 1, 2),
  ("8", 2, 2),
  ("10", 2, 2),
  ("8", 1, 3),
  ("8", 1, 3)


SELECT *
FROM users;




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
  (quiz_code, topic_id)
VALUES
  ("JavaScript Level 1", 1),
  ("HTML Level 1", 2)
;

SELECT *
FROM quizzes;




INSERT INTO quiz_content
  (topic_id, quiz_code, question_text, option1, option2, option3, option4, correct_option)
VALUES
  -- 1---------
  (1, "JSL01", "What is the proper syntax for writing a JavaScript array for the variable 'devices' containing 'tablet', 'smartphone' and 'desktop'? Use double quotes for strings.", 'var devices = "tablet", "smartphone", "desktop"', 'class devices = ["tablet", "smartphone", "desktop"]', 'var devices = ["tablet", "smartphone", "desktop"]', 'variable devices = "tablet", "smartphone", "desktop"', "option_3"),

  -- 2---------
  (1, "JSL01", 'What is the correct syntax for referring to an external script called "example.js"?', '<script src="example.js">', '<script href="example.js">', '<script name="example.js">', '<javascript src="example.js">', "option1"),

  -- 3---------
  (1, "JSL01", 'For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhich of the following are variables?', 'area, wallOne, wallTwo', 'calculateArea', 'function', 'return', "option1"),

  -- 4---------
  (1, "JSL01", 'For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhat will var wallOne equal?', '8', '40', '13', '15', "option4"),

  -- 5---------
  (1, "JSL01", 'For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhat will var wallTwo equal?', '8', '40', '13', '15', "option2"),
  -- 6---------
  (1, "JSL01", "Which of the following code snippets will run the showGardenSize() function successfully?", 'function showGardenSize(){\nvar width = 3; \nvar height = 2; \nvar area = width * height; \nreturn area}; \nshowGardenSize;', 'function showGardenSize(){\nvar width = 3; \nvar height = 2; \nvar area = return area}; \nshowGardenSize();', 'function showGardenSize(\nvar width = 3; \nvar height = 2; \nvar area = width * height; \nreturn area); \nshowGardenSize();', 'function showGardenSize(){\nvar width = 3; \nvar height = 2; \nvar area = width * height; \nreturn area}; \nshowGardenSize();', "option4"),

  -- 7---------
  (1, "JSL01", 'What data type is the following: \n\n"Welcome users!"', "string", "number", "boolean", "undefined", "option1"),

  -- 8---------
  (1, "JSL01", 'What data type is the following: \n\ntrue', "string", "number", "boolean", "undefined", "option3"),

  -- 9---------
  (1, "JSL01", 'What data type is the following: \n\n276', "string", "number", "boolean", "undefined", "option2"),

  -- 10---------
  (1, "JSL01", 'What data type is the following: \n\n"true"', "string", "number", "boolean", "undefined", "option1"),

  -- 11---------
  (1, "JSL01", 'What data type is the following: \n\n"null"', "string", "number", "boolean", "undefined", "option1"),

  -- 12---------
  (1, "JSL01", 'What data type is the following: \n\n"485"', "string", "number", "boolean", "undefined", "option1"),

  -- 13---------
  (1, "JSL01", "What is the code syntax for the following: \n\nStrict Equal To", "strictequal", "=", "!===", "===", "option4"),

  -- 14---------
  (1, "JSL01", "What is the code syntax for the following: \n\nLess Than Or Equal To", "<", "<=", "!<=", "=<", "option2"),

  -- 15---------
  (1, "JSL01", "What is the code syntax for the following: \n\nStrict Not Equal To", "!==", "/=", "!===", "/===", "option1"),

  -- 16---------
  (1, "JSL01", "DOM manipulation offers another technique to add new content to a page (instead of innerHTML). What are the 3 steps using DOM manipulation?", "createElement(), createTextNode(), appendChild()", "newElement(), newNode(), append()", "$(createElement()), $(createTextNode()), $(appendChild())", "newElement(), newNode(), append()", "option1"),

  -- 17---------
  (1, "JSL01", "Which of the following is an object?", "rental = {\ncar1: 420, \ncar2: 230, \ncar3: 180, \ncard4: 200};", "rental = [420, 230, 180, 200];", "rental = 420; \nrental = 230; \nrental = 180; \nrental = 200;", "rental.car1.420;", "option1"),

  -- 18---------
  (1, "JSL01", "Which of the following is an array", "rental = {\ncar1: 420, \ncar2: 230, \ncar3: 180, \ncard4: 200};", "rental = [420, 230, 180, 200];", "rental = 420; \nrental = 230; \nrental = 180; \nrental = 200;", "rental.car1.420;", "option2"),
  -- 19---------
  (1, "JSL01", "Which of the following is an array inside an object?", "rental = {\ncar1: 420, \ncar2: 230, \ncar3: 180, \ncard4: 200};", "rental = [420, 230, 180, 200];", "rental.car1.items[0];", "rental[2].bluetooth;", "option3"),

  -- 20---------
  (1, "JSL01", "Which of the following is an object in an array?", "rental = {\ncar1: 420, \ncar2: 230, \ncar3: 180, \ncard4: 200};", "rental = [420, 230, 180, 200];", "rental.car1.items[0];", "rental[2].bluetooth;", "option4"),


  -- 21---------
  (1, "JSL01", "For the following code: \n\ndocument.getElementById('one') \n\nWhat is the member operator?", "document", ".", "getElementById()", "one'", "option2"),

  -- 22---------
  (1, "JSL01", "For the following code: \n\ndocument.getElementById('one') \n\nWhat is the document object?", "document", ".", "getElementById()", "one'", "option1"),
  -- 23---------
  (1, "JSL01", "For the following code: \n\ndocument.getElementById('one') \n\nWhat is the method?", "document", ".", "getElementById()", "one'", "option3"),
  -- 24---------
  (1, "JSL01", "What is the proper syntax for writing a JavaScript array for the variable 'flavors' containing 'vanilla', 'strawberry' and 'lemon'? Use double quotes for strings", 'var flavors = "vanilla", "strawberry", "lemon"', 'class flavors = ["vanilla", "smartphone", "lemon"]', 'var flavors = ["vanilla", "strawberry", "lemon"]', 'variable flavors = "vanilla", "strawberry", "lemon"', "option3"),

  -- 25---------
  (1, "JSL01", "What is the proper syntax for writing a JavaScript array for the variable 'operatingSystem' containing 'Windows', 'Mac', 'Linux'? Use double quotes for strings", 'var operatingSystem = "Windows", "Mac", "Linux"', 'class operatingSystem = ["Windows", "Mac", "Linux"]', 'var operatingSystem = ["Windows", "Mac", "Linux"]', 'variable operatingSystem = "Windows", "Mac", "Linux"', "option3"),
  -- ---------
  -- ---------
  -- ---------
  -- HTML -----------------
  -- H1--------- 
  (2, "HTMLL01", "What is the emmet code shortcut for populating an empty HTML file with a basic template of code?", '<html + Tab', '!<html + Tab', '! + Tab', '<html + Shift + Tab', "option3"),

  -- H2---------
  (2, "HTMLL01", "What is the syntax of a paragraph tag", '<paragraph>', 'new Paragraph (){}', '<br>', '<p>', "option4")

-- H3--------- 


;

SELECT *
FROM quiz_content;

