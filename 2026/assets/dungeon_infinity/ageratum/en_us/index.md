---
title: "Dungeon Infinity"
navigation:
  title: "Dungeon Infinity"
---

# Dungeon Infinity

Dungeon Infinity adds an **endless procedural dungeon in its own dimension**. You enter with a key, fight through rooms of golems, pick a blessing after each victory, trade with merchants, and descend floor by floor toward the bottom.

It is not a standalone mod. It is the top layer of a **three-mod chain by the same author**, and the middle layer is not declared in its metadata.

## Read this first

::: danger
**The dependency chain is deeper than the metadata says.**

The mod file declares **`modulargolems` as required** — that is the TeaCon entry 444, and it is correct. But the build also requires **`golemdungeons`**, another mod by the same author, which is **not declared anywhere in the metadata**.

That second one is not optional in practice: this mod ships **200 configuration files into `golemdungeons`'s own config namespace**, and its shop prices are paid in `golemdungeons` items such as `reforge_upgrade` and `ancient_forge`. Without it, those entries reference items that do not exist.

Several supporting libraries by the same author are also needed. **Install the whole set together** — a missing piece stops the game from launching. See [Good to know](05_technical_notes).
:::

## At a glance

| Item | Value |
|:---|:---|
| Mod ID | `dungeon_infinity` |
| Version | `26.1.2.4+teacon.34` |
| License | **LGPL-2.1** |
| Author | lcy0x1 |
| Declared dependency | **`modulargolems`** required, `[26.1.2.0,)` |
| Undeclared runtime needs | `golemdungeons` + 7 libraries + Curios |
| Own dimension | **yes** — `dungeon_infinity:maze` |
| Items | 3 + 7 block items |
| Structures | 70 |
| Recipes | **none** |
| Minecraft | `[26.1.2,26.2)` |

## The shape of a run

1. Use the **Key of Access** to teleport into the maze.
2. Clear a room. Each victory offers **one blessing out of several**, with a limited number of rerolls.
3. Spend loot at the **blacksmith, grocer or recycler**.
4. Find the **elite room** to unlock the full map, and the **boss room** to unlock the next floor down.
5. Repeat until the bottom.

Enemies are golems, drawn from the parent mods' golem system with per-tier equipment tables.

## Reading route

- [01 Getting started](01_getting_started) — the full dependency list and how to get in
- [02 The maze](02_the_maze) — dimension rules, room types and the seven tiers
- [03 Blessings and progression](03_blessings_and_progression) — all ten blessings and nine advancements
- [04 Map and merchants](04_map_and_merchants) — the map, finders, waypoints and the three traders
- [Good to know](05_technical_notes) — beds explode in the maze, required companion mods, and what does not generate there
