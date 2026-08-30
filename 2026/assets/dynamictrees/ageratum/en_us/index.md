---
title: "Dynamic Trees"
navigation:
  title: "Dynamic Trees"
---

# Dynamic Trees

Dynamic Trees (`dynamictrees`) replaces Minecraft's static sapling-to-tree growth with living, growing trees. Every tree begins from a seed and grows as a connected network of branches and leaves: trunks thicken and taper, branches spread into species-specific shapes, leaves expand and shrink with light and hydration, and whole forests regenerate and drop seeds over time. The mod ships for both NeoForge and Fabric and is almost entirely data-driven — tree species, growth logic, soils, fruits, pods and world generation are all defined as resource data that other tree packs can extend.

## Reading order

1. [Getting started](01_getting_started): seeds, planting, the dirt bucket and your first dynamic tree.
2. [Growth mechanics](02_growth_mechanics): growth pulses, branch networks, leaf light and hydration, rot and obstacles.
3. [Rooty soil and fertility](03_rooty_soil_and_fertility): soil conversion, the 0–15 fertility bar and fertilizing.
4. [Harvesting and falling trees](04_harvesting_and_falling_trees): chopping, the falling tree entity, damage and drops.
5. [Species and tree forms](05_species_and_tree_forms): the species shipped with the base mod.
6. [Fruits and pods](06_fruits_and_pods): apples, cocoa pods and fruit/pod growth.
7. [Mega trees and Nether fungi](07_mega_trees_and_nether_fungi): mega species, mega seeds and crimson/warped fungi.
8. [Dendro potions](08_dendro_potions): the brewing chain and the four active agents.
9. [Woodland staff and JoCodes](09_woodland_staff_and_jocodes): capturing, storing and placing tree shapes.
10. [World generation and tree packs](10_world_generation_and_treepacks): biome mappings, feature cancelling and data-driven extension.
11. [Commands](11_commands): the `/dt` command tree.
12. [Configuration and compatibility](12_configuration_and_compatibility): server config highlights and mod/caveat boundaries.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `dynamictrees` |
| Version | `1.8.0-BETA03` for Minecraft `26.1.2` (Java 25), NeoForge and Fabric |
| Baseline blocks | dynamic branches and stripped branches, dynamic leaves, dynamic saplings, rooty soil variants, roots, `trunk_shell`, `potted_sapling`, fruit/pod blocks, branch-mounted apples and cocoa, `pale_oak_creaking_heart_branch` |
| Baseline items | `dendro_potion`, `dirt_bucket`, `staff`, species seed items (acacia, apple oak, azalea, birch, cherry, cocoa, crimson, dark oak, jungle, mangrove, oak, pale oak, spruce, warped, mega variants) |
| Entities | `falling_tree`, `lingering_effector` |
| Block entities | species/rooty-soil entity, `potted_sapling`, `creaking_heart` |
| Recipes | `dirt_bucket`, `seed_conversion`, `mega_seed`, `cocoa_beans` |
| Commands | `/dt` (alias `/dynamictrees`) with 11 registered subcommands |
| Worldgen | biome-driven tree selection, vanilla tree feature cancelling, cave-rooted azalea, optional village tree replacement |

::: note
Everything on these pages is verified against the current checked-out source code and generated resources. The base mod is data-driven: `trees/dynamictrees/` resource data defines species, families, leaves, soils, fruits, pods and world generation, so other tree packs can add or override these values.
:::
