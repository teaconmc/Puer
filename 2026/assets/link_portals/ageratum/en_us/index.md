---
title: "Link Portals"
navigation:
  title: "Link Portals"
---

# Link Portals

Link Portals lets you build **named portals** and group them into **networks**. Any two portals that share a network name are linked, so walking into one takes you to the other — across any distance and across any dimension.

When a network holds more than two portals, stepping in opens a **destination list** and you pick where to go.

## Read this first

::: warning
**Neither of the mod's two items can be crafted.** This checkout has **no `data/` directory at all**, so the mod ships no recipes, no loot tables and no advancements.

On top of that, the creative tab contains **only the Portal Activator**. The Portal Frame block item is in no creative tab, so it does not show up in creative search either — it is effectively `/give`-only.

**The practical survival route is vanilla crying obsidian**, which the mod accepts as frame material everywhere it accepts its own frame block. See [01 Getting started](01_getting_started).
:::

## At a glance

| Item | Value |
|:---|:---|
| Mod ID | `link_portals` |
| Display name | Link Portals |
| Version | `1.0.0` |
| License | **MIT** (declared and `LICENSE.txt` agree) |
| Author | haohao0407 |
| External dependencies | **none** — only NeoForge and Minecraft |
| Minecraft | `[26.1.2]` — a single exact version, not a range |
| Blocks | 2 |
| Items | 2 |
| Recipes | **0** |
| Commands | **none** |
| Key bindings | **none** |

## How it fits together

| Piece | Role |
|:---|:---|
| **Portal Frame** (or crying obsidian) | the ring you build |
| **Portal Activator** | right-click the ring to light it and name it |
| **Network name** | the link — same name means linked |
| **Portal name** | a label shown in the destination list |

An empty network name becomes `default`, so portals you never bothered to name still find each other.

## Reading route

- [01 Getting started](01_getting_started) — frame sizes, lighting a portal, and the naming screen
- [02 Travelling between portals](02_travelling_between_portals) — networks, the destination list, where you come out, and what can travel
- [03 Blocks, items and technical notes](03_blocks_items_and_technical_notes) — the full registry, obtainability, saved data, config and known rough edges
