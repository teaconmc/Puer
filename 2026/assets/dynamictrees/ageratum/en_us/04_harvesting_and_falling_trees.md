---
title: "Harvesting and Falling Trees"
navigation:
  title: "04 Harvesting and Falling Trees"
---

# Harvesting and Falling Trees

A dynamic tree is a single connected structure, so harvesting works on the whole tree at once instead of block by block.

## Chopping

Cut the trunk with an axe (or any tool that can break the branch). When the connection to the roots is removed, the entire branch network above the cut is destroyed as one operation:

- Wood drops are collected and dropped at the cut position.
- Leaves drop their own loot (including seeds and sticks) at their original canopy positions.
- The branch volume determines how much wood you get back, and `treeHarvestMultiplier` (default `1.0`) scales the final harvest.
- Sticks can drop from branches depending on size when `dropSticks` is enabled (default `true`).

Axes wear down according to `axeDamageMode`:

| Mode | Damage per cut |
|:---|:---|
| `VANILLA` | 1 durability per broken branch block |
| `THICKNESS` (default) | `max(1, radius) / 2` durability per block |
| `VOLUME` | the whole wood volume of the tree at once |

## Falling trees

When a harvested tree still has branches, the game spawns a `falling_tree` entity that visibly falls over (`enableFallingTrees`, default `true`). The entity carries the branch, leaf and payload geometry, tilts and falls in the direction of the cut, bounces off the ground, and finally drops its payload — wood at the cut position and leaves at their original positions.

- **Damage** — with `enableFallingTreeDamage` (default `true`) the falling trunk can hurt living entities it hits. Base damage is `woodVolume × fall speed × 3`, scaled by `fallingTreeDamageMultiplier` (default `1.0`), and entities in the `dynamictrees:falling_tree_damage_immune` entity-type tag are never hurt.
- **Other destruction types** — trees can also fall from `EXPLODE` (blast animation), `FIRE` (burning animation), or `ROOT` (roots removed). `VOID` and root destruction resolve the drops immediately without a falling entity, and when `enableFallingTrees` is `false` every harvest uses that immediate drop path instead.

::: note
Thick trunks (radius 9–24) leave `trunk_shell` blocks at the cut during falling, and the animation cleans up shell blocks and neighbors afterwards. Leaf particle effects during a fall are capped by `maxFallingTreeLeavesParticles` (default `400`).
:::

[Back to the Dynamic Trees index](index)