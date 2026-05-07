---
title: "Music Player"
navigation:
  title: "02 Music Player"
items:
  - "netmusic:music_player"
---

# Music Player

## Inserting a CD

Right-click the Music Player while holding a Music CD in your main hand to insert it and start playback. Survival mode consumes one CD; Creative mode does not. Right-clicking with an empty main hand removes the inserted CD from the block.

The block stores exactly one Music CD. Its block entity keeps the CD, play state, remaining time and redstone signal state in saved data.

## Playback

The block streams the CD's URL through the `netmusic:net_music` sound event. The server sends playback information to nearby players within 96 blocks, and each client opens the audio stream itself.

The client converts supported streams to PCM and plays them with a positional sound. Supported formats are MP3 and FLAC, plus m3u8 and CNR radio URLs through dedicated handlers. Note particles appear around the Music Player while it plays.

## Song End

By default the player is one-shot: when the song timer runs out, playback stops. The block state has a `cycle_disable` property that is `true` by default; a debug tool can toggle it to `false`, which makes the block restart the same CD when the song ends.

## Redstone and Comparator

- A redstone signal turning from off to on toggles playback: if the player is playing it stops, otherwise it starts with the inserted CD.
- A signal turning off only updates the stored signal state.
- A comparator outputs `0` with no CD, `7` with a CD but no playback, and `15` while playing.

## Lyrics

For NetEase Cloud Music URLs, the client requests lyrics while playback starts. When `EnablePlayerLyrics` is on, the current original and translated lines render above the block, using the two configurable player lyric colors.

<recipe id="netmusic:music_player"/>

[Back to index](index)
