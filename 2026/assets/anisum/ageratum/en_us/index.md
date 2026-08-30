---
title: Anisum
navigation:
  title: Anisum
---

# Anisum

Anisum (mod id `anisum`, version 0.0.1) is a NeoForge companion mod that turns data-driven loot tables into creative mode tabs and synchronizes them from the server to every client. It is developed by Gugle under `dev.anvilcraft.resource`, targets Minecraft `[26.1,26.2)` with NeoForge 26+ and loader 4+, and is licensed under GNU LGPL 3.0. It registers no items, blocks, entities or recipes by itself; the displayed stacks are existing items that resource packs choose through Anisum configuration and loot tables.

## What Anisum does

- **Creates additional Creative mode tabs from data** — the server reads loot tables from datapacks and, for tables that match a configured include pattern, attaches the produced item stacks to a tab; the client rebuilds the creative tab registry and places Anisum tabs before the Tools & Utilities tab.
- **Configurable tab definitions** — each tab (an `AnisumConfig`) has a location, a display name, an icon (an `ItemStackTemplate`, defaulting to a barrier) and ordered include/sort lists that support full paths, wildcards and regular expressions.
- **Live network sync** — after datapack loading, the server sends a sync-start payload plus one payload per tab to all players, and repeats the sync for players joining later.
- **Experimental side-by-side layout** — a client option places the Creative tabs and the player inventory side by side.
- **Integration hooks** — the `AnisumTabClearEvent` / `AnisumTabLoadedEvent` events, JEI runtime ingredient sync and Better Creative Tabs support keep other tools consistent across tab rebuilds.

## Reading path

- [Getting started](01_getting_started) — prerequisites, tab definitions, matching and ordering, client configuration, network sync and integrations.

## Registry notes

- Anisum registers no items, blocks, entities, recipes, commands or world generation; the items shown in its tabs are existing items produced by the referenced loot tables.
- The only client configuration entry is `placeSideBySideInventoryAndCreativeTabs` (experimental, off by default).

## Reference snapshot

| Field | Value |
|:---|:---|
| Mod ID | `anisum` |
| Display name | Anisum (八角) |
| Version | `0.0.1` |
| License | GNU LGPL 3.0 |
| Target | Minecraft `[26.1, 26.2)`, NeoForge `[26,)`, loader `[4,)` |
| Required dependency | NeoForge and Minecraft only (Anvillib embedded via JarJar) |
| Runtime compat | JEI, Better Creative Tabs |
| Config files | `anisum-client.toml` (client) |
| Commands | none registered |
