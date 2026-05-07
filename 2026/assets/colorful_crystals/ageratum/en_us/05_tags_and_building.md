---
title: Tags and building
navigation:
  title: Tags and building
---

# Tags and building

## Common (`c:`) tags

The mod puts everything into the shared `c:` tag namespace, so other mods that consume the standard gem/ore/storage conventions pick these blocks up automatically.

### Block tags

| Tag | Members |
|:---|:---|
| `c:clusters` | all three cluster blocks |
| `c:clusters/topaz` · `c:clusters/ruby` · `c:clusters/sapphire` | the matching cluster |
| `c:ores/gems` | all three ore blocks |
| `c:ores/topaz` · `c:ores/ruby` · `c:ores/sapphire` | the matching ore |
| `c:storage_blocks` | all six storage blocks |
| `c:storage_blocks/topaz` · `c:storage_blocks/ruby` · `c:storage_blocks/sapphire` | the unpolished **and** polished storage block of that colour |

### Item tags

| Tag | Members |
|:---|:---|
| `c:gems` | the six unpolished and polished gems |
| `c:gems/topaz` · `c:gems/ruby` · `c:gems/sapphire` | the unpolished and polished gem of that colour |
| `c:clusters` and `c:clusters/<colour>` | the cluster block items |
| `c:ores/gems` and `c:ores/<colour>` | the ore block items |
| `c:storage_blocks` and `c:storage_blocks/<colour>` | the storage block items |

Note that **raw gems carry no item tag at all**. `raw_topaz`, `raw_ruby` and `raw_sapphire` are not in `c:gems`, and there is no `c:raw_materials/*` tag for them. If another mod or a datapack should recognise them, you have to add the tag yourself.

### Vanilla tags

| Tag | Members |
|:---|:---|
| `minecraft:mineable/pickaxe` | all 24 blocks |
| `minecraft:slabs` (block) | the six slabs **and the six stairs** |
| `minecraft:slabs` (item) | the six slab items **and the six stair items** |

The stairs being in the slab tags rather than a stair tag is what the current source produces: the stair builder passes the slab tags. There is no `minecraft:stairs` tag output at all. In practice that means anything reading the slab tag (other mods' recipes, datapacks, or tools that filter by tag) treats these stairs as slabs, and anything reading the stair tag will not see them. The blocks themselves still behave as normal stairs in the world.

## Building with the two finishes

Each colour gives you two visually distinct materials, and both are complete sets:

| Finish | Look | Blocks |
|:---|:---|:---|
| Unpolished | Rougher, darker gem surface | block, stair, slab |
| Polished | Smooth, saturated gem surface | block, stair, slab |

Because stairs and slabs reuse the storage block texture of their own finish, an unpolished stair matches an unpolished block exactly. Mixing the two finishes of the same colour is the cheapest way to get contrast without leaving the palette — for example polished blocks as a wall with unpolished slabs as a band or floor trim.

Clusters are the decorative accent rather than a building block. They can be placed against any of the six faces of a supporting block and pick a random rotation, so a cluster-covered ceiling or wall looks irregular even though only one block is involved. The topaz cluster is the tall one; ruby and sapphire clusters are shorter.

Ore blocks are also usable as decoration: their model is a stone cube wrapped in a gem-coloured shell, which reads as a mineral vein rather than as a finished material.

## Things to keep in mind

- **Clusters do not grow.** No budding block is registered, so a cluster you place is the only cluster you get from that spot. Harvest with Silk Touch if you want to move one.
- **Clusters and ores never generate naturally.** See [01 Getting started](01_getting_started.md).
- **The two gem conversion steps cannot be changed by a datapack.** They are hardcoded item behaviour, not recipes — see [02 Gem processing](02_gem_processing.md).
- **Stairs and slabs are one-way.** There is no recipe that turns them back into blocks or gems, so cut only what you need.
- **Resource pack authors:** the sapphire cluster model points at the texture `colorful_crystals:block/sapphire_culster`, and the file on disk really is spelled `sapphire_culster.png`. The model renders correctly, but if you retexture it you must use that exact misspelled name. The ruby and topaz clusters use the expected `ruby_cluster` / `topaz_cluster` spelling.

[Back to index](index)
