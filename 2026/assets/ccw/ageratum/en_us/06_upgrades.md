---
title: "Smithing upgrades"
navigation:
  title: "06 Smithing upgrades"
items:
  - "ccw:nether_magazine"
  - "ccw:ender_magazine"
  - "ccw:nether_glazer"
  - "ccw:ender_glazer"
  - "ccw:nether_smithing_wafer"
  - "ccw:ender_smithing_wafer"
---

# Smithing upgrades

## Smithing wafers

`ccw:nether_smithing_wafer` and `ccw:ender_smithing_wafer` are the template-like ingredients used by the four device upgrade recipes.

<recipe id="ccw:nether_smithing_wafer"/>

<recipe id="ccw:ender_smithing_wafer"/>

## Upgrade recipes

At a smithing table, the wafer is combined with the current device and an addition to produce the next tier:

| Upgrade recipe | Base | Addition | Result |
|:---|:---|:---|:---|
| `minecraft:magazine_nether_upgrade` | Gummy Magazine | Netherite ingot | Nether Magazine |
| `minecraft:magazine_ender_upgrade` | Nether Magazine | Dragon head | Ender Magazine |
| `minecraft:glazer_nether_upgrade` | Gummy Glazer | Netherite ingot | Nether Glazer |
| `minecraft:glazer_ender_upgrade` | Nether Glazer | Dragon head | Ender Glazer |

<recipe id="minecraft:magazine_nether_upgrade"/>

<recipe id="minecraft:magazine_ender_upgrade"/>

<recipe id="minecraft:glazer_nether_upgrade"/>

<recipe id="minecraft:glazer_ender_upgrade"/>

Upgrading keeps the device type and raises its active-slot count as described in [Candy magazine and glazer](05_candy_devices). The upgrade recipes live in the `minecraft` namespace in generated data, matching the smithing table's normal recipe storage.

[Back to the CCW index](index)
