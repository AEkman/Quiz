var database = require('./database.js')

module.exports = {
    configure: function (app) {

        app.get('/user/', function (req, res) {
            database.get(res);
            res.render('default', {title: 'User'});
        })
    }
};