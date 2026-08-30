---
title: "Config and Compatibility"
navigation:
  title: "07 Config and Compatibility"
---

# Config and Compatibility

## Common Config

The common config file is `netmusic-common.toml`. The `general` section contains:

| Key | Default | Notes |
|:---|:---|:---|
| `EnableStereo` | `true` | Stereo playback on the client. |
| `ProxyType` | `DIRECT` | `http` and `socks` proxy types are supported. |
| `ProxyAddress` | empty | Example: `127.0.0.1:1080`. |
| `EnablePlayerLyrics` | `true` | Renders lyrics above the Music Player. |
| `EnableMaidLyrics` | `true` | Maid lyric setting kept in config; no active maid integration consumes it in the current source. |
| `OriginalPlayerLyricsColor` | `#FFAAAAAA` | `#ARGB` color. |
| `TranslatedPlayerLyricsColor` | `#FFFFFFFF` | `#ARGB` color. |
| `OriginalMaidLyricsColor` | `#FFAAAAAA` | `#ARGB` color. |
| `TranslatedMaidLyricsColor` | `#FF000000` | `#ARGB` color. |
| `BigMegaphoneMaxRange` | `96` | Slider maximum, range 1 to 256. |
| `BigMegaphoneScanInterval` | `200` | Server audience scan interval in ticks, range 1 to 1200. |
| `BigMegaphoneClientActiveLimit` | `3` | Nearest simultaneous broadcasts a client actively plays, range 1 to 16. |

The `sophisticated_backpacks` section has `EnableNetMusicCDGeneration` (default `false`) and `EnableVIPNetMusicCDGeneration` (default `false`).

## Config Screen

If Cloth Config is installed, NetMusic registers its options in Cloth Config's mod page. Otherwise it uses the NeoForge `ConfigurationScreen`.

## SophisticatedCore Compatibility

When `sophisticatedcore` is present, Music CDs register with the SophisticatedCore jukebox disc handler. The compat payload is registered under the SophisticatedCore channel and supports both storage-based and entity-based sound playback.

If `EnableNetMusicCDGeneration` is enabled, mob backpacks can randomly generate Music CDs from the loaded music list; VIP songs are only included when `EnableVIPNetMusicCDGeneration` is also enabled.

## Current Limitations

- No song URL resolver is registered in the current build, so VIP Music CDs cannot be played.
- The bundled default list includes one VIP song (`明日の朝には`).
- `music_player_backpack`, maid GUI strings and related textures remain in the repository, but the backpack item registration is commented out and no active maid code consumes them.
- There are no registered entities, keybindings or in-game commands other than the four `/netmusic` subcommands.

[Back to index](index)
