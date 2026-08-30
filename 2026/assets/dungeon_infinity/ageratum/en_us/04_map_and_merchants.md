---
title: "Map and merchants"
navigation:
  title: "04 Map and merchants"
items:
  - dungeon_infinity:maze_map
---

# Map and merchants

## The Maze Map

Right-click the Maze Map to open the floor map. It shows the rooms you know about, marked by type, with the current depth as a number.

The legend uses these markers:

| Marker | Meaning |
|:---|:---|
| Battle | combat room |
| Elite | elite room |
| Boss | boss room |
| Shop | merchants |
| Reward | loot room |
| Rest | recovery room |
| ↑ / ↓ | up and down stairs |
| 🔎 | magnifier |

**You do not see the whole floor by default.** Clearing an elite room unlocks the full map; before that you work from what you have explored and revealed.

## Room finders

Finders are a consumable resource that **reveal rooms** you have not visited. The map shows how many you have left.

The **Eye of Truth** blessing doubles what a finder gives you and adds +1 view range, which makes finders the mechanic that blessing is designed around. If you are picking blessings and holding several finders, that pairing is the strongest information play available. See [03 Blessings and progression](03_blessings_and_progression).

## The map overlay

The map is not only a screen. A configurable **on-screen overlay** can be left running while you play, with its own settings panel:

| Setting | Options |
|:---|:---|
| Screen map | Off / While held / While not held / Always |
| Follow player | on / off |
| Position | adjustable |
| Scale | percentage |
| Size | percentage |

**"While held" and "While not held" are separate options, and both exist.** That is unusual and useful: you can have the overlay appear only when the map is *not* in your hand, keeping it out of the way while you actually read the full map screen.

## Waypoints and respawn anchors

The mod adds waypoints you can travel to, synchronised between client and server by dedicated packets.

The Maze Map has a second function that is easy to miss: **right-clicking a respawn anchor with it lets you travel to other respawn anchors.** Since the dimension forbids sleeping and makes beds explode ([02 The maze](02_the_maze)), respawn anchors are the only fixed points in the maze — and the map is how you move between them.

Set anchors as you descend. They are your fast travel network and your respawn plan at once.

## Recovering from death

Two things soften a death inside the maze, and they stack:

**The Key of Tomb** recovers **up to nine items** from your most recent death in the maze. Its tooltip reports how many are waiting.

**Maze Insurance**, if you took that blessing, grants something after you respawn.

Note the ceiling: nine items is a partial recovery. A full inventory lost deep in the maze is mostly lost for good, which is the mod's real difficulty pressure — not the fights themselves but what a wipe costs.

## The three merchants

Merchants appear at Merchant Blocks in shop rooms. There are three kinds:

| Merchant | Role |
|:---|:---|
| **Blacksmith** | equipment |
| **Grocer** | supplies |
| **Recycler** | converts unwanted goods |

Shop stock is **data-driven per theme** — there is a shop configuration file for each of the five built themes, plus an icon definition. So the copper-tier blacksmith and the sculk-tier blacksmith offer different things by design.

::: warning
**Shop prices are partly denominated in another mod's items.** The shop configurations list costs such as `golemdungeons:reforge_upgrade` and `golemdungeons:resistance_upgrade`, and loot entries reference `golemdungeons:ancient_forge` and `golemdungeons:flame_sword`.

Those come from `golemdungeons`, which is **not declared in this mod's metadata**. Without it installed, the affected shop and loot entries point at items that do not exist. See [01 Getting started](01_getting_started).
:::

## Selecting what a merchant offers

A dedicated packet carries a **type selection** from client to server, so the merchant interface lets you choose a category rather than only browsing a fixed list. Combined with per-theme shop files, what you can buy depends on both where you are and what you ask for.

[Back to index](index)
