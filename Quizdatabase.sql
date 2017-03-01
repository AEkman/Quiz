

    DROP SCHEMA IF EXISTS quizdb;

	
/* */

	CREATE SCHEMA IF NOT EXISTS quizdb;
	USE quizdb;

    DROP TABLE IF EXISTS user;
    /* USER IS COMPLETE */
	CREATE TABLE user (
	mail VARCHAR(255) NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	groups VARCHAR(255) NOT NULL,
	accountLevel VARCHAR(255) NOT NULL
	);
	
	-- INSERT INTO question
	

	DROP TABLE IF EXISTS quiz;


	CREATE TABLE quiz (
	quizId INT NOT NUll AUTO_INCREMENT PRIMARY KEY,
	quizName VARCHAR(255) NOT NULL,
	dateCreated TIMESTAMP NOT NULL,
	dateFinished DATE NOT NULL,
	times INT,
	score SMALLINT NOT NULL,
	);


	DROP TABLE IF EXISTS question;

	CREATE TABLE question(
	questionId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	question LONGTEXT NOT NULL,
	FOREIGN KEY (questionQuizid) REFERENCES quiz(quizId)

	);

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
	
	

