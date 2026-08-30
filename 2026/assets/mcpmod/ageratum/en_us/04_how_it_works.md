---
title: How It Works
navigation:
  title: How It Works
description: Why one codebase spans 46 Minecraft versions, and what that costs.
---

# How It Works

## Reflection all the way down

Every action the mod performs — clicking, typing, screenshotting, reading player state — goes through `ReflectionHelper` rather than calling Minecraft APIs directly. The mod holds the `Minecraft` singleton as a reflected object and pokes at it by name.

This is the central design decision, and it is what makes the version matrix possible.

## The version matrix

The repository builds the same mod for **46 Minecraft versions**, from **1.13.2** through **26.1.2**, across Forge, NeoForge and (on some versions) Fabric:

```
packages/
  common/                    all the logic — HTTP server + reflection layer
  minecraft-mod-mcp/         the Node.js MCP bridge (npm package)
  mods/1.13.2/forge/
  mods/1.14.2/forge/
  …
  mods/26.1.2/forge/
  mods/26.1.2/neoforge/
  shared/i18n/               translations
```

Each `mods/<version>/<loader>/` entry is a **thin wrapper**. The 26.1.2 NeoForge one is a single Java file whose entire job is:

1. Construct a `ReflectedInputHandler` bound to the render thread.
2. Read the configured port.
3. Start `McpHttpServer` on a background thread after a five-second delay.

No blocks, no items, no events beyond `FMLCommonSetupEvent`. Everything else is shared code that never mentions a Minecraft class by name.

## The trade-off

Reflection buys version independence and pays for it in fragility:

| Gained | Given up |
|:---|:---|
| One codebase for thirteen years of releases | Compile-time safety — a renamed field fails at runtime, not at build |
| New Minecraft version needs only a new wrapper | Obfuscation/mapping changes can break silently |
| No per-version API shims | Errors surface as reflection exceptions rather than clear messages |

The mod hedges this by catching broadly. The startup path wraps its Minecraft-instance lookup in `try { … } catch (Exception ignored) {}` and the whole server start in a `try/catch` that prints `[MCP-MOD] HTTP server failed:` rather than propagating. **A failure to attach therefore does not crash your game — it leaves you with a mod that loaded but has no server.** If your agent cannot connect, check the console before assuming a port problem.

## Java 8 through 25

The badge range is not decoration: the shared code has to compile and run on the JVM used by Minecraft 1.13.2 as well as the one used by 26.1.2. That constrains the shared layer to a conservative Java subset, which is another reason the implementation leans on reflection and the built-in `com.sun.net.httpserver` HTTP server rather than a modern HTTP library.

## Triple licence

The project is offered under **MIT, Apache-2.0 and CC0-1.0** simultaneously (three `LICENSE-*` files at the repository root). The 26.1.2 mod metadata declares `MIT`. For redistribution purposes you may pick whichever of the three suits you — this is unusually permissive for this batch, where several mods are `All Rights Reserved`.

## Resource pack format

The 26.1.2 build's `pack.mcmeta` declares `pack_format: 34` with the description "ModDev MCP resources". It ships no actual assets beyond that and the mods.toml, so the declared format has no practical effect — but note it does **not** match the 26.1.2-era format, which is a leftover from the version-matrix tooling rather than a deliberate choice.

[Back to index](index)
