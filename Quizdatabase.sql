

    DROP SCHEMA IF EXISTS quizdb;

	
/* */

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
	
	-- INSERT INTO user(mail, name, password, groups,accountLevel) VALUES (testmail@grod, testnamn, password, groups,accountLevel);
	
	DROP TABLE IF EXISTS quiz;

	CREATE TABLE quiz (
	quizId INT NOT NUll AUTO_INCREMENT PRIMARY KEY,
	dateCreated TIMESTAMP NOT NULL,
	dateFinished TIMESTAMP NOT NULL,
	times TIME,
	userAnswer SMALLINT NOT NULL,
	score SMALLINT NOT NULL,
	QuizMail VARCHAR(255) NOT NULL,
	FOREIGN KEY (QuizMail) REFERENCES user(mail)
	);
	
	-- INSERT INTO user(quizId, questionId, dateCreated, dateFinished,times, userAnswer, score,QuizMail) VALUES (1234, testquest, 2017.01.01,2017.01.02 ,20:20, 20, 100,);

	DROP TABLE IF EXISTS question;

	CREATE TABLE question(
	questionId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	answerId INT NOT NULL,
	question LONGTEXT NOT NULL,
	questPic MEDIUMBLOB NOT NULL,
	questionQuizid INT NOT NULL,
	FOREIGN KEY (questionQuizid) REFERENCES quiz(quizId)

	);
	
	/* added questpic as separate, due to possibility to storage pictures/diagrams at size of 16 mb at max */

	DROP TABLE IF EXISTS answer;

	CREATE TABLE answers(
	answerId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	answer TEXT NOT NULL,
	correct BOOLEAN NOT NULL,
	answerQuestionid INT NOT NULL,
	FOREIGN KEY (answerQuestionid) REFERENCES question(questionId)
	
	);

	DROP TABLE IF EXISTS quiztaken;

	CREATE TABLE quiztaken(
	quiztakenId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	quizTakenMail VARCHAR(100) NOT NULL,
	quizTakenQid INT NOT NULL,
	results SMALLINT NOT NULL,
	ElapTimes DATETIME

	);
	
	
/*
	DROP TABLE IF EXIST midResult;

	CREATE TABLE midResult {
	answerId INT NOT NULL PRIMARY KEY,
	quizTakenId SMALLINT NOT NULL,
	results SMALLINT NOT NULL
	};

	added new table, name can be changet later on for mor accurate one. */
	
