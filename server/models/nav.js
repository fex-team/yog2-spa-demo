var parseUrl = require('url').parse;

module.exports = function(url) {
    var globalData = JSON.parse(JSON.stringify(require('./global.json')));
    url = parseUrl(url);
    globalData.navs.some(function(nav, key) {
        if (nav.url === '/spa' + url.pathname) {
            globalData.navs[key].active = true;
            return true;
        }
    });
    globalData.date = (new Date()).toDateString();
    return globalData;
};