---
title: "Mob Sizes and Capture"
navigation:
  title: "03 Mob Sizes and Capture"
---

# Mob Sizes and Capture

Capture conditions come from three entity-type tags rather than a live bounding-box calculation. After a projectile hits, the mob must meet its class conditions and reach the ground before sealing completes.

## Capture Classes

| Class | Common Examples | Required Environment on Hit | Amber Appearance |
|:---|:---|:---|:---|
| Small | Chicken, rabbit, pig, cat, wolf, bee, fish, bat | No resin pool required | Small Amber |
| Medium | Cow, sheep, horse, villager, zombie, skeleton, creeper, spider | Within about 2 blocks of any pool tagged `resin_pool`; a large pool also qualifies | Amber |
| Large | Camel, sniffer, iron golem, polar bear, guardian, hoglin, enderman | Within about 4 blocks of a large pool | Large Amber |

Flying mobs are pulled toward the ground after a hit. Their matching capture class completes when they make ground contact.

An upgraded large pool retains the base `resin_pool` tag. It can therefore satisfy both the 4-block large-capture check and the 2-block medium-capture check, and a medium capture can consume a nearby large pool.

## Sticky-Only Targets

Players, happy ghasts, ghasts, slimes, magma cubes, wardens, withers, ender dragons, blazes, and creakings are assigned to `non_capture_mobs`. They still enter the projectile handler and receive the 80% sticking effect, but they do not become amber as long as they are absent from all three size tags. Armor stands, minecarts, boats, projectiles, display entities, and other non-mob entities do not enter this flow.

Mobs added by other mods are not automatically assigned a class. Pack authors can append entity types to these tags with a data pack:

- `resin_gun:small_mobs`
- `resin_gun:mid_mobs`
- `resin_gun:large_mobs`
- `resin_gun:non_capture_mobs`

::: warning
`non_capture_mobs` is included in the combined `mobs` tag and does not override a size tag. An entity present in both can still be captured. To make a target sticky-only, keep it out of all three size tags; to make it completely unaffected, keep it out of all four tags. Do not infer a class from the model alone.
:::

[Back to the Resin Gun index](index)
