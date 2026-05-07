---
title: "Mechanical Network"
navigation:
  title: "02 Mechanical Network"
items:
  - "industrybase:oak_transmission_rod"
  - "industrybase:spruce_transmission_rod"
  - "industrybase:birch_transmission_rod"
  - "industrybase:jungle_transmission_rod"
  - "industrybase:acacia_transmission_rod"
  - "industrybase:dark_oak_transmission_rod"
  - "industrybase:mangrove_transmission_rod"
  - "industrybase:cherry_transmission_rod"
  - "industrybase:crimson_transmission_rod"
  - "industrybase:warped_transmission_rod"
  - "industrybase:stone_transmission_rod"
  - "industrybase:iron_transmission_rod"
  - "industrybase:gold_transmission_rod"
  - "industrybase:diamond_transmission_rod"
  - "industrybase:axis_connector"
---

# Mechanical Network

## Connecting Transmission Rods

A Transmission Rod takes its axis from the clicked placement face. It exposes mechanical capability only from the two ends of that axis; a rod beside its lateral face does not connect. Every Transmission Rod can also be waterlogged.

For a straight shaft, keep clicking faces along the same axis. Use an Axis Connector for a turn, branch, or junction between axes: all six faces return the same mechanical interface.

<block id="industrybase:axis_connector"/>

The Axis Connector has no gear ratio or directional loss. It simply places all six sides in one mechanical component.

## Power, resistance, and speed

A mechanical network sums power from all machines and separately sums machine resistance. Its current core calculation is:

`network speed = total power / total resistance`

More sources raise speed, while more load lowers it. Transmission Rods and Axis Connectors provide connectivity without setting machine resistance. A normal Dynamo and Electric Motor each register `2` resistance with the mechanical network.

## Rod tolerance design

Transmission Rod code contains a `network total resistance / network block count` check. When speed is positive and that average is strictly above the material threshold, the intended behavior is for the rod to destroy itself and drop.

| Rod material | Threshold |
|:---|---:|
| Any wood | `5` |
| Stone | `10` |
| Iron | `20` |
| Embedded Gold | `50` |
| Embedded Diamond | `100` |

The threshold is not the total resistance allowed for the whole network; it is the average described above. However, the class enables random ticking while placing the check in scheduled `tick`, and the repository does not schedule rod ticks. Automatic breaking may therefore fail to run in this snapshot and must not be treated as reliable overload protection.

## Design guidance

- Confirm source and load orientation with a short shaft before extending it.
- The table still provides useful material tiers under heavy load, but monitor speed instead of relying on automatic breakage as an alarm.
- Use Axis Connectors for multidirectional links; rod sides do not mesh automatically.
- A slower shaft usually indicates increased total resistance and does not necessarily mean the source stopped.

[Back to the IndustryBase index](index)
