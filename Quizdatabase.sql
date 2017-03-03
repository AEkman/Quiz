DROP SCHEMA IF EXISTS quizdb;
	CREATE SCHEMA IF NOT EXISTS quizdb;
	USE quizdb;

DROP TABLE IF EXISTS user;
	CREATE TABLE user (
	mail VARCHAR(255) NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	groups VARCHAR(255) NOT NULL,
	accountLevel VARCHAR(255) NOT NULL
	);

	INSERT INTO user (mail,name, password, groups, accountLevel) VALUES("info@andreasekman.com", "Andreas Ekman", "12345" ,"Group 1", "Admin");
	INSERT INTO user (mail,name, password, groups, accountLevel) VALUES("xtironman@hotmail.com", "Göran Person", "morot" ,"Group 2", "Creator");


DROP TABLE IF EXISTS quiz;
	CREATE TABLE quiz (
	quizId INT NOT NUll AUTO_INCREMENT PRIMARY KEY,
	quizName VARCHAR(255) NOT NULL,
	dateCreated TIMESTAMP NOT NULL,
	dateFinished DATE NOT NULL,
	times INT,
	score SMALLINT NOT NULL
	);

    INSERT INTO quiz (quizName, dateFinished, times, score) VALUES ('Solution to everything', '2017-03-03', 2, 20);
    INSERT INTO quiz (quizName, dateFinished, times, score) VALUES ('Bergskedjor', '2017-03-03', 2, 20);

DROP TABLE IF EXISTS question;
	CREATE TABLE question(
	questionId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	question LONGTEXT NOT NULL,
	questionQuizid INT NOT NULL,
	FOREIGN KEY (questionQuizid) REFERENCES quiz(quizId)
	);

    INSERT INTO question (questionQuizid,question) VALUES (1,"What color is the Sky?");
	INSERT INTO question (questionQuizid,question) VALUES (2,"Vilket är världens högsta berg?");
	INSERT INTO question (questionQuizid,question) VALUES (2,"Vilket är världens tredje högsta berg?");

DROP TABLE IF EXISTS answers;
	CREATE TABLE answers(
	answerId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	answer TEXT NOT NULL,
	correct BOOLEAN NOT NULL,
	answerQuestionid INT NOT NULL,
	FOREIGN KEY (answerQuestionid) REFERENCES question(questionId)
	);

	INSERT INTO answers (answerQuestionid,correct,answer) VALUES (1,0,"Red");
	INSERT INTO answers (answerQuestionid,correct,answer) VALUES (1,0,"Green");
	INSERT INTO answers (answerQuestionid,correct,answer) VALUES (1,1,"Blue");
	INSERT INTO answers (answerQuestionid,correct,answer) VALUES (1,0,"Pink");
	INSERT INTO answers (answerQuestionid,correct,answer) VALUES (1,0,"Red");
    INSERT INTO answers (answerQuestionid,correct,answer) VALUES (2,0,"Question 2 Answer 1");
    INSERT INTO answers (answerQuestionid,correct,answer) VALUES (2,1,"Question 2 Answer 2");
    INSERT INTO answers (answerQuestionid,correct,answer) VALUES (2,0,"Question 2 Answer 3");
    INSERT INTO answers (answerQuestionid,correct,answer) VALUES (3,0,"Question 3 Answer 1");
    INSERT INTO answers (answerQuestionid,correct,answer) VALUES (3,0,"Question 3 Answer 2");
    INSERT INTO answers (answerQuestionid,correct,answer) VALUES (3,1,"Question 3 Answer 3");


DROP TABLE IF EXISTS quiztaken;
	CREATE TABLE quiztaken(
	quiztakenId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	quizTakenMail VARCHAR(100) NOT NULL,
	quizTakenQid INT NOT NULL,
	results SMALLINT NOT NULL,
	elapTimes DATETIME,
	FOREIGN KEY (quizTakenQid) REFERENCES question(questionId),
	FOREIGN KEY (quizTakenMail) REFERENCES user(mail)
	);

	INSERT INTO quizTaken (quizTakenMail, QuizTakenQid, results, elapTimes) VALUES ("info@andreasekman.com",1,39,'1000-01-01 00:00:00');