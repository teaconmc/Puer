---
title: WorldComment
navigation:
  title: WorldComment
---

# WorldComment（随处随笔）

WorldComment (mod id `worldcomment`, version 0.6.0-beta.4) lets you post comments directly into the game world, each associated with a physical location. Developed by Zbx1425 under `cn.zbx1425.worldcomment`, it targets Minecraft 26.1.2 and is licensed GPLv2.

## How it works

Player comments are anchored to world positions (with optional screenshots) and rendered in the world, so players visiting the same spot can read and leave notes. The common code, GUI and renderers live under the client; server code stores entries, replicates them to players and can sync across multiple servers.

## Registered content

- **Items** — `worldcomment:comment_tool` (stacks to 1, tools & utilities tab; right-click to leave/read comments) and `worldcomment:placeable_comment` (placeable comment marker that embeds an ID).
- **Data component** — `worldcomment:placeable_comment_meta` holds the comment metadata of a placeable comment.
- **Client commands** — `/wc` (send), `/wc send` and `/wc list` (open the comment list screen). The `visible` sub-command is stubbed out and not wired.
- **Server command** — `/wcs imageGlobalKill <bool>` toggles image handling on the server and broadcasts the config change to all players.

## Server data

- **Config** — `config/world-comment.json` on the server; notable keys include `syncRole`, `redisUrl` (empty to disable Redis-backed synchronisation between servers) and `imageGlobalKill`.
- **Persistence & sync** — entries are stored by `ServerWorldData` and serialised to files; when `redisUrl` is set, a `RedisSynchronizer` peers multiple servers so comments propagate across the network.
- **Image support** — images can be uploaded/downloaded with several backends (`LocalStorageUploader`, `SmmsUploader`, `LskyUploader`, `S3PreSignedUploader`, `ImglocUploader`) plus thumbnail and pre-signed-URL handling, gated by the server `imageGlobalKill` switch.

## Reading path

- [Getting started](01_getting_started) — items, commands and posting your first comment.
- [Server configuration](02_server_configuration) — storage, multi-server sync and image settings.
