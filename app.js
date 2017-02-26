var express = require('express');
var body = require('body-parser');

// Start express
var app = express();

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
});

app.post('/settings', function(req, res) {
    var user = {
        mailadress: req.body.mailadress,
        username: req.body.username,
        password: req.body.password,
        group: req.body.group,
        accountlevel: req.body.accountlevel
    };

    console.log(user);
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

// Start server on port 3000
app.set('port', process.env.PORT || 3000); // use port 3000 unless there exists a preconfigured port
var server = app.listen(app.get('port'), function() {
    console.log('Listening on port:' +app.get('port'));
});