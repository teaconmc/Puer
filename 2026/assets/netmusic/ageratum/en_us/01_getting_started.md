---
title: "Music CDs and the Creative Tab"
navigation:
  title: "01 Music CDs and the Creative Tab"
items:
  - "netmusic:music_cd"
---

# Music CDs and the Creative Tab

## Creative Tab

The `netmusic` creative tab contains the Music Player, CD Burner, Computer and Big Megaphone items, followed by the Music CD item. After those, the tab adds one Music CD for every song currently loaded from the music list.

## Music CD

`netmusic:music_cd` is a plain, stackable item. Song data is stored in the `netmusic:song_info` data component:

- `url`: the playable audio URL.
- `name`: song name, shown as the CD's custom name.
- `time_second`: duration in seconds.
- `trans_name`: translated name.
- `vip`: whether the song is marked as a VIP song.
- `read_only`: whether the CD may be overwritten.
- `artists`: artist list.

The tooltip shows the translated name, artists and duration. An empty CD shows `Empty` in red. A VIP song gets a red `[VIP]` suffix; a read-only CD gets a yellow `[Read Only]` suffix.

## Bundled Music List

The bundled `assets/netmusic/music.json` file supplies 19 default songs, including one VIP song and several CNR radio station entries. When `config/net_music/music.json` exists, it replaces this bundled list.

## Crafting and Writing

An empty Music CD is crafted from gray dye, brown dye and two clay balls:

<recipe id="netmusic:music_cd"/>

The CD Burner and Computer write song information into a CD placed in their input slot. Read-only CDs cannot be overwritten. Music Player blocks only accept Music CDs in their single-item slot.

[Back to index](index)
