---
title: Getting Started
navigation:
  title: Getting Started
description: Installing the mod, finding which port it chose, and pointing your AI agent at it.
---

# Getting Started

## Installing

Drop the jar in `mods/` alongside Forge or NeoForge (some Minecraft versions also have a Fabric build) and launch. There is nothing to craft, nothing to place, and no command to run — the mod has no registry content whatsoever.

About **five seconds** after the client finishes loading, the HTTP server starts on a background thread named `MCP-HTTP`. The delay is deliberate: the reflection layer needs the `Minecraft` singleton to exist before it can bind to it.

## Finding the port

The mod tries **9876** first. If that is taken it walks downward — 9875, 9874, and so on — until it reaches **9000**. Three ways to learn which one it settled on:

| Method | What you get |
|:---|:---|
| Console log | `[MCP-MOD] Debug page: http://127.0.0.1:{port}/debug` |
| `GET /api/status` | JSON with `version`, `loader`, `port`, `pid`, `uptime` |
| The debug page | A live dashboard with MCP logs, SSE events and connection status |

To pin it instead of hunting, set either:

- JVM argument `-Dmcp.port=XXXX`
- Environment variable `MC_MCP_PORT`

The Node.js bridge uses `/api/status` to auto-discover the mod regardless of which port it landed on, so in normal use you do not need to care.

## Connecting your AI

The project's onboarding is deliberately a single step: you paste one documentation URL to your agent, and it reads the guide, writes its own MCP configuration, and connects. From inside Minecraft there is nothing to set up.

Mechanically, your AI tool speaks **MCP over SSE** to the Node.js bridge, which in turn talks HTTP to the mod running inside the game.

```
AI tool (Claude Code, Cursor, …)
        ↕  MCP / SSE
Node.js bridge  (npm: minecraft-mod-mcp)
        ↕  HTTP  ← auto-discovered via /api/status
The mod, inside your Minecraft client
```

::: warning
The mod half of this stack does **not** verify who is on the other end of the HTTP connection. Before you leave a session running, read [Security and deployment](05_security) — the server is reachable from your whole network, not just from this machine.
:::

## Confirming it works

Open `http://localhost:{port}/debug` in a browser. A live dashboard means the server is up and you can see requests arrive as your agent makes them. If the page does not load, check the console for the `[MCP-MOD] HTTP server failed:` line — the startup thread catches its own exceptions and prints them rather than crashing the game.

[Back to index](index)
