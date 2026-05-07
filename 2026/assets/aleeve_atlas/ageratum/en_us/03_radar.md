---
title: Entity Radar
navigation:
  title: 03 Entity Radar
---

# Entity Radar

## Marker Types and Colors

`radar` is the master switch. Four categories can be controlled separately:

| Category switch | Matches | Current marker color |
|:---|:---|:---|
| `radarPlayers` | Other players | White |
| `radarHostile` | Entities implementing the hostile interface | Orange |
| `radarFriendly` | Neutral mobs and other living entities | Blue for neutral, white for other living entities |
| `radarItems` | Dropped item entities in the world | Red |

Radar omits the local player and ordinary non-living entities outside these categories.

## Scan Range and Map Scale

`radarRange` can be 64, 96, 128, 192, or 256 blocks and defaults to 128. The scan first gathers entities in a box that includes vertical distance, then excludes targets outside the horizontal radius.

Radar range determines which entities are scanned, while marker scale on the map still comes from the zoom level. Increasing scan range does not automatically zoom the map out; markers beyond the visible map area are clipped by its boundary.

## Count and Priority

At most 256 markers are drawn per frame. Candidates are sorted by horizontal distance from the player, then by numeric entity ID when distances tie, so crowded scenes retain nearby targets first.

Radar reads the client's current entity list. It is not a server-permission bypass or a global tracker. Disabling unneeded categories or reducing range can reduce clutter and scanning work.

::: warning
The implemented colors do not fully match early prose in the project TODO. The table above follows the current `AtlasRadar` code, not the planning document.
:::

[Back to the Aleeve Atlas index](index)

