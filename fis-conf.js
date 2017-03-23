// fis3-enable

/* global fis */

fis.config.set('namespace', 'spa');

fis.enableES7();

fis.media('debug').match('*', {
    optimizer: null,
    useHash: false,
    deploy: fis.plugin('http-push', {
        receiver: 'http://127.0.0.1:8085/yog/upload',
        to: '/'
    })
});
