var navModel = require('../models/nav.js');

module.exports = function(req, res){
    var data = navModel(req.url);
    data.startTime = (new Date()).toString();
    //render with bigpipe
    res.bigpipe.bind('bigpipe', function(cb){
        setTimeout(function(){
            cb(null, {
                bigpipeTime: (new Date()).toString()
            });
        }, 2000);
    });
    res.render('spa/page/index.tpl', data);
};