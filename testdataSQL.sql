 
 -- source C:\Users\Andreas\Documents\GitHub\Quiz\Quizdatabase.sql
 -- source C:\Users\Andreas\Documents\GitHub\Quiz\testdataSQL.sql

INSERT INTO user (mail,name, password, groups, accountLevel) VALUES("daniel@com", "daniel", "password","alpha", "creator");
INSERT INTO quiz (quizName, dateFinished, times, score) VALUES ('ALBAN', '2008-06-13', 25, 20);
INSERT INTO question (questionQuizid,question) VALUES (1,"this si shit");
INSERT INTO answers (answerQuestionid,correct,answer) VALUES (1,0,"this si shit answer");
INSERT INTO quizTaken (quiztakenId, quizTakenMail, QuizTakenQid, results, elapTimes) VALUES (1,1,1,39,'1000-01-01 00:00:00');

