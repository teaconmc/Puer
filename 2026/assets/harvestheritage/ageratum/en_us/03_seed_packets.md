---
title: "Seed packets"
navigation:
  title: "Seed packets"
---

# Seed packets

## Wrapping a seed

A **Seed Packet** (`harvestheritage:seed_packet`) is the item you plant on a Crop Stand. You craft it in the crafting table from one **Known Seed** plus one **Paper**:

- 1 Known Seed (carrying the seed you want)
- 1 Paper
- → 1 Seed Packet (carrying the same seed component)

Each built-in crop and animal seed has a generated recipe under `harvestheritage:seedpacket/<seed>`. The datapack **Grape** seed has its own `harvestheritage:seedpacket/grape` recipe.

A freshly crafted packet keeps the seed component, but **speed and output are not shown until it is planted**. The Crop Stand converts a fresh packet into a 1-speed, 1-output planted packet on first use.

## Packet stats

The planted seed packet has two numeric components:

| Stat | Meaning |
|:---|:---|
| `speed` | Growth chance per random tick: the game rolls `0..2` and grows when the roll is below speed. `1` is roughly one chance in three; `2+` grows almost every time; the server config `seed_speed_max` caps it at `31` by default. |
| `output` | Harvest count roll: each result item is dropped in a quantity from `1` to `output` (`1` means exactly one). The server config `output_max` caps it at `31` by default. |

Both stats are inherited and improved through hybridization (see [Hybridization](05_hybridization)); they are also shown in item tooltips and in the Magnifying Glass overlay.

::: note
A Known Seed by itself cannot be planted directly on a Crop Stand — the stand accepts only `ISeedItem` items, and only the Seed Packet implements that interface. Always wrap the seed first.
:::

[Back to index](index)
