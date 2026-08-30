---
title: "Blocks & worldgen"
navigation:
  title: "Blocks & worldgen"
---

# Blocks & worldgen

Alongside the Obelisk and the Smithing Table, the mod ships themed building blocks and drives two custom structure types in the world.

## Building blocks

The building material comes in three dungeon stone families, each with a base block plus slab, stairs and wall:

- **Dungeon Stone** (`dungeon_stone`)
- **Dungeon Bricks** (`dungeon_bricks`)
- **Dungeon Tiles** (`dungeon_tiles`)

plus cracked variants (`dungeon_cracked_bricks`, `dungeon_cracked_tiles`), **Reinforced Dungeon Stone** (`reinforced_dungeon_stone`, unbreakable), and the glow source **Dungeon Lamp** / **Lit Dungeon Lamp** (`dungeon_lamp`, `lit_dungeon_lamp`).

## Great Swamp biome blocks

The Great Swamp adds natural terrain and a full mangrove-like tree, the **Great Swamp Taxodium**:

- Terrain: `great_swamp_grass_block`, `great_swamp_dirt`, `great_swamp_coarse_dirt`, `great_swamp_mud`.
- Taxonwood tree blocks: log, stripped log, wood, stripped wood, planks, leaves, door, trapdoor, fence, fence gate, slab and stairs, plus `great_swamp_taxodium_root_tangle`, `great_swamp_taxodium_vine_bulb` and `great_swamp_vines` / `great_swamp_vines_plant`.
- A `great_swamp_taxodium_logs` tag links the log variants together.

## Functional blocks

- **Obelisk Chest** (`obelisk_chest`) — a container block entity; it has no loot table, is unbreakable and cannot be pushed.
- **Obelisk Smithing Table** (`obelisk_smithing_table`) — used for tempering.
- **Obelisk** (`obelisk`) — the multi-part portal block.

## World generation

Two custom structure types are registered and placed in the world:

- **Obelisk Dungeon** (`obelisk_dungeon`) — entry structure used by the **Depths Site** (`obeliskdepths:depths_site`), placed as an underground structure. The **Obelisk Dungeons** structure set spreads such sites with random-spread placement (spacing 16, separation 8).
- **Great Swamp Hourglass Tree** (`great_swamp_hourglass_tree`) — a tree structure placed via the **Great Swamp Hourglass Trees** set.

Biome tags (`has_structure/depths_site`, `has_structure/great_swamp_hourglass_tree`) decide which biomes can host each structure. Note that the Obelisk Depths dimension itself is a fixed-biome, mostly hand-shaped dungeon space rather than an open world-gen surface, so these structure types mainly matter for placing content there.

[Back to index](index)
