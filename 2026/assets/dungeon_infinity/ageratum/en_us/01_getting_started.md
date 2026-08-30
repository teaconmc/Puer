---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - dungeon_infinity:key_of_access
---

# Getting started

## What you actually need installed

The metadata declares three dependencies. The build needs eleven. Here is the honest list:

| Mod | Declared? | Why it is needed |
|:---|:---|:---|
| NeoForge, Minecraft | yes | |
| **`modulargolems`** | **yes** — required, `[26.1.2.0,)` | the golems you fight, their items and entity classes |
| **`golemdungeons`** | **no** | shop currencies and the config system this mod writes into |
| L2Core | no | registration, config plumbing, the creative tab |
| L2Serial | no | networking |
| L2DamageTracker | no | the attack listener |
| L2Tabs, L2MenuStacker, L2ItemSelector | no | UI |
| Registrate | no | registration |
| Curios | no | equipment slots |
| L2ModularBlock | **bundled** | shipped inside the jar |

Only one library is bundled into the jar. Everything else must be present.

::: warning
**`golemdungeons` is the one to watch.** It is not merely a compile-time convenience: this mod ships **200 configuration files addressed to `golemdungeons`'s own config namespace**, and its shop entries are priced in that mod's items — `reforge_upgrade`, `resistance_upgrade`, `ancient_forge`, `flame_sword`.

There are **no `ModList.isLoaded` guards anywhere in the source**, so nothing degrades gracefully. Install the whole chain: `modulargolems` → `golemdungeons` → this mod.
:::

The Minecraft range is `[26.1.2,26.2)`, so 26.1.x is accepted and 26.2 is not.

## Nothing is craftable

The mod ships **no recipe directory at all**. Every item comes from the dungeon itself — loot tables, merchants, or the creative tab.

The creative tab is registered under L2Core's namespace, so look for **Dungeon Infinity** among the tabs that library provides rather than as a standalone entry.

## The three items that matter

| Item | What it does |
|:---|:---|
| **Key of Access** | teleports you into and out of the maze |
| **Maze Map** | right-click to open the map; right-click a **respawn anchor** to travel to other anchors |
| **Key of Tomb** | recovers **up to nine items** from your last death inside the maze |

The Key of Tomb's tooltip shows how many items are waiting, so you can tell at a glance whether a recovery is pending.

**Note the nine-item limit.** Dying deep in the maze with a full inventory means most of it is gone — the tomb key is a partial rescue, not a full one. Plan what you carry in.

## The seven blocks

| Block | Role |
|:---|:---|
| Mazestone | the dungeon's structural stone |
| Filler | generator fill |
| Forcefield / Forcefield Block / Broken Forcefield | the barriers that gate rooms |
| Merchant Block | where traders appear |
| Positioner | dungeon layout marker |

These are generator furniture rather than building materials — you meet them inside the maze rather than placing them yourself.

## First run

1. Install the full chain above.
2. Obtain a **Key of Access** and use it.
3. Clear the first room — that alone earns an advancement.
4. Take a blessing from the offered choices.
5. Look for the **elite room** to unlock the full floor map, then the **boss room** to descend.

Read [02 The maze](02_the_maze) next: the dimension has rules that will catch you out, including beds that explode.

[Back to index](index)
