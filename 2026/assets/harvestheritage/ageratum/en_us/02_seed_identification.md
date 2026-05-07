---
title: "Identifying seeds"
navigation:
  title: "Identifying seeds"
---

# Identifying seeds

## Unknown vs Known Seed

- **Unknown Seed** (`harvestheritage:unknown_seed`) is what drops from grass. It carries no hint of its result.
- **Known Seed** (`harvestheritage:known_seed`) is the identified form. It carries a `harvestheritage:seed_component` that records exactly which item it will grow into.

## Identifying with the Magnifying Glass

Hold a Magnifying Glass and **use it while looking at a dropped item** within about 5 blocks. The mod checks the dropped item against its `find` recipes:

- An **Unknown Seed** is consumed (one at a time) and a **random matching Known Seed** drops in its place, chosen from the crop and animal seed sets.
- A **Magnifying Glass** item itself is consumed and produces a **Chrome Ball** (`harvestheritage:zzzz`).
- The **Grape** is a special seed defined through the `harvestheritage_seeds` datapack; its `find` recipe turns an Unknown Seed into a grape Known Seed.

If the item matches no `find` recipe but is a registered base seed, the fallback path produces a Known Seed for that base seed instead.

## Seed categories

Seeds are grouped by how they are obtained and what they produce. Every category has a required **growth stage** (how many growth steps the crop must reach) and a list of **result items**:

| Category | Example seeds | Result items |
|:---|:---|:---|
| Crop (`crop`) | Wheat, Beetroot, Melon, Pumpkin, berries, Chorus Fruit, Carrot, Potato, Sugarcane, Bamboo, Sea Pickle, Kelp, Apple | the crop and (for Apple) an Oak Log |
| Animal (`animal`) | Chicken, Beef, Porkchop, Mutton, Rabbit, fish, Ink Sac, scutes, Honeycomb | the food plus drops such as Feather, Egg, Leather |
| Mob (`mob`) | Blaze Rod, Ender Pearl, Slime Ball, Bone, Ghast Tear, Shulker Shell | mob drops |
| Material (`material`) | Flint, Coal, ingots, gems, Redstone, Netherite Scrap | ores and materials |
| Special (`special`) | Ender Eye | the special drop |
| Misc (`misc`) | Grape (datapack) | the custom result |

The built-in seed table is fixed in code; a server can add more seeds with `harvestheritage_seeds` datapack definitions.

::: note
The `find` recipes that turn Unknown Seeds into Known Seeds are generated only for the **crop** and **animal** categories. The other categories are obtained by breeding (see [Hybridization](05_hybridization)).
:::

[Back to index](index)
