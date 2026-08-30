---
title: "Finding Clovers"
navigation:
  title: "01 Finding Clovers"
items:
  - "advanced_clover:three_leaf_clover"
---

# Finding Clovers

<item id="advanced_clover:three_leaf_clover"/>
<item id="advanced_clover:four_leaf_clover"/>

## Generation Locations

Clovers are added to biomes carrying common forest, birch forest, flower forest, floral, plains, savanna, plateau, or hill tags. Modded biomes that use these shared tags correctly can receive clovers as well.

Regular Clover is common. Four-leaf Clover placement includes an additional `1/177` rarity filter, so it is noticeably scarcer while exploring. This number is one stage in the placement pipeline, not a fixed `1/177` chance for every block.

## Plant Count

Both blocks use a petal-bed-like form and can hold up to four plants in one block space:

- Naturally generated Clover chooses an appearance from `1` to `4` plants with equal weights.
- Naturally generated Four-leaf Clover starts as a single plant.
- Placing the same plant repeatedly can fill one block space up to four plants.

## Harvesting

The plants have no collision and break instantly. Their drop count equals the plant count stored in the block, so a full four-plant patch drops four matching items. Explosions can reduce the final drops through vanilla explosion decay.

::: tip
Only a few Four-leaf Clovers are needed after the first find. The two clover types have a lossless reversible conversion, so their quantities can be adjusted for later recipes.
:::

[Back to the Advanced Clover index](index)
