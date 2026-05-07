---
title: "Growth Mechanics"
navigation:
  title: "02 Growth Mechanics"
---

# Growth Mechanics

Dynamic trees grow as a connected network of **branches** and **leaves** instead of switching from sapling to a fixed template.

## Growth pulses

The rooty soil tick drives growth. On each random tick the soil rolls against `treeGrowthMultiplier` (default `0.5`), so roughly half of all random ticks grow the tree. Values above `1` cause multiple growth attempts per tick (`ceil` of the value), and `scaleBiomeGrowthRate` (default `0.5`) additionally scales the effective rate by biome.

Each successful grow pulse extends and thickens the branch network, spawns leaves where there is room, and consumes a little soil fertility (`soilLongevity` default `8`). At fertility `0` the tree stops growing until fertilized; with `diseaseChance` above `0` (default `0`), a depleted tree can also catch disease.

## Branches

Branches are placed as block states sized by **radius**: radius 1–8 are regular single-block branches with visible thickness, and radius 9–24 are thick trunks that use `trunk_shell` shells for their core (used by dark oak, pale oak and mega species). Each species' growth logic kit decides how the tree tapers, forks and fills its canopy, and branches can grow around obstacles where possible.

Branch hardness scales with thickness: the effective hardness is derived from the radius squared, `treeHardnessMultiplier` (default `1.0`) and a global cap `maxTreeHardness` (default `20.0`).

## Leaves

Leaves live in cells connected back to the branch network and keep a **hydration** value; leaves with hydration `0` decay. Light is also required: the leaves properties default to a `lightRequirement` of 13 sky brightness, existing leaves tolerate two levels less, and canopy leaves will not grow into spots that are smothered by too much foliage above. Waterlogged dynamic leaves drown unless the leaves properties are water resistant, and mangrove leaves tolerate growing into water.

## Rot and obstacles

- Outer branches that lose their leaves slowly rot away. Rot chance is `0.3 + 1/radius` for branches beyond `maxBranchRotRadius` (default `7`); setting the maximum to `0` disables branch rot entirely.
- A tree that is boxed in by solid blocks stops extending; when the trunk is fully blocked it cannot grow further. Clearing the obstacle lets growth resume, and destructive removal of the trunk destroys the tree.

## Seasonal scaling

When Serene Seasons or Ecliptic Seasons is present and the season provider is enabled, growth (and seed/fruit output) is multiplied by a seasonal factor. The default `preferredSeasonMod` of `"*"` uses the first registered season provider; see [Configuration and compatibility](12_configuration_and_compatibility).

[Back to the Dynamic Trees index](index)