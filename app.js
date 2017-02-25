var express = require('express');
var app = express();
var routes = require('./routes');

// Set static folder
app.use(express.static(__dirname + '/public'));

// View engine
app.set('view engine', 'ejs');

// Global variables
app.locals.pageTitle = "Quiz Maker";

// Routes called via function in routes/index.js
app.get('/', routes.index);
app.get('/user', routes.user);
app.get('/creator', routes.creator);
app.get('/admin', routes.admin);
app.get('/settings', routes.settings);
app.get('/test/:name', routes.test);
app.get('/test', routes.test);

app.get('*', function(reg, res) {
    res.send('Page not found 404');
});

// Start server on port 3000
app.set('port', process.env.PORT || 3000); // use port 3000 unless there exists a preconfigured port
var server = app.listen(app.get('port'), function() {
    console.log('Listening on port:' +app.get('port'));
});