---
title: Recipes
navigation:
  title: Recipes
---

# Recipes

The mod ships **36 recipe JSON files**, all of them vanilla recipe types: `minecraft:crafting_shaped`, `minecraft:crafting_shapeless` and `minecraft:stonecutting`. Each of the six building materials (unpolished and polished, times three colours) gets the same six recipes.

**Ore blocks and cluster blocks have no recipe at all.** They cannot be crafted, cut or reversed back from gems. The gem conversion steps in [02 Gem processing](02_gem_processing.md) are hardcoded interactions, not recipes.

## The pattern

| Recipe | Type | Input | Output |
|:---|:---|:---|:---|
| `<material>_block` | Shaped 3×3 | 9 gems | 1 storage block |
| `<gem>_from_<material>_block` | Shapeless | 1 storage block | 9 gems |
| `<material>_slab` | Shaped, one row of 3 | 3 storage blocks | 6 slabs |
| `<material>_slab_from_<material>_block_stonecutting` | Stonecutting | 1 storage block | 2 slabs |
| `<material>_stair` | Shaped staircase | 6 storage blocks | 4 stairs |
| `<material>_stair_from_<material>_block_stonecutting` | Stonecutting | 1 storage block | 1 stair |

Because the storage-block recipes are reversible, gems and blocks are fully interchangeable — nine gems in, nine gems back out. Stairs and slabs are one-way: they cannot be crafted back into blocks. Note that stonecutting a block into a stair gives only **one** stair, while crafting gives four stairs for six blocks, so crafting is the more efficient route for stairs and stonecutting is the cheaper route for slabs.

Every recipe below also generates a matching recipe-unlock advancement under `recipes/building_blocks/`.

## Topaz

### Unpolished topaz

<recipe id="colorful_crystals:unpolished_topaz_block"/>
<recipe id="colorful_crystals:unpolished_topaz_from_unpolished_topaz_block"/>
<recipe id="colorful_crystals:unpolished_topaz_slab"/>
<recipe id="colorful_crystals:unpolished_topaz_slab_from_unpolished_topaz_block_stonecutting"/>
<recipe id="colorful_crystals:unpolished_topaz_stair"/>
<recipe id="colorful_crystals:unpolished_topaz_stair_from_unpolished_topaz_block_stonecutting"/>

### Polished topaz

<recipe id="colorful_crystals:polished_topaz_block"/>
<recipe id="colorful_crystals:polished_topaz_from_polished_topaz_block"/>
<recipe id="colorful_crystals:polished_topaz_slab"/>
<recipe id="colorful_crystals:polished_topaz_slab_from_polished_topaz_block_stonecutting"/>
<recipe id="colorful_crystals:polished_topaz_stair"/>
<recipe id="colorful_crystals:polished_topaz_stair_from_polished_topaz_block_stonecutting"/>

## Ruby

### Unpolished ruby

<recipe id="colorful_crystals:unpolished_ruby_block"/>
<recipe id="colorful_crystals:unpolished_ruby_from_unpolished_ruby_block"/>
<recipe id="colorful_crystals:unpolished_ruby_slab"/>
<recipe id="colorful_crystals:unpolished_ruby_slab_from_unpolished_ruby_block_stonecutting"/>
<recipe id="colorful_crystals:unpolished_ruby_stair"/>
<recipe id="colorful_crystals:unpolished_ruby_stair_from_unpolished_ruby_block_stonecutting"/>

### Polished ruby

<recipe id="colorful_crystals:polished_ruby_block"/>
<recipe id="colorful_crystals:polished_ruby_from_polished_ruby_block"/>
<recipe id="colorful_crystals:polished_ruby_slab"/>
<recipe id="colorful_crystals:polished_ruby_slab_from_polished_ruby_block_stonecutting"/>
<recipe id="colorful_crystals:polished_ruby_stair"/>
<recipe id="colorful_crystals:polished_ruby_stair_from_polished_ruby_block_stonecutting"/>

## Sapphire

### Unpolished sapphire

<recipe id="colorful_crystals:unpolished_sapphire_block"/>
<recipe id="colorful_crystals:unpolished_sapphire_from_unpolished_sapphire_block"/>
<recipe id="colorful_crystals:unpolished_sapphire_slab"/>
<recipe id="colorful_crystals:unpolished_sapphire_slab_from_unpolished_sapphire_block_stonecutting"/>
<recipe id="colorful_crystals:unpolished_sapphire_stair"/>
<recipe id="colorful_crystals:unpolished_sapphire_stair_from_unpolished_sapphire_block_stonecutting"/>

### Polished sapphire

<recipe id="colorful_crystals:polished_sapphire_block"/>
<recipe id="colorful_crystals:polished_sapphire_from_polished_sapphire_block"/>
<recipe id="colorful_crystals:polished_sapphire_slab"/>
<recipe id="colorful_crystals:polished_sapphire_slab_from_polished_sapphire_block_stonecutting"/>
<recipe id="colorful_crystals:polished_sapphire_stair"/>
<recipe id="colorful_crystals:polished_sapphire_stair_from_polished_sapphire_block_stonecutting"/>

[Back to index](index)
