---
title: "Nestle"
navigation:
  title: "Nestle"
---

# Nestle

Nestle stores a directional value from each player toward every other player, then uses those values for dashing, leads, damage sharing, effects, functional blocks, and potions.

## Reading order

1. [Nestle value and compass](01_nestle_value): learn how values grow, inspect statistics, and use the free-nestle key.
2. [Active items](02_active_items): approach targets with the Nestle item and Nestle Lead.
3. [Damage sharing and binding](03_damage_sharing): understand nearby candidates and cross-distance Nestle Bound rules.
4. [Effects and blocks](04_effects_and_blocks): learn the four effects and the redstone-controlled blocks.
5. [Brewing and recipes](05_brewing_and_recipes): view the currently registered brewing chain and crafting recipes.
6. [Server configuration](06_configuration): adjust distance bands, thresholds, radii, and entity lists.

## Core systems

| System | Main purpose |
|:---|:---|
| Nestle value | Grows from online distance, unlocks free nestling, and qualifies players for damage sharing |
| Nestle Compass | Points to a nearby entity and opens player values and distance statistics |
| Nestle / Nestle Lead | Briefly dash toward a player or pull two entities toward their midpoint |
| Nestle Bound | Lets a hotbar binding participate in damage sharing across distance |
| Effects and blocks | Rush, attract, repel, or suppress parts of the sharing system |

::: tip
Read the value page before choosing between consumable Nestle items and the free-nestle threshold. Damage sharing has several branches, so server administrators should also read the configuration page.
:::
