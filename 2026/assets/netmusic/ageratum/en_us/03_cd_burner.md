---
title: "CD Burner"
navigation:
  title: "03 CD Burner"
items:
  - "netmusic:cd_burner"
---

# CD Burner

## Opening the Menu

Right-click the CD Burner to open its menu. It has a single input slot for Music CDs and an extract-only output slot. When the menu closes, any CD still in either slot returns to your inventory.

## Input and Output

Place a Music CD in the input slot, type a NetEase Cloud Music identifier into the text field, optionally enable Read Only, and click `Craft CD`.

- A plain numeric song ID (`123456`).
- A DJ ID in `dj/123456` form.
- A NetEase song URL, such as `https://music.163.com/song?id=123456`.
- A NetEase DJ URL, such as `https://music.163.com/dj?id=123456`.

The client fetches the song information from the NetEase API and sends `netmusic:set_music_id` to the server. The server writes the fetched song data onto the CD and moves it to the output slot.

## Limits

The CD Burner is designed for NetEase Cloud Music links and requires network access to `music.163.com`; the mod's own tooltip notes that it is only available in mainland China. If the input CD is already read-only, the burn is refused.

A burned CD can still carry a VIP song, but a Music Player refuses to play VIP songs unless a song URL resolver is installed.

<recipe id="netmusic:cd_burner"/>

[Back to index](index)
