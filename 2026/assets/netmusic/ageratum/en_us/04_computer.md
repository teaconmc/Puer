---
title: "Computer"
navigation:
  title: "04 Computer"
items:
  - "netmusic:computer"
---

# Computer

## Opening the Menu

Right-click the Computer to open its menu. It has one input slot for Music CDs and one extract-only output slot, plus fields for song URL, song name and duration in seconds.

## Custom Songs

Place a Music CD in the input slot, enter an `http` or `https` URL, a display name and a duration, then click `Craft CD`. The client sends `netmusic:set_music_id` to the server, which writes the custom song onto the CD and moves it to the output slot.

The built-in tooltip limits supported audio to MP3 and FLAC. Direct HTTP streams, NetEase URLs, m3u8 streams and CNR radio URLs each have dedicated client audio handlers.

## Local Files

The URL field also accepts a Windows-style local path such as `C:\music\song.mp3`. The client checks that the file exists, converts it to a `file:` URL and writes it onto the CD.

Local file playback is client-side: the CD stores the path on the client that created it, so only that client can hear the music unless the same file exists at the same path on another machine.

## Read Only

Enable the Read Only checkbox before crafting to mark the resulting CD as read-only. A read-only CD cannot be overwritten by the CD Burner or Computer.

<recipe id="netmusic:computer"/>

[Back to index](index)
