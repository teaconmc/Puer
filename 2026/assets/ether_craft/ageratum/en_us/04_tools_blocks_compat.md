---
title: Tools, blocks and compat
navigation:
  title: Tools, blocks and compat
---

# Tools, blocks and compat

## Wrench

**`wrench`** (stacks to 1) is the go-to tool for configuring devices and item streams.

## Blocks

- **`ether_glass`** — glass-like block for builds.
- **`ether_block`**, `ether_ore` / `deepslate_ether_ore` / `nether_ether_ore`, `inactivated_ether_block`, `smooth_inactivated_ether_block` — resource and storage blocks (require the correct tool).
- **`cheese_block`** — soft wool-sound block.

## World generation

`WorldGenData` places the three ether ores in the appropriate dimensions/rock layers, so ether resources are obtainable in survival.

## Integration

- **GuideMe** — when `GuideMe` is loaded, a guide item is added to the creative tab (`GuideMeFunctions.getGuide()`).
- **JEI** — recipe integration for the custom recipe types (`jei_version` declared in the build).
- **Datagen** — tag generators (`TagGenBlock/Item/Entity`), `LootTableGen`, `ModelDataGen`, `DataMapGen`, `WorldGenData` and `GenerateGatherEvent` output the mod's data.

[Back to index](index)