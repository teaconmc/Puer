---
title: Getting Started
navigation:
  title: Getting Started
description: The dashboard, its port, the single config option, and what you need outside Minecraft.
---

# Getting started

## The dashboard opens itself

LiveHelper starts an HTTP server during client setup. Two things tell you it is ready:

- a log line: `LiveHelper is started at http://localhost:23512/`
- a **chat message with a clickable link** — "[LiveHelper] Visit `<url>` to configure."

Clicking the chat message opens the dashboard in your browser. That is the intended entry point; there is no in-game GUI for building shots.

## The port is fixed at 23512

The server port is set in code to **23512** and there is no config option to change it. If something else on your machine already holds that port, the server cannot start where you expect it.

The URL it advertises is bound to `localhost`, so by default the dashboard is reachable from your own machine only. If you want to configure LiveHelper from a phone or a second PC, you are moving into territory the mod does not provide for — and, given the AGPL network clause, into territory worth reading the license about first.

## What you need outside the game

| Requirement | Why |
|:---|:---|
| **Windows** | the Spout bridge is a Windows-only native library |
| **A Spout receiver** — OBS with a Spout plugin, or similar | this is where the rendered frames go |
| **A browser** | the dashboard is the only configuration surface |
| **A way to build WebAssembly** — the author recommends AssemblyScript | camera behaviour is programmed, not clicked together |

On macOS or Linux you can still open the dashboard, define clips and run programs; there is simply no Spout output. Nothing errors out — the availability check returns false and the streaming path is skipped.

## The single config option

One client-side option exists, exposed through a proper config screen from the mod list:

| Option | Default | Purpose |
|:---|:---|:---|
| `enable_multi_context_workaround` | **false** | a workaround for multi-context rendering situations |

It is off by default. Turn it on only if your setup exhibits the problem it addresses — an unconditional workaround for rendering contexts is exactly the kind of switch that is off for a reason.

There is nothing else to configure. Ports, camera behaviour, shot lists and blending are all defined either in code or in the dashboard.

## No keybinds are registered

The mod registers no key mappings of its own. You will nonetheless see prompts like:

> Press [**key**] to set, ESC to cancel.

These appear when the dashboard asks the game to capture something — a camera pose, for instance. The prompt names a key you already have bound; the mod is borrowing an existing control rather than adding one. A second variant of the message counts down before the request expires, so a pose request does not wait forever.

## The shape of a session

1. Launch the client and click the chat link to open the dashboard.
2. Define **Clips** — the individual camera shots. See [02 Clips and Managers](02_clips_and_managers).
3. Write or upload the **programs** that drive them. See [03 Programming](03_programming).
4. Define a **Manager** that decides which clip is live and how shots blend.
5. Point OBS at the Spout source and start streaming.

## In a development environment

If the mod detects it is not running in production it starts a daemon thread named "LiveHelper Debugger" that parks in a 20-millisecond loop indefinitely. It exists to stabilise timing behaviour during development and does not run in a normal installation. If you see that thread in a profiler, you are in a dev environment.

There is also a fixed failure message — "Cannot setup LiveHelper, probably in development environment?" — which is what you get when the native setup cannot complete.

[Back to index](index)
