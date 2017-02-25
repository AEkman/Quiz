exports.index = function(req, res) {
    res.render('index', {
        title: 'Home',
        classname: 'home'
    });
}

exports.user = function(req, res) {
    res.render('user', {
        title: 'User',
        classname: 'user'
    });
}

exports.creator = function(req, res) {
    res.render('creator', {
        title: 'Creator',
        classname: 'creator'
    });
}

exports.admin = function(req, res) {
    res.render('admin', {
        title: 'Admin',
        classname: 'admin'
    });
}

exports.test = function(req, res) {
    res.render('test', {
        title: 'Test',
        classname: 'test',
        person: 'req.params.name'
    });
}

exports.settings = function(req, res) {
    res.render('settings', {
        title: 'Settings',
        classname: 'settings'
    });
}