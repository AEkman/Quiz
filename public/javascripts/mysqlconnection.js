var mysql = require("mysql");

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'user',
  password: 'user'
  database: 'quizdb',
  port: '3306'
});

connection.connect(function(err) {
    if (err) throw err
    console.log('You are now connected...')
});