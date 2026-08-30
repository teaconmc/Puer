---
title: "Harvest：Heritage"
navigation:
  title: "Harvest：Heritage"
---

# Harvest：Heritage

Harvest：Heritage is a crop-hybridization mod. Shear grass to dig up **Unknown Seeds**, identify them with a **Magnifying Glass**, wrap a known seed in paper to make a **Seed Packet**, then grow and crossbreed crops on **Crop Stands**. Two different mature crops can cross in an empty stand between them, producing a new seed whose **speed** and **output** slowly improve with every generation.

## Reading order

1. [Getting started](01_getting_started): craft the Grass Shear and Magnifying Glass and find your first Unknown Seed.
2. [Identifying seeds](02_seed_identification): turn Unknown Seeds into Known Seeds and understand the seed categories.
3. [Seed packets](03_seed_packets): wrap a known seed in paper and read its speed and output stats.
4. [Crop stands](04_crop_stands): plant, grow, and harvest crops on the Crop Stand and the Hanging Crop Rack.
5. [Hybridization](05_hybridization): cross two mature crops in an empty stand to breed new seeds.
6. [The Strange Activator](06_activator): a redstone block that speeds up adjacent random-tick growth.
7. [Items and food](07_items_and_food): the Grape, Chrome Ball, Fried Seed Sack and Crazy Thursday.
8. [Advancements and config](08_advancements_and_config): in-game milestones and the two server config keys.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `harvestheritage` |
| Items | `grass_shear`, `magnifying_glass`, `grape`, `zzzz`, `unknown_seed`, `known_seed`, `seed_packet`, `fried_seedsack`, `kfc` |
| Blocks | `crop_stand_block`, `scaffolding_crop_stand_block`, `activaor_block`, `test_block` |
| Recipe types | crafting, smelting, `find`, `seed_packet`, `hyprid` |
| Growth stats | `speed` and `output`; config caps default to `31`, new packets start at `1` |
| Unknown-seed drop | `7%` from `can_shear` blocks with the Grass Shear |
| Commands | none |

::: note
The block registered as `harvestheritage:activaor_block` keeps its unusual spelling in the real registry, and the crossbreed recipe type is spelled `hyprid` in the codebase. The documentation keeps these exact identifiers as they appear in the game.
:::
