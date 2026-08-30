---
title: "Species and Tree Forms"
navigation:
  title: "05 Species and Tree Forms"
---

# Species and Tree Forms

The base mod ships a set of species defined under `trees/dynamictrees/species/`. Each species binds a family (log/leaves palette), growth logic kit, soil types, seed item, and optional special features.

## Overworld species

| Species | Notes |
|:---|:---|
| `oak` | Temperate all-rounder; the default staff species. Oak can generate leaf litter, bee nests, mushroom and rot features. |
| `birch` / `tall_birch` | Slender birch and a taller form that generates in tall-birch forests. |
| `spruce` | Cold-climate conifer with a conical canopy; has the mega variant `mega_spruce`. |
| `jungle` | Tropical tree with wide canopy, vines and undergrowth; has the mega variant `mega_jungle` and generates cocoa via the cocoa species. |
| `dark_oak` | Thick, low-branching forest tree using the dark-oak trunk logic; up to radius-24 trunks with trunk shells. |
| `pale_oak` | The Pale Garden tree; it can generate a creaking heart feature. With `hideCreakingHeart` (default `true`) the heart camouflages itself as a normal branch until stripped. |
| `cherry` | Cherry blossom tree with pink canopy. |
| `acacia` | Savanna tree with the flat-topped acacia form. |
| `mangrove` | Swamp tree with aerial roots; accepts dirt, mud and water, and can plant on fluid. |
| `swamp_oak` | Water-tolerant oak that grows in swamps and shallow water, with roots below. |
| `azalea` | A root system that grows from lush-cave-adjacent cave-rooted worldgen; native azalea and flowering azalea saplings are not replaced on placement. |
| `oak_undergrowth` / `jungle_undergrowth` | Short undergrowth forms used in forests and jungles. |

## Fruit and pod species

- `apple_oak` — an oak-shaped apple tree; its fruit block drops apples, and the apple itself is the seed-conversion ingredient (see [Fruits and pods](06_fruits_and_pods)).
- `cocoa` — a jungle-linked species whose pods grow on jungle trunks. It is configured with `drop_seeds: false`, so breeding comes from harvested pods, not canopy seed drops.

## Nether species

- `crimson` and `warped` are fungus species that only grow on their matching nylium or rooty nylium, and do not generate in the Overworld. Both have mega variants (`mega_crimson`, `mega_warped`).

## Mega species

`mega_spruce`, `mega_jungle`, `mega_crimson` and `mega_warped` are separate species with extremely thick trunks. They are reached through mega seeds or the Mega agent — see [Mega trees and Nether fungi](07_mega_trees_and_nether_fungi).

::: note
Not every species generates a seed item under every config: seed generation is a per-species flag (`should_generate_seed`). The seed items confirmed in the generated resources are listed on the [index](index).
:::

[Back to the Dynamic Trees index](index)