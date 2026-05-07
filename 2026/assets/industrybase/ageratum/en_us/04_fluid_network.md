---
title: "Water Pipe Network"
navigation:
  title: "04 Water Pipe Network"
items:
  - "industrybase:iron_pipe"
  - "industrybase:fluid_tank"
  - "industrybase:water_pump"
---

# Water Pipe Network

The current pipe storage interface explicitly transfers vanilla water, so this page describes a water network. The generic word "fluid" in block names does not imply complete support for every fluid.

## Iron Pipe

<block id="industrybase:iron_pipe"/>

An Iron Pipe automatically connects on all six sides to:

- An adjacent Iron Pipe of the same block type.
- A neighboring block entity exposing NeoForge block fluid capability on that face.

These connection states determine both the pipe model and internal network adjacency. Pipes can be waterlogged; waterlogging is separate from water transported inside the pipe network.

## Fluid Tank

<block id="industrybase:fluid_tank"/>

A Fluid Tank holds `8000 mB`. Right-click any face with a water bucket to insert up to `1000 mB`. It has no separate menu; the client receives amount updates for the visible tank contents.

Tank pressure follows fill ratio. Upward pressure is fixed at `0`; every other face uses `current amount / capacity`. A side or bottom connection is therefore the better output. A top pipe can connect, but the tank itself contributes no positive pressure there.

The block fluid capability is exposed on every side, so compatible external devices may still insert or extract directly.

::: warning
As with the Steam Engine, bucket interaction does not verify acceptance of a complete bucket. With less than `1000 mB` of free space, the full bucket is still consumed and only the amount that fits is inserted.
:::

## Supplying a Steam Engine

A Steam Engine exposes fluid capability only on the four faces perpendicular to its axis. A pipe on an axial end does not connect for fluid transfer; rotate the engine or move the pipe to a lateral face.

The engine registers pipe pressure at no more than half its own fill ratio, with zero upward pressure. For automatic supply, route a higher-pressure tank side into a valid engine fluid face.

## Current Water Pump state

<block id="industrybase:water_pump"/>

The Water Pump has a registered item, block entity, and crafting recipe, but that block entity only contains an unused pipe-handler field. It registers no pipe storage, exposes no fluid capability, has no ticker, and contains no source extraction or power-input logic.

::: danger
The current Water Pump is not a working water source. Having a recipe does not mean its pumping gameplay has been implemented. Source resources also lack its item definition, blockstate, and model JSON, so it may currently render with a missing model.
:::

[Back to the IndustryBase index](index)
