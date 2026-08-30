---
title: The Twelve Woods
navigation:
  title: The Twelve Woods
description: All twelve wood types, their normal and stripped forms, and the id naming scheme.
---

# The Twelve Woods

The mod's name refers to its twelve wood types. Each one exists in a **normal** and a **stripped** form, and each of those has three damage stages — giving 12 × 2 × 3 = **72 blocks**.

## The twelve

| # | Wood | Normal base id | Stripped base id |
|:---|:---|:---|:---|
| 1 | Oak | `oak_log_anvil` | `stripped_oak_log_anvil` |
| 2 | Spruce | `spruce_log_anvil` | `stripped_spruce_log_anvil` |
| 3 | Birch | `birch_log_anvil` | `stripped_birch_log_anvil` |
| 4 | Jungle | `jungle_log_anvil` | `stripped_jungle_log_anvil` |
| 5 | Acacia | `acacia_log_anvil` | `stripped_acacia_log_anvil` |
| 6 | Dark Oak | `dark_oak_log_anvil` | `stripped_dark_oak_log_anvil` |
| 7 | Mangrove | `mangrove_log_anvil` | `stripped_mangrove_log_anvil` |
| 8 | Cherry | `cherry_log_anvil` | `stripped_cherry_log_anvil` |
| 9 | Pale Oak | `pale_oak_log_anvil` | `stripped_pale_oak_log_anvil` |
| 10 | Crimson | `crimson_stem_anvil` | `stripped_crimson_stem_anvil` |
| 11 | Warped | `warped_stem_anvil` | `stripped_warped_stem_anvil` |
| 12 | Bamboo | `bamboo_anvil` | `stripped_bamboo_anvil` |

Note the naming split that follows vanilla: the nine overworld trees use `_log_`, the two nether woods use `_stem_`, and bamboo uses neither.

## The id scheme

Every id is built as:

```
[stripped_] <wood base> [_chipped | _damaged] _anvil
```

Concretely, for oak:

| Stage | Normal | Stripped |
|:---|:---|:---|
| Base | `oak_log_anvil` | `stripped_oak_log_anvil` |
| Chipped | `oak_log_chipped_anvil` | `stripped_oak_log_chipped_anvil` |
| Damaged | `oak_log_damaged_anvil` | `stripped_oak_log_damaged_anvil` |

::: warning
The damage marker sits **before** `_anvil`, not after the wood name. It is `oak_log_chipped_anvil`, not `chipped_oak_log_anvil` — the reverse of how the display name reads ("Chipped Oak Log Anvil"). Watch this when writing commands or datapacks.
:::

## Shared block properties

All 72 blocks are registered with identical properties:

| Property | Value |
|:---|:---|
| Map colour | `MapColor.WOOD` |
| Strength | `3.0F, 3.0F` (destroy / explosion resistance) |
| Sound type | `SoundType.WOOD` |

There is no per-wood variation in hardness, blast resistance or sound — bamboo and dark oak behave identically. Only the model and texture differ.

For comparison, a vanilla iron anvil is `5.0F, 1200.0F`, so a wooden anvil is faster to break and **vastly** less blast resistant.

## Display names

Each block gets an explicit display name via `Component.translatable("block.woodenanvil.<id>")`, passed into the block constructor and also used for the anvil menu title. So the GUI header shows "Oak Log Anvil" rather than the generic "Repair & Name".

Ten languages ship with the mod: `en_us`, `zh_cn`, `zh_tw`, `zh_hk`, `lzh` (Literary Chinese), `de_de`, `fr_fr`, `ja_jp`, `ko_kr`, `ru_ru` — 148 keys each, covering all 72 blocks, all 72 items and the creative tab. This is unusually complete translation coverage for this batch.

[Back to index](index)
