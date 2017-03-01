 
 -- source C:\Users\Daniel\Documents\GitHub\Quiz\Quizdatabase.sql
 --source C:\Users\Daniel\Documents\GitHub\Quiz\testdataSQL.sql

INSERT INTO user (mail,name, password, groups, accountLevel) VALUES("daniel@com", "daniel", "password","alpha", "creator");
INSERT INTO quiz (quizName, dateFinished, times, score) VALUES ('ALBAN', '2008-06-13', 25, 20);
INSERT INTO question (questionQuizid,question) VALUES (1,"this si shit");
INSERT INTO answers (answerQuestionid,correct,answer) VALUES (1,1,"this si shit answer");
INSERT INTO quizTaken (quizTakenQid,quizTakenMail, results, ElapTimes) VALUES (1,1,30, '12:21:01');