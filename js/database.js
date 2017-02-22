var connection = require('./connection');

function User() {

    this.get = function (res) {
        connection.acquire(function (err, con) {
            con.query('SELECT * FROM user', function (err, result) {
                con.release();
                res.send(result);
            });
        });
        console.log('SELECT * FROM Databas kördes!')
    };
}
module.exports = new User();