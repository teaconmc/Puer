---
title: "Hybridization"
navigation:
  title: "Hybridization"
---

# Hybridization

## The cross layout

Put three **Crop Stands** in a straight line: a mature stand, an empty stand in the middle, and a second mature stand two blocks away on the same axis. When a normal Crop Stand is mature, it checks the four horizontal directions every tick:

1. the block one away is a Crop Stand with **no seed packet** (the empty middle stand),
2. the block two away is another Crop Stand with a **mature** seed packet.

When both are true, the empty middle stand receives a new seed packet. If the two planted seeds are **different items**, the hybrid recipe table can add a new output; if they are the same seed, the middle stand still receives the same seed with newly rolled stats.

## Recipe-based results

The cross checks the `harvestheritage:hyprid` recipe table (the type keeps this spelling in the registry). A recipe lists two input seeds and one or more output seeds; the actual output is picked randomly from that list.

- **Common crop pairs**: every pair of the built-in crop seeds has a `common/` recipe whose outputs are all the other crop seeds.
- **Mob and material pairs**: fixed recipes convert specific pairs, for example Bone + Ghast Tear → Iron Ingot, Chicken + Sugarcane → Slime Ball, Slime Ball + Chorus Fruit → Ender Pearl, or Sweet Berries + Lapis Lazuli → Redstone.
- **Grape** has a seed definition and a seed packet recipe but no hybrid recipe, so it can still breed for stats but will not unlock new outputs unless a datapack adds a `hyprid` recipe.

JEI shows the "Hybrid" category with the Crop Stand as the catalyst.

## Result and stats

The result pool is the recipe's output list plus both parents. There is a **20% chance** the result is simply one of the two parents; otherwise the game picks a recipe output (or falls back to a parent when no recipe matches). The seed packet that appears in the empty stand has its **speed** and **output** rolled from both parents:

- 5% chance: decrease by 1–2 (never below 1),
- 80% chance: average plus 1–2 (never above the config caps),
- otherwise: exactly the average.

Each stat is rolled independently, so one generation can improve output while leaving speed unchanged or even worse.

::: note
Two stands with the **same seed** do not match a two-input hybrid recipe, but the empty stand still receives a packet with the same seed and newly rolled stats — this is how you can breed within one type. Hanging Crop Racks never start a cross and an empty rack never receives one.
:::

[Back to index](index)
