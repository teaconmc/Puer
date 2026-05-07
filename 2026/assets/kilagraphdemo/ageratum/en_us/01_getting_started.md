---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - kilagraphdemo:hologram
---

# Getting started

## Dependencies

| Mod | Requirement |
|:---|:---|
| `kilagraph` | **required** — the node-graph library this mod demonstrates |
| `slide_show` | optional — enables the Projector shader-effect feature |
| `neoforge`, `minecraft` | required |

Without `kilagraph` the mod will not load. Without `slide_show` everything else still works; only [07 Slide-show integration](07_slideshow_integration) is unavailable.

## Obtaining the blocks

The mod ships **no data directory at all** — no recipes, no loot tables, no tags. Two consequences:

- **Nothing is craftable.** Use the creative tab **KilaGraph Mod Tab**, or a give command.
- **Nothing drops.** With no loot table, breaking any of these blocks destroys it and returns no item. Place deliberately.

## The seven blocks

| Block | Role | Strength | Notes |
|:---|:---|:---|:---|
| Hologram | displays a local shader-graph work | 2.0 | emits light level 7 |
| Server Hologram | displays a server-stored work to everyone | 2.0 | emits light level 7 |
| Fertile Soil | the plantable playfield for the drone game | 0.6 | |
| Drone Programming Station | owns the virtual drone and drives runs | 2.0 | |
| Drone Ranking Display | replays a chosen leaderboard rank | 2.0 | redstone-selected |
| Drone Scoreboard | lists the drone leaderboard's top players | 2.0 | |
| Hologram Likes Scoreboard | lists the most-liked shared works | 2.0 | |

All except Fertile Soil are non-occluding and carry a block entity.

Note that the two hologram blocks currently **share the same model and textures**, and Fertile Soil reuses a vanilla farmland-style placeholder model. They are distinguished by behaviour, not by appearance.

## The two hologram flavours

They look identical but differ in where the work lives:

- **Hologram** shows a work from **your own local library**. What you see is what you downloaded or authored.
- **Server Hologram** shows a work chosen on the **server**, pulled lazily by each client. Everyone sees the same thing, and setting it affects all players.

Use the plain Hologram while iterating on your own work; use the Server Hologram for a shared exhibit.

## Which feature to start with

If you want the puzzle, go to [02 The drone station](02_drone_station) — you need one Drone Programming Station with Fertile Soil beneath it.

If you want to build visuals, go to [05 Holograms](05_holograms).

[Back to index](index)
