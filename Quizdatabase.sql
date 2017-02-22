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
	Accountlevel varchar(255) NOT NULL
	);
	
	CREATE TABLE Quiz (
	QuizID int NOT NUll AUTO_INCREMENT Primary KEY,
	QuestionID int NOT NUll,
	DateCreated TIMESTAMP NOT NULL,
	DateFinished TIMESTAMP NOT NULL,
	times TIME,
	userAnswer SMALLINT NOT NULL,
	score SMALLINT NOT NULL
	);
	
	CREATE TABLE Question(
	QuestionID int NOT NULL PRIMARY KEY,
	AnswerID int NOT NULL,
	Question LONGTEXT NOT NULL
	);
	
	CREATE TABLE Answers(
	AnswerID INT NOT NULL PRIMARY KEY,
	Answer TEXT NOT NULL,
	Correct BOOLEAN NOT NULL
	);
	
	CREATE TABLE QuizTanken(
	QuizTakenMail VARCHAR(100) NOT NUll Primary KEY,
	QuizTakenID SMALLINT NOT NULL,
	Results VARCHAR(10) NOT NULL
	);
	
	
