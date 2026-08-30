---
title: "Troubleshooting"
navigation:
  title: "06 Troubleshooting"
---

# Troubleshooting

## Compact Demo Structure

The `4 x 3 x 3` structure below shows a mechanical and electrical chain for comparison while troubleshooting. It contains a Mini Steam Engine, Stone Transmission Rods, an Axis Connector, a Dynamo, Wire Blocks, and an Electric Motor, and preserves data for `10` block entities. It does not include a water-pipe network; build that separately from the relevant topic.

<structure id="industrybase:ageratum/structures/industrybase_demo.nbt"/>

## Steam Engine does not start

1. Confirm in the menu that water is above zero.
2. Confirm the item in the sole fuel slot is accepted as vanilla furnace fuel.
3. Use a water bucket on a face perpendicular to the axis, not a mechanical end.
4. Wait for power to ramp up each tick; adding fuel does not immediately produce `100` power.

A lit block means fuel time is decreasing, not that water is still available. When the tank dries out, the fuel timer continues while mechanical power falls.

## Rods do not turn or load is too high

- Transmission Rods connect only at their axial ends; check that neighboring axes match.
- Use an Axis Connector for turns and branches.
- Network speed is total power divided by total resistance; a Dynamo or another load lowers speed.
- Source defines average-resistance thresholds, but the current tick wiring may prevent automatic breakage. Upgrade materials or split load proactively; an intact rod does not prove the load is safe.

## Dynamo or Electric Motor has no energy

- The Dynamo's facing side must meet the shaft; its rear must meet the grid.
- The Electric Motor's rear must meet the grid; its facing side is the output shaft.
- When testing with Wire Blocks, inspect whether the wire model extends toward the machine. No arm usually means that face exposes no capability.
- For overhead wire, click two Wire Connectors with the coil, not the machines themselves.
- Each connector's short post must face the machine's valid electrical side.

A position in the Wire Coil tooltip is the selected first endpoint. An overlong attempt preserves it so a nearer second endpoint can be chosen. A duplicate link or identical position fails and requires a new selection.

## Pipes do not supply water

- The Iron Pipe model must actually extend toward the tank or target fluid face.
- Prefer a tank side or bottom for output; upward pressure is zero.
- A Steam Engine accepts fluid only on the four faces perpendicular to its axis.
- Do not use the Water Pump to diagnose the pipe network; it currently has no pumping or pipe-registration implementation.

## Creative and experimental content

The Creative Mini Steam Engine, Creative Dynamo, and Creative Electric Motor are fixed-output test blocks with no Survival recipes.

The Insulator is registered and appears in the Creative inventory and can act as a rendered overhead-wire endpoint. However, it has no language entry or recipe, and the capability registry exposes no electrical or FE capability for it. Do not treat it as a complete Wire Connector that can transfer power to an adjacent machine.

::: warning
This snapshot contains visibly incomplete content. Begin troubleshooting with a minimal chain of normal Steam Engine, rods, Dynamo, Wire Blocks or Wire Connectors, Electric Motor, Iron Pipes, and a Fluid Tank, then add experimental blocks one at a time.
:::

[Back to the IndustryBase index](index)
