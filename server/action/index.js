import * as navModel from '../models/nav';

const sleep = t => new Promise(_ => setTimeout(_, t));

export default async function (req, res) {
    const page = req.params.page || 'index';
    let data = navModel(req.url);
    data.startTime = (new Date()).toString();
    //render with bigpipe
    res.bigpipe.bind('bigpipe', async () => {
        await sleep(2000);
        return {
            bigpipeTime: (new Date()).toString()
        }
    });
    res.bigpipe.bind('spage', async () => {
        await sleep(500);
        return {
            pageletTime: (new Date()).toString()
        }
    });
    res.render(`spa/page/${page}.tpl`, data);
}
