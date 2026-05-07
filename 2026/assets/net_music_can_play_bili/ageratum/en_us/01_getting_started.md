---
title: Getting Started
navigation:
  title: Getting Started
description: What you need installed, and the shortest path from a Bilibili link to sound in the world.
---

# Getting started

## Prerequisites

| Requirement | Status | Notes |
|:---|:---|:---|
| **NetMusic `[1.5.1,)`** | **required** | this is an addon; it loads after NetMusic |
| Curios `[12,)` | optional | lets headphones and glasses occupy a head slot |
| Iris | optional | handled through a guarded compatibility layer |
| Internet access | required in practice | everything is fetched from Bilibili |

There is no client-only or server-only restriction: both required dependencies are declared `side="BOTH"`.

## The shortest path to sound

The addon's core promise is that NetMusic's existing workflow now accepts Bilibili links:

1. Take a **Bilibili video id or URL** — a `BV…` id, an `av…` id, or a full link.
2. Write it onto a **music CD** using NetMusic's own burner.
3. Play the CD in a NetMusic player, or in this addon's **Modern Turntable**.

The addon resolves the id into a real audio stream, decodes it, and plays it. You never handle a stream URL yourself.

## Live streams use a different prefix

For a live broadcast rather than a recorded video, the input format changes:

> `live:<room id>`

Entered into the **broadcast megaphone**, this plays the live room's audio. It is a separate resolver from the video path, so expect live behaviour — no seeking, no fixed duration.

## Where you cannot start from

**Do not paste a direct stream URL.** The mod explicitly recognises and refuses raw Bilibili media URLs. Resolution has to go through the proper path so that signing, CDN selection and the whitelist all apply. Pasting a CDN link is treated as a forbidden direct URL rather than a shortcut.

## Logging in is optional but consequential

Anonymous use works for ordinary content. Logging in unlocks what your account can access — higher quality tiers and Dolby streams in particular.

Login is by **QR code**: the mod asks Bilibili for a login QR, you scan it with the Bilibili app, and the mod polls until it succeeds. It then stores your session cookie.

**Read [08 Technical notes and limits](08_technical_and_limits) before you log in.** The cookie is saved to disk in plaintext, and that has real consequences for sharing configs, packs and logs.

## On a server, expect a whitelist

If a server enables the link whitelist, only approved Bilibili resources can be played, and attempting anything else gives you a refusal message naming what you tried to do. Requests can be reviewed and approved by staff.

This is enforced at **six** separate points — burning a disc, the turntable, NetMusic's own player, MP4 playback and sync, and Pad playback — so there is no side door. Details in [07 Moderation and permissions](07_moderation_and_permissions).

## What to build first

| Goal | Build |
|:---|:---|
| Just listen | a **Modern Turntable**, or use NetMusic's own player |
| Listen without disturbing anyone | **Invisible Headphones** (or **Cat Headphones**) |
| Fill a room with sound | **Speakers** linked to a source |
| Watch, not just listen | a **Video Projector** |
| See lyrics | a **Lyric Projector** — it uses Bilibili subtitles |
| Carry your library | a **Pad**, which holds up to 64 discs |
| Watch while walking | an **MP4** player, or **Holographic Glasses** |
| Manage links and bindings | the **Media Management Tool** |

Every one of these is described in [02 Devices](02_devices).

## A caution about two blocks

**The Speaker and the Lyric Projector have no loot tables.** Breaking either destroys it permanently, in survival and creative alike. Only the Modern Turntable and the Video Projector drop themselves.

[Back to index](index)
