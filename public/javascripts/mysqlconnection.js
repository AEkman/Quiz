var mysql = require("mysql");

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'user',
  password: 'user'
  database: 'quizdb',
  port: '3306'
});
