/*
   STR_TO_DATE('dd,mm,åååå','%d,%m,%Y')

   -- Full path till create den här file.
   source C:\Users\Daniel\Documents\GitHub\MYSQL QUIZ\Quizdatabase.sql
*/

	
/* */  
    DROP SCHEMA IF EXISTS QuizDB;

	
/* */
	CREATE SCHEMA IF NOT EXISTS QuizDB;
	USE QuizDB;


	CREATE TABLE USERS (
	mail int NOT NULL PRIMARY KEY,
	name varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	groups varchar(255) NOT NULL,
	accountLevel varchar(255) NOT NULL
	);
	
	CREATE TABLE Quiz (
	quizId int NOT NUll AUTO_INCREMENT Primary KEY,
	questionId int NOT NUll,
	dateCreated TIMESTAMP NOT NULL,
	dateFinished TIMESTAMP NOT NULL,
	times TIME,
	userAnswer SMALLINT NOT NULL,
	score SMALLINT NOT NULL
	);
	
	CREATE TABLE Question(
	questionId int NOT NULL PRIMARY KEY,
	answerId int NOT NULL,
	question LONGTEXT NOT NULL
	);
	
	CREATE TABLE Answers(
	answerId INT NOT NULL PRIMARY KEY,
	answer TEXT NOT NULL,
	correct BOOLEAN NOT NULL
	);
	
	CREATE TABLE QuizTanken(
	quizTakenMail VARCHAR(100) NOT NUll Primary KEY,
	quizTakenId SMALLINT NOT NULL,
	results VARCHAR(10) NOT NULL
	);
	
	
