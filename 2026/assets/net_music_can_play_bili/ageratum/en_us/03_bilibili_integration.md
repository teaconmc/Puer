---
title: Bilibili Integration
navigation:
  title: Bilibili Integration
description: Link formats, QR login, request signing, CDN selection, subtitles as lyrics, and live streams.
---

# Bilibili integration

This is the layer the mod is named for, and it is a serious API implementation rather than a URL concatenation.

## What you can give it

| Input | Resolves to |
|:---|:---|
| `BV…` id | the video's audio (and video, where a device supports it) |
| `av…` id | the same |
| a full Bilibili video URL | the same |
| `live:<room id>` | a **live broadcast's** audio |
| a raw stream URL | **refused** — see below |

Recorded video and live rooms go through **separate resolvers**, so they behave differently: a live stream has no duration to seek within and no fixed end.

## Direct stream URLs are deliberately refused

The mod recognises raw Bilibili media URLs and treats them as **forbidden direct URLs**. Pasting one does not work.

This is not an oversight — it is what keeps request signing, CDN selection and the server whitelist in the path. A direct link would bypass all three.

## Requests are signed

Bilibili's web API requires **WBI signing** — a request signature scheme intended to block naive scraping. The mod implements it, which is why resolution keeps working where a plain HTTP fetch would be rejected.

Requests also carry a managed set of headers. Two config fields affect this:

| Field | Default | Effect |
|:---|:---|:---|
| `userAgent` | empty, or a value from a system property | override the user agent sent to Bilibili |
| `rotateUserAgent` | off | vary the user agent between requests |

Both exist to keep requests acceptable to the upstream API. Leave them alone unless resolution is failing.

## CDN selection

A dedicated CDN selector chooses which of Bilibili's delivery hosts to stream from, and its state is persisted alongside the rest of the configuration. If playback stalls for you but not for others on the same video, this is the layer to suspect.

## Logging in with a QR code

Login is the standard Bilibili web flow:

1. The mod requests a login QR code from `passport.bilibili.com`.
2. You scan it in the Bilibili mobile app.
3. The mod polls the login endpoint until the scan is confirmed.
4. On success it reads the `Set-Cookie` headers, keeps **`SESSDATA`** as the login state, assembles the full web cookie, and **saves both to the config file**.

Logging in is optional. Its practical effect is that content and quality tiers your account can reach become available — Dolby audio in particular is generally account-gated.

**The stored cookie is plaintext.** This deserves more than a footnote; see [08 Technical notes and limits](08_technical_and_limits).

Login state is restored on startup: if a `sessdata` value is present in the config, it is loaded and a log line confirms the session was restored.

## Subtitles become lyrics

A subtitle service fetches a video's Bilibili subtitles and feeds them to the **Lyric Projector**. So "lyrics" here are not a music-metadata lookup — they are the video's own captions, timed as the uploader timed them.

The practical consequences are worth knowing:

- A video with no subtitles has no lyrics to show.
- Auto-generated captions will read like auto-generated captions.
- A video whose captions are a translation will project that translation.

## Song information is sanitised

Resolved titles and metadata pass through a sanitiser before being written onto a disc. That is what stops arbitrary remote text from being injected verbatim into item names and tooltips — a small piece of hygiene that matters when the text comes from a public upload.

## Playback diagnostics

A diagnostics component exists specifically for playback problems, and the audio path includes MP3 frame synchronisation and a dithering stream. If you are chasing a stutter, the mod is instrumented for it rather than silent.

## What this layer does not do

- **It does not open any port.** All traffic is outbound to Bilibili; nothing listens.
- **It does not execute external programs.** Decoding is in-process through bundled libraries.
- **It does not proxy for other players.** Each client resolves and decodes for itself; the server carries control and state, not media.

That last point is what makes the whitelist meaningful — the server can refuse a source before any client is told to fetch it.

[Back to index](index)
