---
title: "Music Lists and Commands"
navigation:
  title: "06 Music Lists and Commands"
---

# Music Lists and Commands

## Music List File

The mod reads `config/net_music/music.json` if it exists, otherwise it loads the bundled `assets/netmusic/music.json`. This list provides the Music CDs shown in the creative tab and the songs available to SophisticatedCore backpack generation.

The JSON uses `ItemMusicCD.SongInfo` fields: `url`, `name`, `time_second`, `trans_name`, `vip`, `read_only` and `artists`.

## Commands

The `/netmusic` root requires permission level 2 (operator/gamemaster).

| Command | Behavior |
|:---|:---|
| `/netmusic get163 <song_list_id>` | Fetches a NetEase playlist, writes up to 100 tracks into `config/net_music/music.json` and reloads the CD list on the client. |
| `/netmusic get163cd <song_id>` | Fetches one NetEase song and gives the player a Music CD, dropping it if the inventory is full. |
| `/netmusic getDJcd <dj_id>` | Fetches one NetEase DJ/program and gives the player a Music CD. |
| `/netmusic reload` | Re-reads the music list file and refreshes the client CD list. |

The commands call the NetEase API in the background. On a dedicated server the server also updates its own music list file.

## Network Payloads

Registered under channel version `1.5.1` as optional payloads:

- `netmusic:music_to_client`: Music Player playback data for nearby players.
- `netmusic:get_music_list`: server to client playlist reload or import.
- `netmusic:set_music_id`: client to server CD write for the CD Burner and Computer menus.
- `netmusic:big_megaphone_start` / `netmusic:big_megaphone_stop`: server to client broadcast control.
- `netmusic:big_megaphone_control`: client to server broadcast editor action.

No keybindings are registered in the current source.

[Back to index](index)
