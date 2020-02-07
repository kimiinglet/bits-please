
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
  ("JavaScript Level 1", 1),
  ("HTML Level 1", 2)
;

SELECT *
FROM quizzes;




INSERT INTO questions
  (question_text, quiz_id)
VALUES
  -- 1---------
  ("What is the proper syntax for writing a JavaScript array for the variable 'devices' containing 'tablet', 'smartphone' and 'desktop'? Use double quotes for strings", 1),
  -- 2---------
  ('What is the correct syntax for referring to an external script called "example.js"?', 1),
  -- 3---------
  ('For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhich of the following are variables?', 1),
  -- 4---------
  ('For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhat will var wallOne equal?', 1),
  -- 5---------
  ('For the following code: \n function calculateArea(width, height){ \n var area = width * innerHeight; \n return area;} \nvar wallOne = calculateArea(3, 5); \n var wallTwo = calculateArea(8, 5); \n\nWhat will var wallTwo equal?', 1),
  -- 6---------
  ("Which of the following code snippets will run the showGardenSize() function successfully?", 1),
  -- 7---------
  ('What data type is the following: \n\n"Welcome users!"', 1),
  -- 8---------
  ('What data type is the following: \n\ntrue', 1),
  -- 9---------
  ('What data type is the following: \n\n276', 1),
  -- 10---------
  ('What data type is the following: \n\n"true"', 1),
  -- 11---------
  ('What data type is the following: \n\n"null"', 1),
  -- 12---------
  ('What data type is the following: \n\n"485"', 1),
  -- 13---------
  ("What is the code syntax for the following: \n\nStrict Equal To", 1),
  -- 14---------
  ("What is the code syntax for the following: \n\nLess Than Or Equal To", 1),
  -- 15---------
  ("What is the code syntax for the following: \n\nStrict Not Equal To", 1),
  -- 16---------
  ("DOM manipulation offers another technique to add new content to a page (instead of innerHTML). What are the 3 steps using DOM manipulation?", 1),
  -- 17---------
  ("Which of the following is an object?", 1),
  -- 18---------
  ("Which of the following is an array", 1),
  -- 19---------
  ("Which of the following is an array inside an object?", 1),
  -- 20---------
  ("Which of the following is an object in an array?", 1),
  -- 21---------
  ("For the following code: \n\ndocument.getElementById('one') \n\nWhat is the member operator?", 1),
  -- 22---------
  ("For the following code: \n\ndocument.getElementById('one') \n\nWhat is the document object?", 1),
  -- 23---------
  ("For the following code: \n\ndocument.getElementById('one') \n\nWhat is the method?", 1),
  -- 24---------
  ("What is the proper syntax for writing a JavaScript array for the variable 'flavors' containing 'vanilla', 'strawberry' and 'lemon'? Use double quotes for strings", 1),
  -- 25---------
  ("What is the proper syntax for writing a JavaScript array for the variable 'operatingSystem' containing 'Windows', 'Mac', 'Linux'? Use double quotes for strings", 1)
;

SELECT *
FROM questions;



INSERT INTO answers
  (answer_option, correct, question_id)
VALUES
  ('var devices = "tablet", "smartphone", "desktop"', false, 1),
  ('class devices = ["tablet", "smartphone", "desktop"]', false, 1),
  ('var devices = ["tablet", "smartphone", "desktop"]', true, 1),
  ('variable devices = "tablet", "smartphone", "desktop"', false, 1)
  ,
  -- -- --- --
  ('<script src="example.js">', true, 2),
  ('<script href="example.js">', false, 2),
  ('<script name="example.js">', false, 2),
  ('<javascript src="example.js">', false, 2)
  ,
  --  -- 
  -- -- --- --
  ('area, wallOne, wallTwo', true, 3),
  ('calculateArea', false, 3),
  ('function', false, 3),
  ('return', false, 3)
  ,

  -- -- --- --
  ('8', false, 4),
  ('40', false, 4),
  ('13', false, 4),
  ('15', true, 4)
  ,

  -- -- --- --
  ('8', false, 5),
  ('40', false, 5),
  ('13', false, 5),
  ('15', true, 5)
  ,

  -- ---------
  ('function showGardenSize(){\nvar width = 3; \nvar height = 2; \nvar area = width * height; \nreturn area}; \nshowGardenSize;', false, 6),
  ('function showGardenSize(){\nvar width = 3; \nvar height = 2; \nvar area = return area}; \nshowGardenSize();', false, 6),
  ('function showGardenSize(\nvar width = 3; \nvar height = 2; \nvar area = width * height; \nreturn area); \nshowGardenSize();', false, 6),
  ('function showGardenSize(){\nvar width = 3; \nvar height = 2; \nvar area = width * height; \nreturn area}; \nshowGardenSize();', true, 6)
,

  --  --------
  ("string", true, 7),
  ("number", false, 7),
  ("boolean", false, 7),
  ("undefined", false, 7)
,
  --  --------
  ("string", false, 8),
  ("number", false, 8),
  ("boolean", true, 8),
  ("undefined", false, 8)
,
  --  --------
  ("string", false, 9),
  ("number", true, 9),
  ("boolean", false, 9),
  ("undefined", false, 9)
,
  --  --------
  ("string", true, 10),
  ("number", false, 10),
  ("boolean", false, 10),
  ("undefined", false, 10)
,
  --  --------
  ("string", true, 11),
  ("number", false, 11),
  ("boolean", false, 11),
  ("undefined", false, 11)
,
  --  --------
  ("string", true, 12),
  ("number", false, 12),
  ("boolean", false, 12),
  ("undefined", false, 12)
,
  --  --------
  ("strictequal", false, 13),
  ("=", false, 13),
  ("!===", false, 13),
  ("===", true, 13)
,
  --  --------
  ("<", false, 14),
  ("<=", true, 14),
  ("!<=", false, 14),
  ("=<", false, 14)
,
  --  --------
  ("!==", true, 15),
  ("/=", false, 15),
  ("!===", false, 15),
  ("/===", false, 15)
,
  --  --------
  ("createElement(), createTextNode(), appendChild()", true, 16),
  ("newElement(), newNode(), append()", false, 16),
  ("$(createElement()), $(createTextNode()), $(appendChild())", false, 16),
  ("newElement(), newNode(), append()", false, 16)
,
  --  --------
  ("rental = {\ncar1: 420, \ncar2: 230, \ncar3: 180, \ncard4: 200};", true, 17),
  ("rental = [420, 230, 180, 200];", false, 17),
  ("rental = 420; \nrental = 230; \nrental = 180; \nrental = 200;", false, 17),
  ("rental.car1.420;", false, 17)
,
  --  --------
  ("rental = {\ncar1: 420, \ncar2: 230, \ncar3: 180, \ncard4: 200};", false, 18),
  ("rental = [420, 230, 180, 200];", true, 18),
  ("rental = 420; \nrental = 230; \nrental = 180; \nrental = 200;", false, 18),
  ("rental.car1.420;", false, 18)
,
  --  --------
  ("rental = {\ncar1: 420, \ncar2: 230, \ncar3: 180, \ncard4: 200};", false, 19),
  ("rental = [420, 230, 180, 200];", false, 19),
  ("rental.car1.items[0];", true, 19),
  ("rental[2].bluetooth;", false, 19)
,
  --  --------
  ("rental = {\ncar1: 420, \ncar2: 230, \ncar3: 180, \ncard4: 200};", false, 20),
  ("rental = [420, 230, 180, 200];", false, 20),
  ("rental.car1.items[0];", false, 20),
  ("rental[2].bluetooth;", true, 20)
,
  --  --------
  ("document", false, 21),
  (".", true, 21),
  ("getElementById()", false, 21),
  ("one'", false, 21)
,
  --  --------
  ("document", true, 22),
  (".", false, 22),
  ("getElementById()", false, 22),
  ("one'", false, 22)
,
  --  --------
  ("document", false, 23),
  (".", false, 23),
  ("getElementById('one')", true, 23),
  ("one'", false, 23)
,
  -- -----------
  ('var flavors = "vanilla", "strawberry", "lemon"', false, 1),
  ('class flavors = ["vanilla", "smartphone", "lemon"]', false, 1),
  ('var flavors = ["vanilla", "strawberry", "lemon"]', true, 1),
  ('variable flavors = "vanilla", "strawberry", "lemon"', false, 1)
,
  -- -----------
  ('var operatingSystem = "Windows", "Mac", "Linux"', false, 1),
  ('class operatingSystem = ["Windows", "Mac", "Linux"]', false, 1),
  ('var operatingSystem = ["Windows", "Mac", "Linux"]', true, 1),
  ('variable operatingSystem = "Windows", "Mac", "Linux"', false, 1)

;
--  -- -- 
SELECT *
FROM answers;
