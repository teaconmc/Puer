---
title: "World Generation and Tree Packs"
navigation:
  title: "10 World Generation and Tree Packs"
---

# World Generation and Tree Packs

Dynamic Trees replaces vanilla tree generation with its own worldgen feature (`dynamictrees:tree`, plus `dynamictrees:cave_rooted_tree`), driven entirely by resource data.

## Biome mappings

The file `trees/dynamictrees/world_gen/default.json` maps biomes to dynamic species. Confirmed mappings include:

| Biome family | Selection |
|:---|:---|
| Forests | oak 4 : birch 1 |
| Jungle | jungle 15 : mega jungle 3 : cocoa 1 |
| Swamps | swamp oak (grows in water) |
| Mangrove swamps | mangrove |
| Savanna | acacia |
| Cherry grove | cherry |
| Conifer biomes | spruce (and tall birch where applicable) |
| Dark forest | dark oak |
| Pale garden | pale oak |
| Crimson forest / warped forest | regular : mega 4 : 1 |

The mapper is data-driven: a tree pack can add new biome selections or override existing ones.

## Feature cancelling

`trees/dynamictrees/world_gen/feature_cancellers.json` removes the vanilla tree generation that would fight the dynamic ones:

- Overworld tree features (Minecraft `tree` features) are cancelled so dynamic trees generate instead.
- `rooted_tree` features in lush caves are cancelled in favour of the cave-rooted azalea feature.
- Vanilla huge fungi in Nether forest biomes are cancelled for the dynamic crimson/warped fungi.

Village trees can also be replaced (`cancelVanillaVillageTrees`, default `true`), and nether fungus sprouts on nylium are replaced by default (`replaceNyliumFungi`, default `true`).

## Cave-rooted azalea

The `cave_rooted_tree` feature grows root systems below lush caves; azalea species use aerial roots to spread from the cave ceiling.

## Worldgen configuration

- `worldGen` (default `true`) globally enables or disables dynamic world generation.
- `dimensionBlacklist` (default empty) lists dimension IDs where dynamic tree generation is disabled.
- `sampleNoiseBiome` (default `true`) uses noise-based biome sampling for placement decisions.

## Tree packs

All of this is data: `trees/dynamictrees/` holds species, families, leaves, soils, fruits, pods and worldgen data. A tree pack can ship its own `trees/<pack>/` data that adds species or overrides the base ones, and dynamic seed items, staff species and potion targets all resolve through these registries at runtime.

[Back to the Dynamic Trees index](index)