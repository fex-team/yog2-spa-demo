exports.init = function() {
    var navs = $('.navbar-nav li');
    
    Page.on('pagedone', function(url) {
        navs
            .removeClass('active')
            .find('a[href="' + url + '"]')
            .parent()
            .addClass('active');
    });
    Page.start();
};