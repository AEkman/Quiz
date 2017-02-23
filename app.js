var express = require('express');
var bodyparser = require('body-parser');
var connection = require('./js/connection');
var routes = require('./js/routes');
var app = express();

app.use(bodyparser.urlencoded({extended: true}));
app.use(bodyparser.json());

connection.init();
routes.configure(app);

app.set('view engine', 'ejs');

app.locals.pagetitle = "Quiz Creator";

/* Routes */
app.get('/', function(req, res) {
    res.render('default', {title: 'Home'});
});

app.get('*', function(reg, res) {
    res.send('Bad Route');
});

/* Start server on port 3000 */
var server = app.listen(3000, function() {
    console.log('Listening on port 3000');
});