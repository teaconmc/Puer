---
title: "Advancements and config"
navigation:
  title: "Advancements and config"
---

# Advancements and config

## Advancements

| Advancement | Trigger |
|:---|:---|
| `harvestheritage:welcome` | granted automatically when you join (root advancement) |
| `harvestheritage:find_it` | obtain a Magnifying Glass |
| `harvestheritage:kfc` | consume Crazy Thursday |
| `harvestheritage:fride_seedsack` | consume Fried Seed Sack |
| `harvestheritage:max_seed_packet` | obtain a Seed Packet with both speed and output at the configured maximum |

The `max_seed_packet` advancement is a challenge: the packet must have `speed == seed_speed_max` **and** `output == output_max`, not just high values.

## Server config

The mod registers a server config with exactly two keys:

| Key | Default | Meaning |
|:---|:---|:---|
| `seed_speed_max` | `31` | Maximum speed value that hybridization can roll for a new seed packet |
| `output_max` | `31` | Maximum output value that hybridization can roll for a new seed packet |

The same values are used by the `max_seed_packet` advancement predicate. A client config file is registered but has no keys.

::: note
The caps are applied when hybridization rolls new stats. Seed packets already stored in the world are not re-clamped when you lower a cap, so a previously bred packet can keep values above the new maximum.
:::

There are no commands registered by this mod.

[Back to index](index)
