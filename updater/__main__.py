#!/usr/bin/env python3

import ast, flask, github_webhook, logging, os, valve.rcon, waitress

logger = logging.getLogger('waitress')

def sync(url, head):
    # Why does GitHub connect intermittently?
    os.system(f'git fetch "{url}" "{head}" && git reset --hard FETCH_HEAD')

def reload(server):
    addr, password = server
    with valve.rcon.RCON(addr, password) as rcon:
        rcon.execute('reload', block=False)

def main():
    server = ast.literal_eval(os.getenv('DATAPACK_WEBHOOK_RCON_SERVER'))
    port = int(os.getenv('DATAPACK_WEBHOOK_UPDATER_PORT', '8080'))
    app = flask.Flask('datapack-webhook-updater')
    webhook = github_webhook.Webhook(app)

    @webhook.hook()
    def on_push(data):
        head, url = data['after'], data['repository']['clone_url']
        logger.info(f'Got push with: {url}, head: {head}')
        sync(url, head)
        reload(server)

    logging.basicConfig(level=logging.INFO)
    waitress.serve(app, port=port)

if __name__ == '__main__': main()
