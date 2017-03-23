export default async function (router) {
    router.use('/:page', router.action('index'));
}