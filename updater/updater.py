#!/usr/bin/env python3

import flask, github_webhook, logging, os

logger = logging.getLogger('waitress')

def create_app():
    app = flask.Flask('datapack-webhook-updater')

    webhook = github_webhook.Webhook(app)

    @webhook.hook()
    def on_push(data):
        logger.info("Got push with: {0}".format(data))

    return app

if __name__ == '__main__':
    port = int(os.getenv('DATAPACK_WEBHOOK_UPDATER_PORT', '8080'))
    create_app().run(host='0.0.0.0', port=port)
