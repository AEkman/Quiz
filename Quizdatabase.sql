/*
   STR_TO_DATE('dd,mm,åååå','%d,%m,%Y')

   -- Full path till create den här file.
   source C:\Users\Daniel\Documents\GitHub\MYSQL QUIZ\Quizdatabase.sql
*/


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
	accountLevel SMALLINT(255) NOT NULL
	);

	DROP TABLE IF EXISTS quiz;

	CREATE TABLE quiz (
	quizId INT NOT NUll AUTO_INCREMENT Primary KEY,
	questionId INT NOT NUll,
	dateCreated TIMESTAMP NOT NULL,
	dateFinished TIMESTAMP NOT NULL,
	times TIME,
	userAnswer SMALLINT NOT NULL,
	score SMALLINT NOT NULL
	);

	DROP TABLE IF EXISTS question;

	CREATE TABLE question(
	questionId INT NOT NULL PRIMARY KEY,
	answerId INT NOT NULL,
	question LONGTEXT NOT NULL,
	questPic MEDIUMBLOB NOT NULL
	);
	/* added questpic as separate, due to possibility to storage pictures/diagrams at size of 16 mb at max */

	DROP TABLE IF EXISTS answer;

	CREATE TABLE answers(
	answerId INT NOT NULL PRIMARY KEY,
	answer TEXT NOT NULL,
	correct BOOLEAN NOT NULL
	);

	DROP TABLE IF EXISTS quiztaken;

	CREATE TABLE quiztaken(
	quizTakenMail VARCHAR(100) NOT NUll Primary KEY,
	quizTakenId SMALLINT NOT NULL,
	results SMALLINT NOT NULL
	);

	DROP TABLE IF EXIST midResult;

	CREATE TABLE midResult {
	answerId INT NOT NULL PRIMARY KEY,
	quizTakenId SMALLINT NOT NULL,
	results SMALLINT NOT NULL
	};

	
	
