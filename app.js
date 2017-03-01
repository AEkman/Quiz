var express = require('express');
var body = require('body-parser');
var connection = require('./public/javascripts/mysqlconnection');
var databaseFunctions = require('./public/javascripts/database');

// Start express
var app = express();
app.use(body.urlencoded({extended: true}));
app.use(body.json());
connection.init();

// Set static folder
app.use(express.static(__dirname + '/public'));

// View engine
app.set('view engine', 'ejs');

// Global variables
app.locals.pageTitle = "Quiz Maker";

// Routes
/* Home/Login */
app.get('/', function(req, res) {
    res.render('index', {
        title: 'Home',
        classname: 'home'
    });
});

/* Create Quiz */
app.get('/createquiz', function(req, res) {
    res.render('createquiz', {
        title: 'Create Quiz',
        classname: 'createquiz'
    });
});

/* Take Quiz Quiz */
app.get('/takequiz', function(req, res) {
    res.render('takequiz', {
        title: 'Take Quiz',
        classname: 'takequiz'
    });
});

/* Results */
app.get('/results', function(req, res) {
    res.render('results', {
        title: 'Results',
        classname: 'results'
    });
});

/* Profile */
app.get('/profile', function(req, res) {
    res.render('profile', {
        title: 'Profile',
        classname: 'profile'
    });
});

/* Settings */
app.get('/settings', function(req, res) {
    res.render('settings', {
        title: 'Settings',
        classname: 'settings'
    });
    databaseFunctions.getUsers(res);
});

/* User */
app.get('/user', function(req, res) {
    res.render('user', {
        title: 'User',
        classname: 'user'
    });
});

/* Creator */
app.get('/creator', function(req, res) {
    res.render('creator', {
        title: 'Creator',
        classname: 'creator'
    });
});

/* Admin */
app.get('/admin', function(req, res) {
    res.render('admin', {
        title: 'Admin',
        classname: 'admin'
    });
});

app.get('/createquizquestions', function(req, res) {
    res.render('createquizquestions', {
        title: 'createquizquestions',
        classname: 'createquizquestions'
    });
});

/*  send the input data from settings --> createUser --> database */
app.post('/settings', function(req, ress) {
    var user = {
        mail: req.body.mail,
        name: req.body.name,
        password: req.body.password,
        groups: req.body.groups,
        accountLevel: req.body.accountLevel
    };
    databaseFunctions.createUser(user, ress);
});
/*  send input data from Create quiz form */
app.post('/createquiz', function (req, res) {
    var quiz = {
        quizName: req.body.quizName,
        dateFinished: req.body.dateFinished,
        times: req.body.times,
        score: req.body.score
    };
    databaseFunctions.createQuiz(quiz, res);
});
var questionID = 1;
var answerID = 1;

app.post('/createquizquestions', function (req, res) {
   var question = {
       question: req.body.question,
       questionQuizid: questionID
   };
   var answer = {
       answer: req.body.answer,
       correct: req.body.correct,
       answerQuestionid: answerID
   };
   databaseFunctions.createQuestion(question);
   databaseFunctions.createAnswer(answer, res);

});

// Start server on port 3000
app.set('port', process.env.PORT || 3000); // use port 3000 unless there exists a preconfigured port
var server = app.listen(app.get('port'), function() {
    console.log('Listening on port:' +app.get('port'));
});