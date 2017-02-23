/*
   STR_TO_DATE('dd,mm,åååå','%d,%m,%Y')

   -- Full path till create den här file.
   source C:\Users\Daniel\Documents\GitHub\MYSQL QUIZ\Quizdatabase.sql
*/


    DROP SCHEMA IF EXISTS quizdb;

	
/* */
	CREATE SCHEMA IF NOT EXISTS quizdb;
	USE quizdb;


	CREATE TABLE user (
	mail VARCHAR(100) NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	groups VARCHAR(255) NOT NULL,
	accountLevel VARCHAR(255) NOT NULL
	);
	
	CREATE TABLE quiz (
	quizId INT NOT NUll AUTO_INCREMENT Primary KEY,
	questionId INT NOT NUll,
	dateCreated TIMESTAMP NOT NULL,
	dateFinished TIMESTAMP NOT NULL,
	times TIME,
	userAnswer SMALLINT NOT NULL,
	score SMALLINT NOT NULL
	);
	
	CREATE TABLE question(
	questionId INT NOT NULL PRIMARY KEY,
	answerId INT NOT NULL,
	question LONGTEXT NOT NULL
	);
	
	CREATE TABLE answers(
	answerId INT NOT NULL PRIMARY KEY,
	answer TEXT NOT NULL,
	correct BOOLEAN NOT NULL
	);
	
	CREATE TABLE quiztaken(
	quizTakenMail VARCHAR(100) NOT NUll Primary KEY,
	quizTakenId SMALLINT NOT NULL,
	results SMALLINT NOT NULL
	);
	
	
