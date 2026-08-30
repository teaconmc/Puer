---
title: Streaming, Platforms and Good to Know
navigation:
  title: "05 Streaming and platforms"
---

# Streaming, Platforms and Good to Know

## ⚠️ Streaming to OBS only works on Windows

::: danger
**The video output feature exists only on Windows.**

On macOS or Linux the mod runs normally but **the streaming option is simply absent** — no crash, no warning dialog. If you set everything up and nothing reaches OBS, **check your operating system before you check your settings.**
:::

On Windows, one more thing can go wrong: the mod writes a small helper library to your **temp folder** every launch. If your temp directory is locked down or blocks running code from it, loading fails. Pointing your temp directory somewhere writable fixes it.

## The dashboard lives at a fixed address

The control dashboard is a small web server inside the game, at:

```
http://localhost:23512/
```

::: warning
**The port number cannot be changed** — there is no setting for it. If something else on your machine already uses port 23512, that conflict has to be resolved outside the mod.

The game itself tells you this address in the log and as a clickable chat message when it starts.
:::

## Scripts run everywhere, even where streaming does not

The scripting half of the mod uses a pure-Java engine, so custom programs behave identically on **every platform** — including macOS and Linux where the Windows-only video output does not exist.

So a script-heavy production still works on any OS; only the camera-to-OBS step is Windows-bound.

## Two messages have translation quirks

Both languages are complete, but two details in them are slightly off: the countdown message's two versions disagree on a technical formatting detail, and the Chinese version ends with an unpaired bracket.

::: info
Neither breaks anything in normal play. If the countdown message ever shows oddly, this is why.
:::

## It is client-side only

The mod never needs to be on a server. Install it on the client doing the recording; servers are unaffected either way.

## Nothing else to configure

There are **no items, blocks, commands or keybinds** — the dashboard is the entire interface. If you are looking for an in-game settings screen, there is not one; everything happens at that web address.

## Redistribution

The mod is **AGPL-3.0**, a strong copyleft licence with a network clause — notable precisely because this mod serves a network interface. Anyone redistributing or modifying it should read what that means before bundling.

[Back to index](index)
