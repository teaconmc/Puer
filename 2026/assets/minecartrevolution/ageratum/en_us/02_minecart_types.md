---
title: Minecart catalogue
navigation:
  title: Minecart catalogue
---

# Minecart catalogue

Each entry is a `minecart_<base>` item that spawns a matching minecart entity. Representative examples:

## Container minecarts

- `minecart_barrel`, `minecart_copper_chest`, `minecart_trapped_chest`, `minecart_ender_chest` — inventory carts.
- `minecart_shulker` — mounts a shulker box (holds contents without opening a cart inventory).
- `minecart_dispenser` — a moving dispenser.

## Working-block minecarts

`minecart_anvil`, `minecart_beacon`, `minecart_enchanting_table`, `minecart_crafting_table`, `minecart_smithing_table`, `minecart_stonecutter`, `minecart_loom`, `minecart_cartography_table`, `minecart_grindstone`, `minecart_jukebox` — put the corresponding workstation UI on rails. The beacon minecart carries an active beacon effect; the jukebox minecart plays records (handled by `MinecartMusicSoundInstance`, streamed via `ChainedJukeboxSoundInstance`).

## Fluid minecarts

`minecart_water` and `minecart_lava` carry a fluid source; `minecart_nether_portal` / `minecart_end_portal` / `minecart_end_frame` are portal-related travelling carts.

## Redstone minecarts

`minecart_redstone`, `minecart_repeater`, `minecart_piston`, `minecart_presher_plate`, `minecart_iron_presher_plate`, `minecart_golden_presher_plate`, plus the vanilla-style power minecarts — these emit or respond to redstone as they travel.

## Utility & fun

`minecart_magnet` (lodestone, attracts/repels), `minecart_picker` (picks up items), `minecart_sofa`, `minecart_wool`, `minecart_scaffold`, `minecart_mob_head`, `minecart_amethyst`, `minecart_honey`, `minecart_obsidian`, door/trapdoor minecarts (`minecart_iron_door`, `minecart_oak_door`, … and `minecart_iron_trapdoor`, `minecart_oak_trapdoor`, …), plus `minecart_cactus` / `minecart_magma` / `minecart_campfire` / `minecart_soul_campfire` which deal contact damage.

[Back to index](index)