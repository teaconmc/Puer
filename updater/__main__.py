#!/usr/bin/env python3

import flask, github_webhook, logging, os, waitress

logger = logging.getLogger('waitress')

def sync(url, head):
    # Why does GitHub connect intermittently?
    os.system(f'git fetch "{url}" "{head}" && git reset --hard FETCH_HEAD')

def main():
    port = os.getenv('DATAPACK_WEBHOOK_UPDATER_PORT', '8080')
    app = flask.Flask('datapack-webhook-updater')
    webhook = github_webhook.Webhook(app)

    @webhook.hook()
    def on_push(data):
        head, url = data['after'], data['repository']['clone_url']
        logger.info(f'Got push with: {url}, head: {head}')
        sync(url, head)

    logging.basicConfig(level=logging.INFO)
    waitress.serve(app, listen=f'0.0.0.0:{port}')

if __name__ == '__main__': main()
