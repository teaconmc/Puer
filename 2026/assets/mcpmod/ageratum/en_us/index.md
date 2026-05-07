---
title: ModDev MCP
navigation:
  title: ModDev MCP
---

# ModDev MCP

**ModDev MCP** (namespace `mcpmod`, version `0.2.0`, by langyo) is **not a gameplay mod**. It adds no items, blocks, entities, recipes or commands. What it does is start an **HTTP server inside your running Minecraft client** so that an AI agent — Claude Code, Cursor, or anything else speaking the Model Context Protocol — can see the screen, click buttons, type text, press keys and run commands on your behalf.

It exists so mod developers can hand repetitive testing to an AI: open your GUI, verify a block behaves, run a smoke test on a new feature.

::: danger
**Read [05 Security and deployment](05_security) before installing this on any machine that shares a network.** The server binds to `0.0.0.0` (every network interface, not just localhost), sends `Access-Control-Allow-Origin: *`, and has **no authentication of any kind**. Anything that can reach the port gets complete keyboard, mouse and command control of your client. This is a development tool, and its threat model assumes a trusted, isolated machine.
:::

## Reading guide

- [01 Getting started](01_getting_started) — installing, finding the port, connecting your AI.
- [02 What the AI can do](02_capabilities) — the full action surface and HTTP endpoints.
- [03 Working alongside the game](03_working_alongside) — releasing the mouse so you can use your IDE.
- [04 How it works](04_how_it_works) — reflection, and why one codebase covers 46 Minecraft versions.
- [05 Security and deployment](05_security) — the binding, CORS and authentication situation, and what to do about it.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / namespace | `mcpmod` |
| Version / license | `0.2.0` / MIT, Apache-2.0 and CC0-1.0 (triple-licensed) |
| Java | 8 – 25 |
| Default port | **9876**, falling back 9875 → 9874 → … → 9000 |
| Items / blocks / entities / recipes | **none** |
| Commands registered | **none** (it *runs* commands, it does not add any) |
| Loaders | Forge, NeoForge (Fabric on some versions) |

## The shape of this project

The repository is a monorepo that builds the same mod for **46 Minecraft versions**, from 1.13.2 up to 26.1.2:

```
packages/
  common/            shared Java — the HTTP server and the reflection layer
  minecraft-mod-mcp/ the Node.js MCP bridge (npm package)
  mods/<version>/<loader>/   one thin wrapper per version
  shared/i18n/       translations
```

The 26.1.2 NeoForge wrapper is **a single Java file**. All the real work lives in `packages/common`, and it reaches into Minecraft entirely through reflection — which is exactly why one codebase can span thirteen years of Minecraft releases. See [How it works](04_how_it_works).

## What "connecting your AI" looks like

The project's own onboarding is a single URL you paste to your agent, which then reads the guide and configures itself. From the game's side there is nothing to configure: the server starts on its own about five seconds after the client finishes loading, and the console prints where to find it.
