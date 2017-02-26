/**
 * Created by erica on 2017-02-25.
 */
var database = require('./database.js')

module.exports = {
    configure: function (app) {

        app.get('/user1/', function (req, res) {
            database.get(res);
        });

        app.post('/createuser/', function (req, res) {
            database.createUser(req.body, res);
        });
    }
};