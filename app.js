var express = require('express');
var app = express();

app.set('view engine', 'ejs');

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