---
title: "Advanced Clover"
navigation:
  title: "Advanced Clover"
---

# Advanced Clover

Advanced Clover generates clover and rare four-leaf clover across several surface biomes. Four-leaf clover can make a luck-granting stew or combine with any item to create a Magic Clover that draws a random result from a selected mod's item pool.

## Reading Route

1. [Finding Clovers](01_finding_clovers): learn their biomes, patch sizes, and harvesting behavior.
2. [Conversion and Suspicious Stew](02_conversion_and_stew): convert between clover types and make Luck or Bad Luck stew.
3. [Crafting Magic Clover](03_crafting_magic_clover): use any ingredient to select the random item's source namespace.
4. [Random Items and Entities](04_random_items_and_entities): understand use order, failure refunds, and safety concerns.
5. [Configuration](05_configuration): adjust allow/deny lists and entity spawn chance.
6. [Components and Dispensers](06_components_and_dispensers): define command-created lists and understand automation differences.

## Quick Reference

| Subject | Current Implementation |
|:---|:---|
| Registered items | Clover, Four-leaf Clover, and Magic Clover |
| Registered blocks | Clover and Four-leaf Clover |
| Default working mode | Whitelist |
| Default entity result | 1% chance to spawn a creeper |
| Config type | Common config |
| Commands and keys | No mod-specific commands or keys |

::: warning
Magic Clover can create a hostile mob immediately beside the player. Test new entity lists or high entity chances in an open, controlled area first.
:::
