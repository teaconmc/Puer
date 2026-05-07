---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

## Configure the rogue dimension

Beyond only activates in dimensions listed in the common config (`beyond-common.toml`, type COMMON, shared between client and server). The key `rogueDimension` expects entries of the form:

```
dimension|safe_structure|node_structure
```

Multiple entries are separated by semicolons. All three components must be valid; if any part is missing or invalid the whole entry is ignored and the dimension is not treated as a rogue dimension. Loading a configured level initialises the safe zone structure and the default rogue capabilities; ticking, player ticks and mob ticks are gated on `RogueRuntime.isActive(level)`.

## Active zone behaviour

The active zone expands around the safe zone when nodes are completed:

- `activeZoneMinExpand` / `activeZoneMaxExpand` — minimum and maximum outward expansion in chunks.
- `activeZoneMinNodes` — initial node count the active zone must cover.
- `activeZoneNodeExpandRadius` / `activeZoneNodeMaxExpandRadius` — scan radii in chunks after a node is done.
- `activeZoneMinConnections` — minimum connections to unfinished nodes required after expansion.
- `activeZoneBorderVisibleChunks` — how close the player must be for the border to render.
- `activeZoneRenderColor` — ARGB colour of the renderable active zone border.

Zone, safe zone and green node border rendering can be toggled with `zoneRenderEnabled` / `renderSafeZoneBorder` / `renderActiveZoneBorder` / `renderGreenNodes`. Debug output is controlled by `debugMessages`.

## Items and the creative tab

The creative tab `beyond:beyond_tab` (key `itemGroup.beyond`) offers:

- `beyond:loot_bag` — loot bag, also the tab icon.
- `beyond:world_seed` — world seed item.
- `beyond:node_block` — the node block used to mark encounter nodes.

## Commands

All commands are under `/beyond`:

- `teleport home` — teleport to your home position.
- `teleport activeBoundary` — teleport to the active zone boundary.
- `teleport node <type>` — teleport to a node of the given type.
- `safezone <chunkSize>` — requires permission level 2; expands the safe zone to the given chunk size (2–256).
- `unlockNode` — requires permission level 2; unlocks the current node.
- `config currentProgress <value>` — configures current progress.
- `playerPhase get <player>` / `playerPhase set <player> <phase>` — reads or sets a player's phase.

[Back to index](index)