---
title: "Big Megaphone"
navigation:
  title: "05 Big Megaphone"
items:
  - "netmusic:big_megaphone"
---

# Big Megaphone

## Live Broadcasts

The Big Megaphone streams one continuous audio source to nearby players. Right-click the block to open its client-side editor and enter:

- A valid `http` or `https` URL ending in `.m3u8`.
- A broadcast display name.
- A broadcast range from 1 block up to the configured maximum (default maximum 96).

The special CNR radio URL form (`https://apicnrapp.cnr.cn/html/play.html?channelId=...`) is also accepted.

## Presets

The bundled `assets/netmusic/broadcasting_presets.json` file defines four CNR preset stations. The editor's `Select Preset Station` button opens a paged picker that fills the URL and name fields.

## Save, Start and Stop

The editor sends `netmusic:big_megaphone_control` to the server:

- `Save` stores the URL, name and range on the block entity.
- `Start` validates the URL and starts broadcasting.
- `Stop` stops the broadcast.

The server only accepts the packet from a player within 8 blocks of the megaphone; there is no operator permission check. Starting also requires a nonblank name and a valid stream URL.

## Audience

The server refreshes the audience every configured scan interval (default 200 ticks). Players within 80% of the configured range receive `big_megaphone_start` and begin playback; players beyond the full range receive `big_megaphone_stop`. Removing the block stops its broadcast.

Each client keeps the nearest broadcasts up to the configured active limit (default 3). The positional sound volume is `range / 16`, so the audible distance is the configured range in blocks.

## Redstone

A redstone signal turning from off to on toggles the broadcast: if it is broadcasting, it stops; otherwise it starts if the saved stream URL and name are valid.

<recipe id="netmusic:big_megaphone"/>

[Back to index](index)
