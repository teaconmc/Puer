---
title: DRG Laser Pointer
navigation:
  title: DRG Laser Pointer
items:
  - drglaserpointer:laser_pointer
---

# DRG Laser Pointer

**DRG Laser Pointer** (namespace `drglaserpointer`, v1.2.0, GNU GPLv3, by linngdu664 and zx1316) brings the *Deep Rock Galactic* laser pointer to Minecraft 26.1.2 on NeoForge. It ships **one item** — the Laser Pointer — plus one marker entity, and nothing else: no blocks, no commands, no world generation.

Hold the pointer, aim, and right-click: a coloured **Laser Pointer Mark** appears on the block, mob, or dropped item you were aiming at, and every nearby player sees a HUD label with the marker's owner, the target's name, and the distance. Mark a gold block or a mushroom and a dwarf voice line plays.

## Reading guide

- [01 Getting started](01_getting_started.md) — the crafting recipe, where the item appears, and holding the pointer.
- [02 Marking targets](02_marking.md) — marking blocks, mobs and items, the mark entity, and the HUD label.
- [03 Colours and the pointer screen](03_colors_and_screen.md) — the four laser colours and the four screen colours.
- [04 Quick switch to hand](04_quick_switch.md) — the `Z` key that pulls the pointer out of your inventory.
- [05 Sounds and advancements](05_sounds_and_advancements.md) — the six sound events, the block tags, and the three advancements.
- [06 Configuration](06_configuration.md) — the common and client config files.
- [07 Networking and limits](07_networking_and_limits.md) — the payloads, multiplayer behaviour, and known rough edges.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `drglaserpointer` / DRG Laser Pointer, v1.2.0, GNU GPLv3 |
| Authors | linngdu664, zx1316 |
| Version target | Minecraft 26.1.2 / NeoForge `[26.1.2.75,)` |
| Item | `drglaserpointer:laser_pointer` (max stack size 1) |
| Entity | `drglaserpointer:laser_pointer_mark` (`MISC`, `0.0625 x 0.0625`, fire-immune) |
| Data components | `drglaserpointer:laser_color`, `drglaserpointer:screen_color` (both byte, default `0`) |
| Sound events | `laser_on`, `laser_off`, `laser_make`, `mushroom1`, `mushroom2`, `were_rich` |
| Block tags | `drglaserpointer:rich_blocks`, `drglaserpointer:mushrooms` |
| Criterion trigger | `drglaserpointer:mark_block_trigger` |
| Advancements | `drglaserpointer:root`, `drglaserpointer:were_rich`, `drglaserpointer:mushroom` |
| Key mapping | `key.laserpointer.switch_to_laser_pointer`, default `Z`, category `drglaserpointer:laserpointer` |
| Creative tab | Added to vanilla **Tools and Utilities** |
| Recipe | `drglaserpointer:laser_pointer` (shaped) |
| Commands | None |

The pointer has no durability, no fuel, and no cooldown; it is purely a communication tool. Everything in this guide comes from the mod's current registries, data files, and language files.
