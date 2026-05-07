---
title: Server configuration
navigation:
  title: Server configuration
---

# Server configuration

## Config file

The server config is `config/world-comment.json`, loaded in the server-starting event (the `Main` serverStarting callback). Notable fields:

- `syncRole` — the synchronisation role (`HOST`, etc.) that decides whether this server is the host or a peer for cross-server sync; `DATABASE` is created only when `syncRole == HOST`.
- `redisUrl` — may be empty; when non-empty it enables Redis-backed synchronisation (`RedisSynchronizer`) so comments propagate across multiple servers in a network.
- `imageGlobalKill` — global switch to disable image processing (upload/download/render).

## Server command

`/wcs imageGlobalKill <bool>` toggles `imageGlobalKill`: it persists the config, broadcasts the updated client config to all online players (`PacketClientConfigS2C`) and prints feedback in the executor's chat (`gui.worldcomment.image_global_kill_feedback`).

## Persistence

Comment entries are managed by `ServerWorldData` and serialised to files (`FileSerializer`); without Redis, comments are stored on this server only. The synchronisation channel is closed on server stop (`RedisSynchronizer.close`).

## Image upload backends

Uploads can use several backends: `LocalStorageUploader`, `SmmsUploader`, `LskyUploader`, `S3PreSignedUploader`, `ImglocUploader`, together with `ImageUploader` and pre-signed/thumbnail handling, all gated by the `imageGlobalKill` server switch.

[Back to index](index)