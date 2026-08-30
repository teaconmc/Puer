---
title: "Mega Trees and Nether Fungi"
navigation:
  title: "07 Mega Trees and Nether Fungi"
---

# Mega Trees and Nether Fungi

## Mega trees

Mega species are dramatically larger versions of existing species with trunks up to radius 24. The base mod ships `mega_spruce`, `mega_jungle`, `mega_crimson` and `mega_warped`.

Two ways to grow them:

1. **Mega seed** — put four seeds of the matching pre-mega species (spruce, jungle, crimson or warped) in a 2×2 grid. While `generateMegaSeedRecipe` is enabled (default `true`) this crafts the mega species' seed:

   <recipe id="dynamictrees:mega_seed"/>

2. **Mega agent** — the Mega Dendro agent converts an existing eligible tree in place: it replaces the rooty soil and species with the available mega species while keeping the current soil fertility (see [Dendro potions](08_dendro_potions)). The conversion only works when the species actually has a registered mega variant.

Mega trees need a lot of vertical space. Their thick trunks use trunk-shell blocks, and harvesting them produces proportionally large falling-tree entities.

## Nether fungi

Crimson and warped are dynamic fungus species that:

- only grow on their matching **nylium** block (crimson nylium for crimson, warped nylium for warped) or the rooty nylium variants created by planting;
- do not appear in the Overworld;
- generate in their Nether forest biomes through the worldgen mapper, which selects the regular and mega variants in a 4:1 ratio.

By default (`replaceNyliumFungi`, default `true`) the mod also replaces vanilla fungus sprouts growing on nylium with their dynamic counterparts, and the worldgen feature canceller removes the vanilla huge-fungus feature from Nether forest biomes so dynamic fungi take over.

[Back to the Dynamic Trees index](index)