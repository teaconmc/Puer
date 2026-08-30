---
title: "Net Music"
navigation:
  title: "Net Music"
---

# Net Music

Net Music is a NeoForge 26.1 music player mod. It writes song information onto Music CDs, plays them through the Music Player block, burns NetEase Cloud Music links, creates custom songs with the Computer, and broadcasts m3u8 live streams through the Big Megaphone.

## Reading Order

1. [Music CDs and the Creative Tab](01_getting_started): how the creative tab is organized and how Music CDs store song data.
2. [Music Player](02_music_player): inserting CDs, playback, redstone control and lyrics.
3. [CD Burner](03_cd_burner): writing NetEase Cloud Music song IDs and song links onto CDs.
4. [Computer](04_computer): writing custom URLs, names and local file paths onto CDs.
5. [Big Megaphone](05_big_megaphone): configuring m3u8 live streams and broadcasting them to nearby players.
6. [Music Lists and Commands](06_music_lists_and_commands): the `config/net_music/music.json` list and the `/netmusic` commands.
7. [Config and Compatibility](07_config_and_compat): common config, config screens and SophisticatedCore compatibility.

## At a Glance

| Item | Current Implementation |
|:---|:---|
| Mod ID | `netmusic` |
| Source target | NeoForge / Minecraft 26.1 |
| Creative tab | `netmusic` |
| Registered items | `netmusic:music_cd`, `netmusic:music_player`, `netmusic:cd_burner`, `netmusic:computer`, `netmusic:big_megaphone` |
| Data component | `netmusic:song_info` |
| Sound event | `netmusic:net_music` |
| Menus | `netmusic:cd_burner`, `netmusic:computer` |
| Block entities | `netmusic:music_player`, `netmusic:big_megaphone` |
| Commands | `/netmusic get163`, `/netmusic get163cd`, `/netmusic getDJcd`, `/netmusic reload` (level 2) |
| Keybindings | None registered |
| Config file | `netmusic-common.toml` |

::: note
NetMusic fetches NetEase Cloud Music metadata and audio through the network. VIP songs are marked on CDs, but the current build registers no song URL resolver, so a VIP CD cannot be inserted into a Music Player.
:::
